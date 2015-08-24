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
import android.os.Parcelable;
import android.support.v4.media.TransportMediatorCallback;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;

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

    public TransportMediatorJellybeanMR2(Context context, AudioManager audioManager, View view, TransportMediatorCallback transportMediatorCallback) {
        this.mWindowAttachListener = new ViewTreeObserver.OnWindowAttachListener(){

            @Override
            public void onWindowAttached() {
                TransportMediatorJellybeanMR2.this.windowAttached();
            }

            @Override
            public void onWindowDetached() {
                TransportMediatorJellybeanMR2.this.windowDetached();
            }
        };
        this.mWindowFocusListener = new ViewTreeObserver.OnWindowFocusChangeListener(){

            @Override
            public void onWindowFocusChanged(boolean bl) {
                if (bl) {
                    TransportMediatorJellybeanMR2.this.gainFocus();
                    return;
                }
                TransportMediatorJellybeanMR2.this.loseFocus();
            }
        };
        this.mMediaButtonReceiver = new BroadcastReceiver(){

            @Override
            public void onReceive(Context object, Intent intent) {
                try {
                    object = (KeyEvent)intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
                    TransportMediatorJellybeanMR2.this.mTransportCallback.handleKey((KeyEvent)object);
                    return;
                }
                catch (ClassCastException var1_2) {
                    Log.w("TransportController", var1_2);
                    return;
                }
            }
        };
        this.mAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener(){

            @Override
            public void onAudioFocusChange(int n) {
                TransportMediatorJellybeanMR2.this.mTransportCallback.handleAudioFocusChange(n);
            }
        };
        this.mPlayState = 0;
        this.mContext = context;
        this.mAudioManager = audioManager;
        this.mTargetView = view;
        this.mTransportCallback = transportMediatorCallback;
        this.mReceiverAction = context.getPackageName() + ":transport:" + System.identityHashCode(this);
        this.mIntent = new Intent(this.mReceiverAction);
        this.mIntent.setPackage(context.getPackageName());
        this.mReceiverFilter = new IntentFilter();
        this.mReceiverFilter.addAction(this.mReceiverAction);
        this.mTargetView.getViewTreeObserver().addOnWindowAttachListener(this.mWindowAttachListener);
        this.mTargetView.getViewTreeObserver().addOnWindowFocusChangeListener(this.mWindowFocusListener);
    }

    public void destroy() {
        this.windowDetached();
        this.mTargetView.getViewTreeObserver().removeOnWindowAttachListener(this.mWindowAttachListener);
        this.mTargetView.getViewTreeObserver().removeOnWindowFocusChangeListener(this.mWindowFocusListener);
    }

    void dropAudioFocus() {
        if (this.mAudioFocused) {
            this.mAudioFocused = false;
            this.mAudioManager.abandonAudioFocus(this.mAudioFocusChangeListener);
        }
    }

    void gainFocus() {
        if (!this.mFocused) {
            this.mFocused = true;
            this.mAudioManager.registerMediaButtonEventReceiver(this.mPendingIntent);
            this.mAudioManager.registerRemoteControlClient(this.mRemoteControl);
            if (this.mPlayState == 3) {
                this.takeAudioFocus();
            }
        }
    }

    public Object getRemoteControlClient() {
        return this.mRemoteControl;
    }

    void loseFocus() {
        this.dropAudioFocus();
        if (this.mFocused) {
            this.mFocused = false;
            this.mAudioManager.unregisterRemoteControlClient(this.mRemoteControl);
            this.mAudioManager.unregisterMediaButtonEventReceiver(this.mPendingIntent);
        }
    }

    @Override
    public long onGetPlaybackPosition() {
        return this.mTransportCallback.getPlaybackPosition();
    }

    @Override
    public void onPlaybackPositionUpdate(long l) {
        this.mTransportCallback.playbackPositionUpdate(l);
    }

    public void pausePlaying() {
        if (this.mPlayState == 3) {
            this.mPlayState = 2;
            this.mRemoteControl.setPlaybackState(2);
        }
        this.dropAudioFocus();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void refreshState(boolean bl, long l, int n) {
        if (this.mRemoteControl != null) {
            RemoteControlClient remoteControlClient = this.mRemoteControl;
            int n2 = bl ? 3 : 1;
            float f = bl ? 1.0f : 0.0f;
            remoteControlClient.setPlaybackState(n2, l, f);
            this.mRemoteControl.setTransportControlFlags(n);
        }
    }

    public void startPlaying() {
        if (this.mPlayState != 3) {
            this.mPlayState = 3;
            this.mRemoteControl.setPlaybackState(3);
        }
        if (this.mFocused) {
            this.takeAudioFocus();
        }
    }

    public void stopPlaying() {
        if (this.mPlayState != 1) {
            this.mPlayState = 1;
            this.mRemoteControl.setPlaybackState(1);
        }
        this.dropAudioFocus();
    }

    void takeAudioFocus() {
        if (!this.mAudioFocused) {
            this.mAudioFocused = true;
            this.mAudioManager.requestAudioFocus(this.mAudioFocusChangeListener, 3, 1);
        }
    }

    void windowAttached() {
        this.mContext.registerReceiver(this.mMediaButtonReceiver, this.mReceiverFilter);
        this.mPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, this.mIntent, 268435456);
        this.mRemoteControl = new RemoteControlClient(this.mPendingIntent);
        this.mRemoteControl.setOnGetPlaybackPositionListener(this);
        this.mRemoteControl.setPlaybackPositionUpdateListener(this);
    }

    void windowDetached() {
        this.loseFocus();
        if (this.mPendingIntent != null) {
            this.mContext.unregisterReceiver(this.mMediaButtonReceiver);
            this.mPendingIntent.cancel();
            this.mPendingIntent = null;
            this.mRemoteControl = null;
        }
    }

}

