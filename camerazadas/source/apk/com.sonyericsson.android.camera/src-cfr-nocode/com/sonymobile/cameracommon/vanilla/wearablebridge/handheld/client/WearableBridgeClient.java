/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.WearableBridgeClientBroadcastReceiver;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class WearableBridgeClient {
    private static final String TAG;
    private Activity mActivity;
    private Handler mCallbackHandler;
    private boolean mIsObserverEnabled;
    private NotifyWearableInterface.LifeCycleNotifier mLifeCycleNotifier;
    private ObserveWearableInterface.LifeCycleObserver mLifeCycleObserver;
    private ObserveWearableInterface.PhotoEventObserver mPhotoEventObserver;
    private NotifyWearableInterface.PhotoStateNotifier mPhotoStateNotifier;
    private ObserveWearableInterface.VideoEventObserver mVideoEventObserver;
    private NotifyWearableInterface.VideoStateNotifier mVideoStateNotifier;
    private IntentFilter mWearableBridgeClientBroadcastFilter;
    private WearableBridgeClientBroadcastReceiver mWearableBridgeClientBroadcastReceiver;

    static;

    public WearableBridgeClient(Activity var1, Handler var2, ObserveWearableInterface.LifeCycleObserver var3, ObserveWearableInterface.PhotoEventObserver var4, ObserveWearableInterface.VideoEventObserver var5);

    static /* synthetic */ boolean access$300(WearableBridgeClient var0);

    static /* synthetic */ boolean access$302(WearableBridgeClient var0, boolean var1);

    static /* synthetic */ WearableBridgeClientBroadcastReceiver access$400(WearableBridgeClient var0);

    static /* synthetic */ IntentFilter access$500(WearableBridgeClient var0);

    static /* synthetic */ Activity access$600(WearableBridgeClient var0);

    static /* synthetic */ Intent access$700(WearableBridgeClient var0, String var1);

    private Intent getNotifierIntent(String var1);

    public NotifyWearableInterface.LifeCycleNotifier getLifeCycleNotifier();

    public NotifyWearableInterface.PhotoStateNotifier getPhotoStateNotifier();

    public NotifyWearableInterface.VideoStateNotifier getVideoStateNotifier();

    public void release();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class LifeCycleNotifierImpl
    implements NotifyWearableInterface.LifeCycleNotifier {
        final /* synthetic */ WearableBridgeClient this$0;

        private LifeCycleNotifierImpl(WearableBridgeClient var1);

        /* synthetic */ LifeCycleNotifierImpl(WearableBridgeClient var1,  var2);

        @Override
        public void onPause();

        @Override
        public void onResume();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PhotoStateNotifierImpl
    implements NotifyWearableInterface.PhotoStateNotifier {
        final /* synthetic */ WearableBridgeClient this$0;

        private PhotoStateNotifierImpl(WearableBridgeClient var1);

        /* synthetic */ PhotoStateNotifierImpl(WearableBridgeClient var1,  var2);

        @Override
        public void onCaptureFailed();

        @Override
        public void onCaptureSucceeded();

        @Override
        public void onStateChanged(AbstractCapturableState.AbstractPhotoState var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class VideoStateNotifierImpl
    implements NotifyWearableInterface.VideoStateNotifier {
        final /* synthetic */ WearableBridgeClient this$0;

        private VideoStateNotifierImpl(WearableBridgeClient var1);

        /* synthetic */ VideoStateNotifierImpl(WearableBridgeClient var1,  var2);

        @Override
        public void onStartRecordingFailed();

        @Override
        public void onStartRecordingSucceeded();

        @Override
        public void onStateChanged(AbstractCapturableState.AbstractVideoState var1);

        @Override
        public void onStopRecordingFailed();

        @Override
        public void onStopRecordingSucceeded();
    }

}

