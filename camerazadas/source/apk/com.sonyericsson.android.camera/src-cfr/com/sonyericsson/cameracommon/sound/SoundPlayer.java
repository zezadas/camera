/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.sound;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.MediaPlayer;
import com.sonyericsson.cameracommon.apihelper.ApiHelper;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.FileDescriptor;
import java.io.IOException;

public class SoundPlayer {
    private static final String TAG = "SoundPlayer";
    private static final int sStreamType = ApiHelper.getIntFieldIfExists(AudioManager.class, "STREAM_SYSTEM_ENFORCED", null, 2);
    private final MediaPlayer mMediaPlayer = new MediaPlayer();

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private boolean playSound(Context object, int n) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        // MONITORENTER : mediaPlayer
        object = object.getResources().openRawResourceFd(n);
        if (object == null) {
            CameraLogger.e("SoundPlayer", "playSound: open RawResourceFd fail");
            // MONITOREXIT : mediaPlayer
            return false;
        }
        this.mMediaPlayer.reset();
        this.mMediaPlayer.setDataSource(object.getFileDescriptor(), object.getStartOffset(), object.getLength());
        this.mMediaPlayer.setAudioStreamType(sStreamType);
        this.mMediaPlayer.prepare();
        try {
            object.close();
        }
        catch (IOException var1_2) {
            CameraLogger.e("SoundPlayer", "playSound: close RawResourceFd fail");
        }
        this.mMediaPlayer.start();
        // MONITOREXIT : mediaPlayer
        return true;
        catch (IOException iOException) {
            try {
                CameraLogger.e("SoundPlayer", "playSound: IOException", iOException);
                this.mMediaPlayer.reset();
            }
            catch (Throwable var4_8) {
                try {
                    object.close();
                }
                catch (IOException var1_4) {
                    CameraLogger.e("SoundPlayer", "playSound: close RawResourceFd fail");
                    throw var4_8;
                }
                throw var4_8;
            }
            try {
                object.close();
                // MONITOREXIT : mediaPlayer
                return false;
            }
            catch (IOException var1_3) {
                CameraLogger.e("SoundPlayer", "playSound: close RawResourceFd fail");
                return false;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private boolean playSound(String string) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        synchronized (mediaPlayer) {
            if (string == null) {
                return false;
            }
            try {
                this.mMediaPlayer.reset();
                this.mMediaPlayer.setDataSource(string);
                this.mMediaPlayer.setAudioStreamType(sStreamType);
                this.mMediaPlayer.prepare();
                this.mMediaPlayer.start();
            }
            catch (IOException var1_2) {
                CameraLogger.e("SoundPlayer", "playSound: IOException", var1_2);
                this.mMediaPlayer.reset();
                return false;
            }
            return true;
        }
    }

    public boolean playAfSuccessSound() {
        return this.playSound("/system/media/audio/camera/common/af_success.m4a");
    }

    public boolean playShutterSound(Context context, int n) {
        return this.playSound(context, n);
    }

    public boolean playShutterSound(String string) {
        return this.playSound(string);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void release() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        synchronized (mediaPlayer) {
            this.mMediaPlayer.reset();
            this.mMediaPlayer.release();
            return;
        }
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.mMediaPlayer.setOnCompletionListener(onCompletionListener);
    }
}

