/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.videowriter;

import android.location.Location;
import android.media.CamcorderProfile;
import android.media.MediaFormat;
import android.os.Handler;
import com.sonymobile.cameracommon.gltextureview.EGLController;
import com.sonymobile.cameracommon.media.encoder.InputDataInfo;
import com.sonymobile.cameracommon.media.encoder.MediaEncoder;
import com.sonymobile.cameracommon.media.utility.FpsMonitor;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import java.io.IOException;
import javax.microedition.khronos.egl.EGLContext;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class VideoWriter {
    private static final int AUDIO_FORMAT = 2;
    private static final String AUDIO_MIMETYPE = "audio/mp4a-latm";
    private static final boolean ENABLE_MONITOR_FPS = false;
    private static final int I_FRAME_INTERVAL = 1;
    static final String TAG;
    private static final String VIDEO_MIMETYPE = "video/avc";
    private EGLController mEglController;
    private MediaEncoder mEncoder;
    private final FpsMonitor mFpsMonitor;
    private final Handler mHandler;
    private boolean mIsRunning;
    private final VideoWriterListener mListener;
    private String mOutputPath;
    private ReferenceClock mReferenceClock;

    static;

    public VideoWriter(VideoWriterListener var1);

    static /* synthetic */ VideoWriterListener access$000(VideoWriter var0);

    static /* synthetic */ Handler access$100(VideoWriter var0);

    static /* synthetic */ String access$200(VideoWriter var0);

    static /* synthetic */ boolean access$302(VideoWriter var0, boolean var1);

    static /* synthetic */ MediaEncoder access$400(VideoWriter var0);

    private MediaFormat createAudioFormat(String var1, CamcorderProfile var2);

    private InputDataInfo createAudioInputStreamInfo(CamcorderProfile var1) throws IOException;

    private MediaFormat createVideoFormat(String var1, CamcorderProfile var2);

    private InputDataInfo createVideoInputStreamInfo(CamcorderProfile var1) throws IOException;

    private void startEncode(String var1, int var2, Location var3, boolean var4, CamcorderProfile var5, EGLContext var6, MediaEncoderStateListener var7) throws IOException;

    public long elapsedTimeMillis();

    public EGLController getEglController();

    public boolean isRunning();

    public void start(String var1, int var2, Location var3, boolean var4, CamcorderProfile var5, EGLContext var6) throws IOException;

    public void start(String var1, int var2, Location var3, boolean var4, CamcorderProfile var5, EGLContext var6, long var7, long var9) throws IOException;

    public void stop();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class MediaEncoderStateListener
    implements MediaEncoder.StateListener {
        private final long mMaxDurationUs;
        private final long mMaxFileSizeBytes;
        private long mTotalSizeBytes;
        private long mTotalTimeUs;
        final /* synthetic */ VideoWriter this$0;

        public MediaEncoderStateListener(VideoWriter var1);

        public MediaEncoderStateListener(VideoWriter var1, long var2, long var4);

        @Override
        public void onFinished(boolean var1);

        @Override
        public void onProgress(long var1, long var3);

        @Override
        public void onStarted();

        @Override
        public void onStorageFull();

    }

    public static interface VideoWriterListener {
        public void onFinished(boolean var1);

        public void onStarted();
    }

}

