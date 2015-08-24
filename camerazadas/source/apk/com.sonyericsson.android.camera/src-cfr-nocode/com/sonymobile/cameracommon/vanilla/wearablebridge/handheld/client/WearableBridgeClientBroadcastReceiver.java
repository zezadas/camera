/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class WearableBridgeClientBroadcastReceiver
extends BroadcastReceiver {
    private static final String TAG;
    private Handler mCallbackHandler;
    private ObserveWearableInterface.LifeCycleObserver mLifeCycleObserver;
    private NotifyOnPauseTask mNotifyOnPauseTask;
    private NotifyOnResumeTask mNotifyOnResumeTask;
    private NotifyPhotoCaptureRequestedTask mNotifyPhotoCaptureRequestedTask;
    private NotifyVideoStartRecRequestedTask mNotifyVideoStartRecRequestedTask;
    private NotifyVideoStopRecRequestedTask mNotifyVideoStopRecRequestedTask;
    private ObserveWearableInterface.PhotoEventObserver mPhotoEventObserver;
    private ObserveWearableInterface.VideoEventObserver mVideoEventObserver;

    static;

    public WearableBridgeClientBroadcastReceiver(Handler var1, ObserveWearableInterface.LifeCycleObserver var2, ObserveWearableInterface.PhotoEventObserver var3, ObserveWearableInterface.VideoEventObserver var4);

    static /* synthetic */ ObserveWearableInterface.LifeCycleObserver access$500(WearableBridgeClientBroadcastReceiver var0);

    static /* synthetic */ ObserveWearableInterface.PhotoEventObserver access$600(WearableBridgeClientBroadcastReceiver var0);

    static /* synthetic */ ObserveWearableInterface.VideoEventObserver access$700(WearableBridgeClientBroadcastReceiver var0);

    @Override
    public void onReceive(Context var1, Intent var2);

    public void release();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyOnPauseTask
    implements Runnable {
        final /* synthetic */ WearableBridgeClientBroadcastReceiver this$0;

        private NotifyOnPauseTask(WearableBridgeClientBroadcastReceiver var1);

        /* synthetic */ NotifyOnPauseTask(WearableBridgeClientBroadcastReceiver var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyOnResumeTask
    implements Runnable {
        final /* synthetic */ WearableBridgeClientBroadcastReceiver this$0;

        private NotifyOnResumeTask(WearableBridgeClientBroadcastReceiver var1);

        /* synthetic */ NotifyOnResumeTask(WearableBridgeClientBroadcastReceiver var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyPhotoCaptureRequestedTask
    implements Runnable {
        final /* synthetic */ WearableBridgeClientBroadcastReceiver this$0;

        private NotifyPhotoCaptureRequestedTask(WearableBridgeClientBroadcastReceiver var1);

        /* synthetic */ NotifyPhotoCaptureRequestedTask(WearableBridgeClientBroadcastReceiver var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyVideoStartRecRequestedTask
    implements Runnable {
        final /* synthetic */ WearableBridgeClientBroadcastReceiver this$0;

        private NotifyVideoStartRecRequestedTask(WearableBridgeClientBroadcastReceiver var1);

        /* synthetic */ NotifyVideoStartRecRequestedTask(WearableBridgeClientBroadcastReceiver var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyVideoStopRecRequestedTask
    implements Runnable {
        final /* synthetic */ WearableBridgeClientBroadcastReceiver this$0;

        private NotifyVideoStopRecRequestedTask(WearableBridgeClientBroadcastReceiver var1);

        /* synthetic */ NotifyVideoStopRecRequestedTask(WearableBridgeClientBroadcastReceiver var1,  var2);

        @Override
        public void run();
    }

}

