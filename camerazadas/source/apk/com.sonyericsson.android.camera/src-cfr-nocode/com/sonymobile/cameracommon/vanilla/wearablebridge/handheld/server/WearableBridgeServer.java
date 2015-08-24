/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.server;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.Node;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.WearableBridgeBase;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class WearableBridgeServer
extends WearableBridgeBase {
    private static final String TAG;
    private Handler mCallbackHandler;
    private NotifyWearableInterface.LifeCycleNotifier mLifeCycleNotifier;
    private ObserveWearableInterface.LifeCycleObserver mLifeCycleObserver;
    private ObserveWearableInterface.PhotoEventObserver mPhotoEventObserver;
    private NotifyWearableInterface.PhotoStateNotifier mPhotoStateNotifier;
    private ObserveWearableInterface.VideoEventObserver mVideoEventObserver;
    private NotifyWearableInterface.VideoStateNotifier mVideoStateNotifier;

    static;

    public WearableBridgeServer(Context var1, Handler var2, ObserveWearableInterface.LifeCycleObserver var3, ObserveWearableInterface.PhotoEventObserver var4, ObserveWearableInterface.VideoEventObserver var5);

    static /* synthetic */ ObserveWearableInterface.LifeCycleObserver access$300(WearableBridgeServer var0);

    static /* synthetic */ ObserveWearableInterface.PhotoEventObserver access$400(WearableBridgeServer var0);

    static /* synthetic */ ObserveWearableInterface.VideoEventObserver access$500(WearableBridgeServer var0);

    public NotifyWearableInterface.LifeCycleNotifier getLifeCycleNotifier();

    public NotifyWearableInterface.PhotoStateNotifier getPhotoStateNotifier();

    public NotifyWearableInterface.VideoStateNotifier getVideoStateNotifier();

    @Override
    public void onDataChanged(List<DataEvent> var1);

    @Override
    public void onMessageReceived(String var1, String var2);

    @Override
    public void onNodeConnected(Node var1);

    @Override
    public void onNodeDisconnected(Node var1);

    @Override
    public void release();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class HandleDataChangedTask
    implements Runnable {
        private final List<DataEvent> mDataEventList;
        final /* synthetic */ WearableBridgeServer this$0;

        public HandleDataChangedTask(WearableBridgeServer var1, List<DataEvent> var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class HandleMessageTask
    implements Runnable {
        private final String mMessage;
        private final String mPath;
        final /* synthetic */ WearableBridgeServer this$0;

        public HandleMessageTask(WearableBridgeServer var1, String var2, String var3);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class HandleNodeConnectionTask
    implements Runnable {
        private final boolean mIsConnected;
        private final Node mNode;
        final /* synthetic */ WearableBridgeServer this$0;

        public HandleNodeConnectionTask(WearableBridgeServer var1, boolean var2, Node var3);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class LifeCycleNotifierImpl
    implements NotifyWearableInterface.LifeCycleNotifier {
        final /* synthetic */ WearableBridgeServer this$0;

        private LifeCycleNotifierImpl(WearableBridgeServer var1);

        /* synthetic */ LifeCycleNotifierImpl(WearableBridgeServer var1,  var2);

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
        final /* synthetic */ WearableBridgeServer this$0;

        private PhotoStateNotifierImpl(WearableBridgeServer var1);

        /* synthetic */ PhotoStateNotifierImpl(WearableBridgeServer var1,  var2);

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
        final /* synthetic */ WearableBridgeServer this$0;

        private VideoStateNotifierImpl(WearableBridgeServer var1);

        /* synthetic */ VideoStateNotifierImpl(WearableBridgeServer var1,  var2);

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

