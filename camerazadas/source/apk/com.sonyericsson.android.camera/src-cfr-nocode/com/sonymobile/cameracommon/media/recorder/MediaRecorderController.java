/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.recorder;

import android.content.Context;
import android.hardware.Camera;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Handler;
import com.sonymobile.cameracommon.media.recorder.RecorderException;
import com.sonymobile.cameracommon.media.recorder.RecorderInterface;
import com.sonymobile.cameracommon.media.recorder.RecorderParameters;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class MediaRecorderController
implements RecorderInterface {
    private static final String MEDIA_RECORDER_INFO_DURATION_MS = "MEDIA_RECORDER_INFO_DURATION_MS";
    private static final String MEDIA_RECORDER_INFO_READY_FOR_STOP_SOUND = "MEDIA_RECORDER_INFO_READY_FOR_STOP_SOUND";
    private static final int MIN_DURATION_FOR_PAUSE_IN_MILLI = 2000;
    private static final int MIN_DURATION_IN_MILLI = 1000;
    private static final String TAG;
    private final Handler mCallbackHandler;
    private final Context mContext;
    private final Integer mInfoDuration;
    private final Integer mInfoReadyForStopSound;
    private boolean mIsManualRecordingSoundNeeded;
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
    private final Object mStateLock;
    private Future<Boolean> mStopTask;
    private final ExecutorService mTaskExecutor;

    static;

    public MediaRecorderController(Context var1, RecorderInterface.RecorderListener var2, Handler var3, int var4, boolean var5);

    static /* synthetic */ ReferenceClock access$100(MediaRecorderController var0);

    static /* synthetic */ Method access$1100(MediaRecorderController var0);

    static /* synthetic */ State access$1202(MediaRecorderController var0, State var1);

    static /* synthetic */ void access$1300(MediaRecorderController var0, RecorderInterface.Result var1);

    static /* synthetic */ boolean access$1600(MediaRecorderController var0);

    static /* synthetic */ RecorderInterface.RecorderListener access$1700(MediaRecorderController var0);

    static /* synthetic */ Handler access$1800(MediaRecorderController var0);

    static /* synthetic */ Future access$200(MediaRecorderController var0);

    static /* synthetic */ Integer access$2000(MediaRecorderController var0);

    static /* synthetic */ Future access$202(MediaRecorderController var0, Future var1);

    static /* synthetic */ void access$2100(MediaRecorderController var0);

    static /* synthetic */ Integer access$2200(MediaRecorderController var0);

    static /* synthetic */ void access$2300(MediaRecorderController var0, int var1);

    static /* synthetic */ boolean access$2400(MediaRecorderController var0);

    static /* synthetic */ MediaRecorder access$300(MediaRecorderController var0);

    static /* synthetic */ void access$400(MediaRecorderController var0);

    static /* synthetic */ Object access$500(MediaRecorderController var0);

    static /* synthetic */ Future access$602(MediaRecorderController var0, Future var1);

    static /* synthetic */ void access$700(MediaRecorderController var0, RecorderInterface.Result var1);

    static /* synthetic */ void access$800(MediaRecorderController var0);

    static /* synthetic */ void access$900(MediaRecorderController var0);

    private static /* varargs */ Method findMethod(String var0, Class<?> ... var1);

    private static Integer getStaticValueByReflect(String var0);

    private String nameError(int var1);

    private String nameInfo(int var1);

    private void notifyDuration(int var1);

    private void notifyFinishResult(RecorderInterface.Result var1);

    private void notifyPauseResult(RecorderInterface.Result var1);

    private void notifyReadyForSound();

    private void playRecordingSound();

    private void playRecordingSoundIfNeeded();

    private void release();

    private void releaseMediaPlayer();

    private void releaseMediaRecorder();

    private void setExtendedInfoNotifications(boolean var1);

    private static boolean setMediaRecorderOutput(Context var0, MediaRecorder var1, Uri var2);

    private boolean setupParameters(Context var1, MediaRecorder var2, RecorderParameters var3);

    @Override
    public boolean awaitFinish();

    @Override
    public long getRecordingTimeMillis();

    @Override
    public boolean isPauseAndResumeSupported();

    @Override
    public boolean isPaused();

    @Override
    public boolean isRecordingOrPaused();

    @Override
    public boolean isStopping();

    @Override
    public void pause() throws RecorderException;

    @Override
    public boolean prepare(Camera var1, RecorderParameters var2);

    @Override
    public void resume() throws RecorderException;

    @Override
    public void start() throws RecorderException;

    @Override
    public void stop() throws RecorderException;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class MyOnErrorListener
    implements MediaRecorder.OnErrorListener {
        final /* synthetic */ MediaRecorderController this$0;

        private MyOnErrorListener(MediaRecorderController var1);

        /* synthetic */ MyOnErrorListener(MediaRecorderController var1, com.sonymobile.cameracommon.media.recorder.MediaRecorderController$1 var2);

        @Override
        public void onError(MediaRecorder var1, int var2, int var3);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class MyOnInfoListener
    implements MediaRecorder.OnInfoListener {
        final /* synthetic */ MediaRecorderController this$0;

        private MyOnInfoListener(MediaRecorderController var1);

        /* synthetic */ MyOnInfoListener(MediaRecorderController var1,  var2);

        @Override
        public void onInfo(MediaRecorder var1, int var2, int var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PauseTask
    implements Callable<Boolean> {
        final /* synthetic */ MediaRecorderController this$0;

        private PauseTask(MediaRecorderController var1);

        /* synthetic */ PauseTask(MediaRecorderController var1,  var2);

        @Override
        public Boolean call() throws Exception;
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ReleaseMediaPlayerTask
    implements Runnable {
        private static final int RING_END_WAIT_MILLISEC = 1000;
        private final MediaPlayer mPlayer;

        private ReleaseMediaPlayerTask(MediaPlayer var1);

        /* synthetic */ ReleaseMediaPlayerTask(MediaPlayer var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class State
    extends Enum<State> {
        private static final /* synthetic */ State[] $VALUES;
        public static final /* enum */ State IDLE;
        public static final /* enum */ State PAUSED;
        public static final /* enum */ State PREPARED;
        public static final /* enum */ State RECORDING;
        public static final /* enum */ State STOPPING;

        static;

        private State();

        public static State valueOf(String var0);

        public static State[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class StopTask
    implements Callable<Boolean> {
        final /* synthetic */ MediaRecorderController this$0;

        private StopTask(MediaRecorderController var1);

        /* synthetic */ StopTask(MediaRecorderController var1,  var2);

        @Override
        public Boolean call() throws Exception;
    }

}

