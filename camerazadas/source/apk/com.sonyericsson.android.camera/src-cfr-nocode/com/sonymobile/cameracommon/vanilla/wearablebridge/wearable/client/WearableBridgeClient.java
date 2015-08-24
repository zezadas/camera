/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.wearable.client;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.Node;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.WearableBridgeBase;
import com.sonymobile.cameracommon.vanilla.wearablebridge.wearable.client.NotifyHandheldInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.wearable.client.ObserveHandheldInterface;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class WearableBridgeClient
extends WearableBridgeBase {
    private static final String TAG;
    private Handler mCallbackHandler;
    private NotifyHandheldInterface.LifeCycleNotifier mLifeCycleNotifier;
    private NotifyHandheldInterface.PhotoEventNotifier mPhotoEventNotifier;
    private ObserveHandheldInterface.PhotoStateObserver mPhotoStateObserver;
    private NotifyHandheldInterface.VideoEventNotifier mVideoEventNotifier;
    private ObserveHandheldInterface.VideoStateObserver mVideoStateObserver;

    static;

    public WearableBridgeClient(Context var1, Handler var2, ObserveHandheldInterface.PhotoStateObserver var3, ObserveHandheldInterface.VideoStateObserver var4);

    static /* synthetic */ ObserveHandheldInterface.PhotoStateObserver access$300(WearableBridgeClient var0);

    public NotifyHandheldInterface.LifeCycleNotifier getLifeCycleNotifier();

    public NotifyHandheldInterface.PhotoEventNotifier getPhotoEventNotifier();

    public NotifyHandheldInterface.VideoEventNotifier getVideoEventNotifier();

    @Override
    public void onDataChanged(List<DataEvent> var1);

    @Override
    public void onMessageReceived(String var1, String var2);

    @Override
    public void onNodeConnected(Node var1);

    @Override
    public void onNodeDisconnected(Node var1);

    @Override
    public void onResume();

    @Override
    public void release();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class HandleDataTask
    implements Runnable {
        private final List<DataEvent> mDataEventList;
        final /* synthetic */ WearableBridgeClient this$0;

        public HandleDataTask(WearableBridgeClient var1, List<DataEvent> var2);

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
        final /* synthetic */ WearableBridgeClient this$0;

        public HandleMessageTask(WearableBridgeClient var1, String var2, String var3);

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
        final /* synthetic */ WearableBridgeClient this$0;

        public HandleNodeConnectionTask(WearableBridgeClient var1, boolean var2, Node var3);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class LifeCycleNotiferImpl
    implements NotifyHandheldInterface.LifeCycleNotifier {
        final /* synthetic */ WearableBridgeClient this$0;

        private LifeCycleNotiferImpl(WearableBridgeClient var1);

        /* synthetic */ LifeCycleNotiferImpl(WearableBridgeClient var1,  var2);

        @Override
        public void onPause();

        @Override
        public void onResume();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PhotoEventNotifierImpl
    implements NotifyHandheldInterface.PhotoEventNotifier {
        final /* synthetic */ WearableBridgeClient this$0;

        private PhotoEventNotifierImpl(WearableBridgeClient var1);

        /* synthetic */ PhotoEventNotifierImpl(WearableBridgeClient var1,  var2);

        @Override
        public void onPhotoCaptureRequested();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class VideoEventNotifierImpl
    implements NotifyHandheldInterface.VideoEventNotifier {
        final /* synthetic */ WearableBridgeClient this$0;

        private VideoEventNotifierImpl(WearableBridgeClient var1);

        /* synthetic */ VideoEventNotifierImpl(WearableBridgeClient var1,  var2);

        @Override
        public void onStartVideoRecRequested();

        @Override
        public void onStopVideoRecRequested();
    }

}

