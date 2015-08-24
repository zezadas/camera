/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.server;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.server.WearableBridgeServer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class WearableBridgeServerBroadcastReceiver
extends BroadcastReceiver {
    private static final String TAG;
    private static String mClientPackageName;
    private static Context mContext;
    private static ObserveWearableInterface.LifeCycleObserver mLifeCycleObserver;
    private static ObserveWearableInterface.PhotoEventObserver mPhotoEventObserver;
    private static ObserveWearableInterface.VideoEventObserver mVideoEventObserver;
    private static WearableBridgeServer mWearableBridgeServer;

    static;

    public WearableBridgeServerBroadcastReceiver();

    static /* synthetic */ Intent access$300(WearableBridgeServerBroadcastReceiver var0, String var1);

    static /* synthetic */ Context access$400();

    private Intent getNotifierIntent(String var1);

    @Override
    public void onReceive(Context var1, Intent var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class LifeCycleObserverImpl
    implements ObserveWearableInterface.LifeCycleObserver {
        final /* synthetic */ WearableBridgeServerBroadcastReceiver this$0;

        private LifeCycleObserverImpl(WearableBridgeServerBroadcastReceiver var1);

        /* synthetic */ LifeCycleObserverImpl(WearableBridgeServerBroadcastReceiver var1,  var2);

        @Override
        public void onPause();

        @Override
        public void onResume();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PhotoEventObserverImpl
    implements ObserveWearableInterface.PhotoEventObserver {
        final /* synthetic */ WearableBridgeServerBroadcastReceiver this$0;

        private PhotoEventObserverImpl(WearableBridgeServerBroadcastReceiver var1);

        /* synthetic */ PhotoEventObserverImpl(WearableBridgeServerBroadcastReceiver var1,  var2);

        @Override
        public void onPhotoCaptureRequested();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class VideoEventObserverImpl
    implements ObserveWearableInterface.VideoEventObserver {
        final /* synthetic */ WearableBridgeServerBroadcastReceiver this$0;

        private VideoEventObserverImpl(WearableBridgeServerBroadcastReceiver var1);

        /* synthetic */ VideoEventObserverImpl(WearableBridgeServerBroadcastReceiver var1,  var2);

        @Override
        public void onStartVideoRecRequested();

        @Override
        public void onStopVideoRecRequested();
    }

}

