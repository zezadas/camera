/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.media.MediaActionSound;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Message;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.device.CameraDevice;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ShutterToneGenerator {
    private static final String SOUND_HOME = "/system/media/audio/camera/";
    private static final int SOUND_STREAM = 7;
    private static final String TAG;
    private CameraDevice mCameraDevice;
    private final LedBlinkerHandler mLedBlinkerHandler;
    private final MediaActionSound mMediaActionSound;
    private MediaPlayer mMediaPlayer;
    private ShutterSound mShutterSound;

    static;

    public ShutterToneGenerator();

    static /* synthetic */ CameraDevice access$000(ShutterToneGenerator var0);

    public static String getSoundFilePath(Type var0, ShutterSound var1);

    public void blink();

    public void cancelPlayAndBlink();

    public void clearBlink();

    public void play(Type var1);

    public void playActionSound(int var1);

    public void prepare(CameraDevice var1);

    public void release();

    public void releaseResources();

    public void setShutterSound(ShutterSound var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public class LedBlinkerHandler
    extends Handler {
        public static final int MSG_LIGHT_OFF = 1;
        final /* synthetic */ ShutterToneGenerator this$0;

        public LedBlinkerHandler(ShutterToneGenerator var1);

        @Override
        public void handleMessage(Message var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Type
    extends Enum<Type> {
        private static final /* synthetic */ Type[] $VALUES;
        public static final /* enum */ Type SOUND_AF_SUCCESS;
        public static final /* enum */ Type SOUND_BURST_SHUTTER;
        public static final /* enum */ Type SOUND_FAST_CAPTURE_SHUTTER_DONE;
        public static final /* enum */ Type SOUND_OFF;
        public static final /* enum */ Type SOUND_SELFTIMER_10SEC;
        public static final /* enum */ Type SOUND_SELFTIMER_2SEC;
        private String mFileName;
        private boolean mIsCommonSound;

        static;

        private Type(String var3, boolean var4);

        public static Type valueOf(String var0);

        public static Type[] values();

        public String getFileName();

        public boolean isCommonSound();
    }

}

