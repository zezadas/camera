/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.media;

import android.view.KeyEvent;

/*
 * Exception performing whole class analysis ignored.
 */
public abstract class TransportPerformer {
    static final int AUDIOFOCUS_GAIN = 1;
    static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    static final int AUDIOFOCUS_LOSS = -1;
    static final int AUDIOFOCUS_LOSS_TRANSIENT = -2;
    static final int AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK = -3;

    public TransportPerformer();

    public void onAudioFocusChange(int var1);

    public int onGetBufferPercentage();

    public abstract long onGetCurrentPosition();

    public abstract long onGetDuration();

    public int onGetTransportControlFlags();

    public abstract boolean onIsPlaying();

    public boolean onMediaButtonDown(int var1, KeyEvent var2);

    public boolean onMediaButtonUp(int var1, KeyEvent var2);

    public abstract void onPause();

    public abstract void onSeekTo(long var1);

    public abstract void onStart();

    public abstract void onStop();
}

