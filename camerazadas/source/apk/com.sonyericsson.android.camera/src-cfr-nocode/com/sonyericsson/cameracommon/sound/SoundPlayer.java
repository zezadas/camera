/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.sound;

import android.content.Context;
import android.media.MediaPlayer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SoundPlayer {
    private static final String TAG = "SoundPlayer";
    private static final int sStreamType;
    private final MediaPlayer mMediaPlayer;

    static;

    public SoundPlayer();

    private boolean playSound(Context var1, int var2);

    private boolean playSound(String var1);

    public boolean playAfSuccessSound();

    public boolean playShutterSound(Context var1, int var2);

    public boolean playShutterSound(String var1);

    public void release();

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener var1);
}

