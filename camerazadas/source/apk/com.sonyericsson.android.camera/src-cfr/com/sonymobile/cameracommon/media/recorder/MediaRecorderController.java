/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.recorder;

import android.content.ContentResolver;
import android.content.Context;
import android.hardware.Camera;
import android.location.Location;
import android.media.CamcorderProfile;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.media.recorder.RecorderException;
import com.sonymobile.cameracommon.media.recorder.RecorderInterface;
import com.sonymobile.cameracommon.media.recorder.RecorderParameters;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

class MediaRecorderController
implements RecorderInterface {
    private static final String MEDIA_RECORDER_INFO_DURATION_MS = "MEDIA_RECORDER_INFO_DURATION_MS";
    private static final String MEDIA_RECORDER_INFO_READY_FOR_STOP_SOUND = "MEDIA_RECORDER_INFO_READY_FOR_STOP_SOUND";
    private static final int MIN_DURATION_FOR_PAUSE_IN_MILLI = 2000;
    private static final int MIN_DURATION_IN_MILLI = 1000;
    private static final String TAG = MediaRecorderController.class.getSimpleName();
    private final Handler mCallbackHandler;
    private final Context mContext;
    private final Integer mInfoDuration;
    private final Integer mInfoReadyForStopSound;
    private boolean mIsManualRecordingSoundNeeded = false;
    private boolean mIsWaitingStopFinished;
    private final RecorderInterface.RecorderListener mListener;
    private MediaPlayer mMediaPlayer;
    private MediaRecorder mMediaRecorder;
    private final Method mMethodPause;
    private final Method mMethodSetExtendedInfoNotifications;
    private final MediaRecorder.OnErrorListener mOnErrorListener;
    private final MediaRecorder.OnInfoListener mOnInfoListener;
    private final ReferenceClock.TickCallback mOnTickCallback;
    private Future<Boolean> mPauseTask;
    private final ReferenceClock mRecordingTime;
    private State mState;
    private final Object mStateLock = new Object();
    private Future<Boolean> mStopTask;
    private final ExecutorService mTaskExecutor;

    public MediaRecorderController(Context context, RecorderInterface.RecorderListener recorderListener, Handler handler, int n, boolean bl) {
        this.mOnErrorListener = new MyOnErrorListener();
        this.mOnInfoListener = new MyOnInfoListener();
        this.mOnTickCallback = new ReferenceClock.TickCallback(){

            @Override
            public void onTick(long l) {
                if (MediaRecorderController.this.mIsWaitingStopFinished) {
                    return;
                }
                MediaRecorderController.this.mListener.onRecordProgress(l);
            }
        };
        this.mContext = context;
        this.mListener = recorderListener;
        this.mCallbackHandler = handler;
        this.mIsManualRecordingSoundNeeded = bl;
        this.mState = State.IDLE;
        this.mRecordingTime = new ReferenceClock(this.mCallbackHandler, this.mOnTickCallback, n);
        this.mTaskExecutor = Executors.newSingleThreadExecutor();
        this.mIsWaitingStopFinished = false;
        this.mMethodPause = MediaRecorderController.findMethod("pause", new Class[0]);
        this.mMethodSetExtendedInfoNotifications = MediaRecorderController.findMethod("setExtendedInfoNotifications", Boolean.TYPE);
        this.mInfoReadyForStopSound = MediaRecorderController.getStaticValueByReflect("MEDIA_RECORDER_INFO_READY_FOR_STOP_SOUND");
        this.mInfoDuration = MediaRecorderController.getStaticValueByReflect("MEDIA_RECORDER_INFO_DURATION_MS");
    }

    static /* synthetic */ Method access$1100(MediaRecorderController mediaRecorderController) {
        return mediaRecorderController.mMethodPause;
    }

    static /* synthetic */ void access$1300(MediaRecorderController mediaRecorderController, RecorderInterface.Result result) {
        mediaRecorderController.notifyPauseResult(result);
    }

    private static /* varargs */ Method findMethod(String object, Class<?> ... arrclass) {
        try {
            object = MediaRecorder.class.getMethod((String)object, arrclass);
            return object;
        }
        catch (NoSuchMethodException var0_1) {
            return null;
        }
    }

    private static Integer getStaticValueByReflect(String string) {
        int n;
        try {
            n = MediaRecorder.class.getField(string).getInt(null);
        }
        catch (IllegalArgumentException var0_1) {
            return null;
        }
        catch (IllegalAccessException var0_2) {
            return null;
        }
        catch (NoSuchFieldException var0_3) {
            return null;
        }
        return n;
    }

    private String nameError(int n) {
        switch (n) {
            default: {
                return "unknown:" + n;
            }
            case 1: {
                return "MEDIA_RECORDER_ERROR_UNKNOWN";
            }
            case 100: 
        }
        return "MEDIA_ERROR_SERVER_DIED";
    }

    private String nameInfo(int n) {
        switch (n) {
            default: {
                if (this.mInfoReadyForStopSound == null || this.mInfoReadyForStopSound != n) break;
                return "MEDIA_RECORDER_INFO_READY_FOR_STOP_SOUND";
            }
            case 800: {
                return "MEDIA_RECORDER_INFO_MAX_DURATION_REACHED";
            }
            case 801: {
                return "MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED";
            }
        }
        if (this.mInfoDuration != null && this.mInfoDuration == n) {
            return "MEDIA_RECORDER_INFO_DURATION_MS";
        }
        return "unknown:" + n;
    }

    private void notifyDuration(int n) {
        this.mRecordingTime.reset(n);
        if (!this.mRecordingTime.isMeasuring()) {
            this.mListener.onRecordProgress(n);
        }
    }

    private void notifyFinishResult(final RecorderInterface.Result result) {
        this.mCallbackHandler.post(new Runnable(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void run() {
                if (!MediaRecorderController.this.mIsWaitingStopFinished) {
                    MediaRecorderController.this.mListener.onRecordFinished(result);
                }
                if (result != RecorderInterface.Result.SUCCESS && result != RecorderInterface.Result.FAIL) {
                    return;
                }
                Object object = MediaRecorderController.this.mStateLock;
                synchronized (object) {
                    MediaRecorderController.this.mState = State.IDLE;
                    return;
                }
            }
        });
    }

    private void notifyPauseResult(final RecorderInterface.Result result) {
        this.mCallbackHandler.post(new Runnable(){

            @Override
            public void run() {
                MediaRecorderController.this.mListener.onRecordPaused(result);
            }
        });
    }

    private void notifyReadyForSound() {
        this.mCallbackHandler.post(new Runnable(){

            @Override
            public void run() {
                if (!MediaRecorderController.this.mIsManualRecordingSoundNeeded && MediaRecorderController.this.mIsWaitingStopFinished) {
                    return;
                }
                MediaRecorderController.this.playRecordingSoundIfNeeded();
            }
        });
    }

    private void playRecordingSound() {
        try {
            this.mMediaPlayer.reset();
            this.mMediaPlayer.setDataSource("/system/media/audio/ui/VideoRecord.ogg");
            this.mMediaPlayer.setAudioStreamType(7);
            this.mMediaPlayer.setVolume(7.0f, 7.0f);
            this.mMediaPlayer.prepare();
            this.mMediaPlayer.start();
            return;
        }
        catch (IllegalArgumentException var1_1) {
            this.mMediaPlayer.reset();
            return;
        }
        catch (IllegalStateException var1_2) {
            this.mMediaPlayer.reset();
            return;
        }
        catch (IOException var1_3) {
            this.mMediaPlayer.reset();
            return;
        }
    }

    private void playRecordingSoundIfNeeded() {
        synchronized (this) {
            if (this.mMediaPlayer != null && this.mIsManualRecordingSoundNeeded) {
                this.playRecordingSound();
                this.mIsManualRecordingSoundNeeded = false;
            }
            return;
        }
    }

    private void release() {
        this.releaseMediaRecorder();
        this.releaseMediaPlayer();
    }

    private void releaseMediaPlayer() {
        if (this.mMediaPlayer != null) {
            this.mTaskExecutor.execute(new ReleaseMediaPlayerTask(this.mMediaPlayer));
            this.mMediaPlayer = null;
        }
    }

    private void releaseMediaRecorder() {
        if (this.mMediaRecorder != null) {
            this.setExtendedInfoNotifications(false);
            this.mMediaRecorder.release();
            this.mMediaRecorder = null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void setExtendedInfoNotifications(boolean bl) {
        if (this.mMethodSetExtendedInfoNotifications == null) return;
        try {
            this.mMethodSetExtendedInfoNotifications.invoke(this.mMediaRecorder, bl);
            return;
        }
        catch (IllegalAccessException var2_2) {
            CameraLogger.e(TAG, "Extended info notifications is not supported.");
            return;
        }
        catch (IllegalArgumentException var2_3) {
            CameraLogger.e(TAG, "Extended info notifications is not supported.");
            return;
        }
        catch (InvocationTargetException var2_4) {
            CameraLogger.e(TAG, "Extended info notifications is not supported.");
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static boolean setMediaRecorderOutput(Context object, MediaRecorder mediaRecorder, Uri uri) {
        boolean bl = false;
        if (uri.getScheme().equals("content")) {
            try {
                object = object.getContentResolver().openFileDescriptor(uri, "rw");
                if (object == null) return bl;
                mediaRecorder.setOutputFile(object.getFileDescriptor());
            }
            catch (FileNotFoundException var0_1) {
                return false;
            }
            do {
                return true;
                break;
            } while (true);
        }
        if (!uri.getScheme().equals("file")) return true;
        mediaRecorder.setOutputFile(uri.getPath());
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private boolean setupParameters(Context context, MediaRecorder mediaRecorder, RecorderParameters recorderParameters) {
        if (recorderParameters.isMicrophoneEnabled()) {
            mediaRecorder.setVideoSource(1);
            mediaRecorder.setAudioSource(5);
            mediaRecorder.setProfile(recorderParameters.profile());
        } else {
            mediaRecorder.setVideoSource(1);
            mediaRecorder.setOutputFormat(recorderParameters.profile().fileFormat);
            mediaRecorder.setVideoFrameRate(recorderParameters.profile().videoFrameRate);
            mediaRecorder.setVideoSize(recorderParameters.profile().videoFrameWidth, recorderParameters.profile().videoFrameHeight);
            mediaRecorder.setVideoEncodingBitRate(recorderParameters.profile().videoBitRate);
            mediaRecorder.setVideoEncoder(recorderParameters.profile().videoCodec);
        }
        if (recorderParameters.hasMaxDuration()) {
            try {
                mediaRecorder.setMaxDuration(recorderParameters.maxDuration());
            }
            catch (RuntimeException var1_3) {}
        }
        if (recorderParameters.hasMaxFileSize()) {
            try {
                mediaRecorder.setMaxFileSize(recorderParameters.maxFileSize());
            }
            catch (RuntimeException var1_2) {}
        }
        if (recorderParameters.hasLocation()) {
            mediaRecorder.setLocation((float)recorderParameters.location().getLatitude(), (float)recorderParameters.location().getLongitude());
        }
        if (recorderParameters.hasOrientationHint()) {
            mediaRecorder.setOrientationHint(recorderParameters.orientationHint());
        }
        if (MediaRecorderController.setMediaRecorderOutput(this.mContext, mediaRecorder, recorderParameters.outputUri())) {
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public boolean awaitFinish() {
        var2_1 = this.mStateLock;
        // MONITORENTER : var2_1
        if (this.mState == State.RECORDING || (var3_5 = this.mState) == (var4_7 = State.PAUSED)) {
            this.stop();
        }
        if ((var3_5 = this.mStopTask) == null) {
            this.playRecordingSoundIfNeeded();
            // MONITOREXIT : var2_1
            return true;
        } else {
            ** GOTO lbl13
        }
        catch (RecorderException var3_6) {
            // MONITOREXIT : var2_1
            return false;
        }
lbl13: // 2 sources:
        this.mIsWaitingStopFinished = true;
        // MONITOREXIT : var2_1
        try {
            return (Boolean)var3_5.get();
        }
        catch (InterruptedException var2_2) {
            return false;
        }
        catch (ExecutionException var2_3) {
            return false;
        }
        catch (Throwable var2_4) {
            throw var2_4;
        }
    }

    @Override
    public long getRecordingTimeMillis() {
        return this.mRecordingTime.elapsedTimeMillis();
    }

    @Override
    public boolean isPauseAndResumeSupported() {
        if (this.mMethodPause != null) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public boolean isPaused() {
        Object object = this.mStateLock;
        synchronized (object) {
            if (this.mState != State.PAUSED) return false;
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public boolean isRecordingOrPaused() {
        Object object = this.mStateLock;
        synchronized (object) {
            if (this.mState == State.RECORDING) return true;
            if (this.mState != State.PAUSED) return false;
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public boolean isStopping() {
        Object object = this.mStateLock;
        synchronized (object) {
            if (this.mState != State.STOPPING) return false;
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void pause() throws RecorderException {
        Object object = this.mStateLock;
        synchronized (object) {
            if (this.mState != State.RECORDING) {
                return;
            }
            if (this.mPauseTask == null) {
                this.mPauseTask = this.mTaskExecutor.submit(new PauseTask());
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public boolean prepare(Camera camera, RecorderParameters recorderParameters) {
        recorderParameters.dump();
        Object object = this.mStateLock;
        // MONITORENTER : object
        if (this.mState != State.IDLE) {
            // MONITOREXIT : object
            return false;
        }
        if (this.mIsManualRecordingSoundNeeded) {
            this.mMediaPlayer = new MediaPlayer();
        }
        this.mMediaRecorder = new MediaRecorder();
        this.mMediaRecorder.setCamera(camera);
        if (!this.setupParameters(this.mContext, this.mMediaRecorder, recorderParameters)) {
            this.release();
            // MONITOREXIT : object
            return false;
        }
        this.mMediaRecorder.setOnErrorListener(this.mOnErrorListener);
        this.mMediaRecorder.setOnInfoListener(this.mOnInfoListener);
        try {
            this.mMediaRecorder.prepare();
        }
        catch (IllegalStateException illegalStateException) {
            this.release();
            // MONITOREXIT : object
            return false;
        }
        catch (IOException iOException) {
            this.release();
            // MONITOREXIT : object
            return false;
        }
        this.mState = State.PREPARED;
        // MONITOREXIT : object
        this.setExtendedInfoNotifications(true);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void resume() throws RecorderException {
        Object object = this.mStateLock;
        synchronized (object) {
            if (this.mState != State.PAUSED) {
                return;
            }
            this.mState = State.RECORDING;
        }
        this.mMediaRecorder.start();
        this.mRecordingTime.resume();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void start() throws RecorderException {
        Object object = this.mStateLock;
        synchronized (object) {
            if (this.mState != State.PREPARED) {
                return;
            }
            this.mIsWaitingStopFinished = false;
            this.mState = State.RECORDING;
        }
        try {
            this.mMediaRecorder.start();
            this.mRecordingTime.start();
            return;
        }
        catch (IllegalStateException var1_2) {
            this.mIsManualRecordingSoundNeeded = false;
            throw new RecorderException(var1_2);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void stop() throws RecorderException {
        Object object = this.mStateLock;
        synchronized (object) {
            if (this.mState != State.RECORDING && this.mState != State.PAUSED) {
                return;
            }
            this.mRecordingTime.stop();
            this.mState = State.STOPPING;
            this.mStopTask = this.mTaskExecutor.submit(new StopTask());
            return;
        }
    }

    private class MyOnErrorListener
    implements MediaRecorder.OnErrorListener {
        private MyOnErrorListener() {
        }

        @Override
        public void onError(MediaRecorder mediaRecorder, final int n, final int n2) {
            MediaRecorderController.this.mCallbackHandler.post(new Runnable(){

                @Override
                public void run() {
                    if (MediaRecorderController.this.mIsWaitingStopFinished) {
                        return;
                    }
                    MediaRecorderController.this.playRecordingSoundIfNeeded();
                    MediaRecorderController.this.mListener.onRecordError(n, n2);
                }
            });
        }

    }

    private class MyOnInfoListener
    implements MediaRecorder.OnInfoListener {
        private MyOnInfoListener() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onInfo(MediaRecorder mediaRecorder, int n, int n2) {
            switch (n) {
                default: {
                    if (MediaRecorderController.this.mInfoReadyForStopSound == null || MediaRecorderController.this.mInfoReadyForStopSound != n) break;
                    MediaRecorderController.this.notifyReadyForSound();
                    return;
                }
                case 800: {
                    MediaRecorderController.this.notifyFinishResult(RecorderInterface.Result.MAX_DURATION_REACHED);
                    return;
                }
                case 801: {
                    MediaRecorderController.this.notifyFinishResult(RecorderInterface.Result.MAX_FILESIZE_REACHED);
                    return;
                }
            }
            if (MediaRecorderController.this.mInfoDuration == null || MediaRecorderController.this.mInfoDuration != n) return;
            {
                MediaRecorderController.this.notifyDuration(n2);
                return;
            }
        }
    }

    private class PauseTask
    implements Callable<Boolean> {
        private PauseTask() {
        }

        /*
         * Exception decompiling
         */
        @Override
        public Boolean call() throws Exception {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:369)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:447)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:644)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:727)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
            // org.benf.cfr.reader.Main.doJar(Main.java:126)
            // org.benf.cfr.reader.Main.main(Main.java:178)
            throw new IllegalStateException("Decompilation failed");
        }
    }

    private static class ReleaseMediaPlayerTask
    implements Runnable {
        private static final int RING_END_WAIT_MILLISEC = 1000;
        private final MediaPlayer mPlayer;

        private ReleaseMediaPlayerTask(MediaPlayer mediaPlayer) {
            this.mPlayer = mediaPlayer;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            try {
                Thread.sleep(1000);
                if (this.mPlayer == null) return;
                {
                    this.mPlayer.release();
                    return;
                }
            }
            catch (InterruptedException var1_1) {
                if (this.mPlayer == null) return;
                this.mPlayer.release();
                return;
            }
            catch (Throwable var1_2) {
                if (this.mPlayer == null) throw var1_2;
                {
                    this.mPlayer.release();
                }
                throw var1_2;
            }
        }
    }

    private static enum State {
        RECORDING,
        PAUSED,
        PREPARED,
        STOPPING,
        IDLE;
        

        private State() {
        }
    }

    private class StopTask
    implements Callable<Boolean> {
        private StopTask() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public Boolean call() throws Exception {
            boolean bl = false;
            try {
                long l = 1000 - MediaRecorderController.this.mRecordingTime.elapsedTimeMillis();
                if (l > 0) {
                    Thread.sleep(l, 0);
                }
                if (MediaRecorderController.this.mPauseTask != null) {
                    MediaRecorderController.this.mPauseTask.cancel(true);
                    MediaRecorderController.this.mPauseTask = null;
                }
                MediaRecorderController.this.mMediaRecorder.stop();
                bl = true;
                return bl;
            }
            catch (RuntimeException var4_10) {
                return bl;
            }
            finally {
                MediaRecorderController.this.releaseMediaRecorder();
                Object object = MediaRecorderController.this.mStateLock;
                synchronized (object) {
                    MediaRecorderController.this.mStopTask = null;
                    MediaRecorderController mediaRecorderController = MediaRecorderController.this;
                    RecorderInterface.Result result = true ? RecorderInterface.Result.SUCCESS : RecorderInterface.Result.FAIL;
                    mediaRecorderController.notifyFinishResult(result);
                }
                MediaRecorderController.this.playRecordingSoundIfNeeded();
                MediaRecorderController.this.releaseMediaPlayer();
            }
        }
    }

}

