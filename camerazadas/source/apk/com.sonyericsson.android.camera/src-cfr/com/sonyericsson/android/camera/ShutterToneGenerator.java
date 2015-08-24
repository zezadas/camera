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

public class ShutterToneGenerator {
    private static final String SOUND_HOME = "/system/media/audio/camera/";
    private static final int SOUND_STREAM = 7;
    private static final String TAG = ShutterToneGenerator.class.getSimpleName();
    private CameraDevice mCameraDevice;
    private final LedBlinkerHandler mLedBlinkerHandler;
    private final MediaActionSound mMediaActionSound = new MediaActionSound();
    private MediaPlayer mMediaPlayer;
    private ShutterSound mShutterSound;

    public ShutterToneGenerator() {
        this.mLedBlinkerHandler = new LedBlinkerHandler();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String getSoundFilePath(Type type, ShutterSound shutterSound) {
        StringBuffer stringBuffer = new StringBuffer();
        if (shutterSound.getBooleanValue().booleanValue()) {
            stringBuffer.append("/system/media/audio/camera/");
            if (type.isCommonSound()) {
                stringBuffer.append(type.getFileName());
                do {
                    return stringBuffer.toString();
                    break;
                } while (true);
            }
            stringBuffer.append(shutterSound.getDirectoryName());
            stringBuffer.append(type.getFileName());
            return stringBuffer.toString();
        }
        stringBuffer.append("off");
        return stringBuffer.toString();
    }

    public void blink() {
        this.mCameraDevice.turnOnLight();
        this.mLedBlinkerHandler.sendEmptyMessageDelayed(1, 100);
    }

    public void cancelPlayAndBlink() {
        this.mCameraDevice.turnOffLight();
        this.mLedBlinkerHandler.removeMessages(1);
        this.mMediaPlayer.stop();
    }

    public void clearBlink() {
        this.mLedBlinkerHandler.removeMessages(1);
    }

    public void play(Type object) {
        object = ShutterToneGenerator.getSoundFilePath((Type)object, this.mShutterSound);
        try {
            this.mMediaPlayer.reset();
            this.mMediaPlayer.setDataSource((String)object);
            this.mMediaPlayer.setAudioStreamType(7);
            this.mMediaPlayer.setVolume(7.0f, 7.0f);
            this.mMediaPlayer.prepare();
            this.mMediaPlayer.start();
            return;
        }
        catch (Exception var1_2) {
            this.mMediaPlayer.reset();
            return;
        }
    }

    public void playActionSound(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.mMediaActionSound.play(0);
                return;
            }
            case 2: 
        }
        this.mMediaActionSound.play(2);
    }

    public void prepare(CameraDevice cameraDevice) {
        this.mMediaPlayer = new MediaPlayer();
        this.mCameraDevice = cameraDevice;
    }

    public void release() {
        this.mLedBlinkerHandler.removeMessages(1);
        this.mCameraDevice = null;
        this.mMediaActionSound.release();
    }

    public void releaseResources() {
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
        }
    }

    public void setShutterSound(ShutterSound shutterSound) {
        this.mShutterSound = shutterSound;
    }

    public class LedBlinkerHandler
    extends Handler {
        public static final int MSG_LIGHT_OFF = 1;

        @Override
        public void handleMessage(Message message) {
            switch (message.what) {
                default: {
                    return;
                }
                case 1: 
            }
            ShutterToneGenerator.this.mCameraDevice.turnOffLight();
        }
    }

    public static enum Type {
        SOUND_AF_SUCCESS("common/af_success.m4a", true),
        SOUND_SELFTIMER_2SEC("common/selftimer_2sec.m4a", true),
        SOUND_SELFTIMER_10SEC("common/selftimer_10sec.m4a", true),
        SOUND_OFF("no_sound.m4a", false),
        SOUND_BURST_SHUTTER("shutter_done.wav", false),
        SOUND_FAST_CAPTURE_SHUTTER_DONE("fastcapture_launch_and_capture_done.wav", false);
        
        private String mFileName;
        private boolean mIsCommonSound;

        private Type(String string2, boolean bl) {
            this.mFileName = string2;
            this.mIsCommonSound = bl;
        }

        public String getFileName() {
            return this.mFileName;
        }

        public boolean isCommonSound() {
            return this.mIsCommonSound;
        }
    }

}

