/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.videowriter;

import android.location.Location;
import android.media.CamcorderProfile;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.Handler;
import android.view.Surface;
import com.sonymobile.cameracommon.gltextureview.EGLConfigChooser_RGBA8888D16S8;
import com.sonymobile.cameracommon.gltextureview.EGLController;
import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import com.sonymobile.cameracommon.media.encoder.InputDataInfo;
import com.sonymobile.cameracommon.media.encoder.MediaEncoder;
import com.sonymobile.cameracommon.media.utility.FpsMonitor;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import com.sonymobile.cameracommon.media.videowriter.AudioSampleDataSource;
import com.sonymobile.cameracommon.media.videowriter.VideoFrameSource;
import java.io.File;
import java.io.IOException;
import javax.microedition.khronos.egl.EGLContext;

public class VideoWriter {
    private static final int AUDIO_FORMAT = 2;
    private static final String AUDIO_MIMETYPE = "audio/mp4a-latm";
    private static final boolean ENABLE_MONITOR_FPS = false;
    private static final int I_FRAME_INTERVAL = 1;
    static final String TAG = VideoWriter.class.getSimpleName();
    private static final String VIDEO_MIMETYPE = "video/avc";
    private EGLController mEglController;
    private MediaEncoder mEncoder;
    private final FpsMonitor mFpsMonitor;
    private final Handler mHandler;
    private boolean mIsRunning = false;
    private final VideoWriterListener mListener;
    private String mOutputPath;
    private ReferenceClock mReferenceClock;

    public VideoWriter(VideoWriterListener videoWriterListener) {
        this.mListener = videoWriterListener;
        this.mFpsMonitor = new FpsMonitor(10);
        this.mHandler = new Handler();
        this.mReferenceClock = new ReferenceClock();
    }

    private MediaFormat createAudioFormat(String object, CamcorderProfile camcorderProfile) {
        object = MediaFormat.createAudioFormat((String)object, camcorderProfile.audioSampleRate, camcorderProfile.audioChannels);
        object.setInteger("bitrate", camcorderProfile.audioBitRate);
        object.setInteger("aac-profile", 2);
        return object;
    }

    private InputDataInfo createAudioInputStreamInfo(CamcorderProfile object) throws IOException {
        object = this.createAudioFormat("audio/mp4a-latm", (CamcorderProfile)object);
        MediaCodec mediaCodec = MediaCodec.createEncoderByType("audio/mp4a-latm");
        mediaCodec.configure((MediaFormat)object, null, null, 1);
        return InputDataInfo.create((MediaFormat)object, mediaCodec, new AudioSampleDataSource(mediaCodec, object.getInteger("sample-rate"), object.getInteger("channel-count"), 2));
    }

    private MediaFormat createVideoFormat(String object, CamcorderProfile camcorderProfile) {
        object = MediaFormat.createVideoFormat((String)object, camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight);
        object.setInteger("color-format", 2130708361);
        object.setInteger("bitrate", camcorderProfile.videoBitRate);
        object.setInteger("frame-rate", camcorderProfile.videoFrameRate);
        object.setInteger("i-frame-interval", 1);
        return object;
    }

