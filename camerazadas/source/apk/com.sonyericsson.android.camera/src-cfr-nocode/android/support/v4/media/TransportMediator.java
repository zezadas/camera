/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.media;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.support.v4.media.TransportController;
import android.support.v4.media.TransportMediatorCallback;
import android.support.v4.media.TransportMediatorJellybeanMR2;
import android.support.v4.media.TransportPerformer;
import android.support.v4.media.TransportStateListener;
import android.view.KeyEvent;
import android.view.View;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
public class TransportMediator
extends TransportController {
    public static final int FLAG_KEY_MEDIA_FAST_FORWARD = 64;
    public static final int FLAG_KEY_MEDIA_NEXT = 128;
    public static final int FLAG_KEY_MEDIA_PAUSE = 16;
    public static final int FLAG_KEY_MEDIA_PLAY = 4;
    public static final int FLAG_KEY_MEDIA_PLAY_PAUSE = 8;
    public static final int FLAG_KEY_MEDIA_PREVIOUS = 1;
    public static final int FLAG_KEY_MEDIA_REWIND = 2;
    public static final int FLAG_KEY_MEDIA_STOP = 32;
    public static final int KEYCODE_MEDIA_PAUSE = 127;
    public static final int KEYCODE_MEDIA_PLAY = 126;
    public static final int KEYCODE_MEDIA_RECORD = 130;
    final AudioManager mAudioManager;
    final TransportPerformer mCallbacks;
    final Context mContext;
    final TransportMediatorJellybeanMR2 mController;
    final Object mDispatcherState;
    final KeyEvent.Callback mKeyEventCallback;
    final ArrayList<TransportStateListener> mListeners;
    final TransportMediatorCallback mTransportKeyCallback;
    final View mView;

    public TransportMediator(Activity var1, TransportPerformer var2);

    private TransportMediator(Activity var1, View var2, TransportPerformer var3);

    public TransportMediator(View var1, TransportPerformer var2);

    private TransportStateListener[] getListeners();

    static boolean isMediaKey(int var0);

    private void pushControllerState();

    private void reportPlayingChanged();

    private void reportTransportControlsChanged();

    public void destroy();

    public boolean dispatchKeyEvent(KeyEvent var1);

    @Override
    public int getBufferPercentage();

    @Override
    public long getCurrentPosition();

    @Override
    public long getDuration();

    public Object getRemoteControlClient();

    @Override
    public int getTransportControlFlags();

    @Override
    public boolean isPlaying();

    @Override
    public void pausePlaying();

    public void refreshState();

    @Override
    public void registerStateListener(TransportStateListener var1);

    @Override
    public void seekTo(long var1);

    @Override
    public void startPlaying();

    @Override
    public void stopPlaying();

    @Override
    public void unregisterStateListener(TransportStateListener var1);

}

