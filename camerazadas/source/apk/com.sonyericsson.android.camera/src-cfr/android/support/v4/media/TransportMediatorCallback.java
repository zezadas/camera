/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.media;

import android.view.KeyEvent;

interface TransportMediatorCallback {
    public long getPlaybackPosition();

    public void handleAudioFocusChange(int var1);

    public void handleKey(KeyEvent var1);

    public void playbackPositionUpdate(long var1);
}