    private InputDataInfo createVideoInputStreamInfo(CamcorderProfile object) throws IOException {
        object = this.createVideoFormat("video/avc", (CamcorderProfile)object);
        MediaCodec mediaCodec = MediaCodec.createEncoderByType("video/avc");
        mediaCodec.configure((MediaFormat)object, null, null, 1);
        VideoFrameSource videoFrameSource = new VideoFrameSource(mediaCodec);
        this.mEglController.onSurfaceTextureChanged(videoFrameSource.createInputSurface());
        return InputDataInfo.create((MediaFormat)object, mediaCodec, videoFrameSource);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void startEncode(String arrinputDataInfo, int n, Location location, boolean bl, CamcorderProfile camcorderProfile, EGLContext eGLContext, MediaEncoderStateListener mediaEncoderStateListener) throws IOException {
        if (this.isRunning()) {
            throw new IllegalStateException();
        }
        this.mOutputPath = arrinputDataInfo;
        MediaMuxer mediaMuxer = new MediaMuxer((String)arrinputDataInfo, 0);
        mediaMuxer.setOrientationHint(n);
        if (location != null) {
            mediaMuxer.setLocation((float)location.getLatitude(), (float)location.getLongitude());
        }
        this.mEglController = new EGLController();
        this.mEglController.initialize(new EGLConfigChooser_RGBA8888D16S8(), GLTextureView.OpenGLVersion.OPEN_GL_ES_20, eGLContext);
        arrinputDataInfo = bl ? new InputDataInfo[]{this.createVideoInputStreamInfo(camcorderProfile), this.createAudioInputStreamInfo(camcorderProfile)} : new InputDataInfo[]{this.createVideoInputStreamInfo(camcorderProfile)};
        this.mEncoder = new MediaEncoder(arrinputDataInfo, mediaMuxer, mediaEncoderStateListener);
        this.mIsRunning = true;
        this.mEncoder.start();
    }

    public long elapsedTimeMillis() {
        return this.mReferenceClock.elapsedTimeMillis();
    }

    public EGLController getEglController() {
        return this.mEglController;
    }

    public boolean isRunning() {
        return this.mIsRunning;
    }

    public void start(String string, int n, Location location, boolean bl, CamcorderProfile camcorderProfile, EGLContext eGLContext) throws IOException {
        this.startEncode(string, n, location, bl, camcorderProfile, eGLContext, new MediaEncoderStateListener(this));
        this.mReferenceClock.start();
    }

    public void start(String string, int n, Location location, boolean bl, CamcorderProfile camcorderProfile, EGLContext eGLContext, long l, long l2) throws IOException {
        this.startEncode(string, n, location, bl, camcorderProfile, eGLContext, new MediaEncoderStateListener(this, l, l2));
        this.mReferenceClock.start();
    }

    public void stop() {
        if (this.isRunning()) {
            this.mEncoder.stop();
        }
        this.mReferenceClock.stop();
    }

    private class MediaEncoderStateListener
    implements MediaEncoder.StateListener {
        private final long mMaxDurationUs;
        private final long mMaxFileSizeBytes;
        private long mTotalSizeBytes;
        private long mTotalTimeUs;
        final /* synthetic */ VideoWriter this$0;

        public MediaEncoderStateListener(VideoWriter videoWriter) {
            this.this$0 = videoWriter;
            this.mTotalTimeUs = 0;
            this.mTotalSizeBytes = 0;
            this.mMaxDurationUs = -1;
            this.mMaxFileSizeBytes = -1;
        }

        public MediaEncoderStateListener(VideoWriter videoWriter, long l, long l2) {
            this.this$0 = videoWriter;
            this.mTotalTimeUs = 0;
            this.mTotalSizeBytes = 0;
            this.mMaxDurationUs = 1000 * l;
            this.mMaxFileSizeBytes = l2;
        }

        @Override
        public void onFinished(final boolean bl) {
            File file;
            if (!bl && (file = new File(this.this$0.mOutputPath)).exists()) {
                file.delete();
            }
            this.this$0.mHandler.post(new Runnable(){

                @Override
                public void run() {
                    MediaEncoderStateListener.this.this$0.mIsRunning = false;
                    MediaEncoderStateListener.this.this$0.mListener.onFinished(bl);
                }
            });
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void onProgress(long l, long l2) {
            synchronized (this) {
                this.mTotalTimeUs = l;
                this.mTotalSizeBytes+=l2;
                if (this.mTotalSizeBytes >= this.mMaxFileSizeBytes && this.mMaxFileSizeBytes > 0) {
                    this.this$0.mEncoder.stop();
                } else if (this.mTotalTimeUs >= this.mMaxDurationUs && this.mMaxDurationUs > 0) {
                    this.this$0.mEncoder.stop();
                }
                return;
            }
        }

        @Override
        public void onStarted() {
            this.this$0.mHandler.post(new Runnable(){

                @Override
                public void run() {
                    MediaEncoderStateListener.this.this$0.mListener.onStarted();
                }
            });
        }

        @Override
        public void onStorageFull() {
            this.this$0.mEncoder.stop();
        }

    }

    public static interface VideoWriterListener {
        public void onFinished(boolean var1);

        public void onStarted();
    }

}

