/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.media;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.support.v4.media.TransportMediatorCallback;
import android.view.View;
import android.view.ViewTreeObserver;

/*
 * Exception performing whole class analysis.
 */
class TransportMediatorJellybeanMR2
implements RemoteControlClient.OnGetPlaybackPositionListener,
RemoteControlClient.OnPlaybackPositionUpdateListener {
    AudioManager.OnAudioFocusChangeListener mAudioFocusChangeListener;
    boolean mAudioFocused;
    final AudioManager mAudioManager;
    final Context mContext;
    boolean mFocused;
    final Intent mIntent;
    final BroadcastReceiver mMediaButtonReceiver;
    PendingIntent mPendingIntent;
    int mPlayState;
    final String mReceiverAction;
    final IntentFilter mReceiverFilter;
    RemoteControlClient mRemoteControl;
    final View mTargetView;
    final TransportMediatorCallback mTransportCallback;
    final ViewTreeObserver.OnWindowAttachListener mWindowAttachListener;
    final ViewTreeObserver.OnWindowFocusChangeListener mWindowFocusListener;

    public TransportMediatorJellybeanMR2(Context var1, AudioManager var2, View var3, TransportMediatorCallback var4);

    public void destroy();

    void dropAudioFocus();

    void gainFocus();

    public Object getRemoteControlClient();

    void loseFocus();

    @Override
    public long onGetPlaybackPosition();

    @Override
    public void onPlaybackPositionUpdate(long var1);

    public void pausePlaying();

    public void refreshState(boolean var1, long var2, int var4);

    public void startPlaying();

    public void stopPlaying();

    void takeAudioFocus();

    void windowAttached();

    void windowDetached();

}

