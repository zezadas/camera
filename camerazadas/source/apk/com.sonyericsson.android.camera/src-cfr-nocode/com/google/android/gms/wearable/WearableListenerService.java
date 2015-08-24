/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataEventBuffer;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.MessageEvent;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.internal.ae;
import com.google.android.gms.wearable.internal.ah;
import com.google.android.gms.wearable.internal.ak;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class WearableListenerService
extends Service
implements DataApi.DataListener,
MessageApi.MessageListener,
NodeApi.NodeListener {
    public static final String BIND_LISTENER_INTENT_ACTION = "com.google.android.gms.wearable.BIND_LISTENER";
    private String BZ;
    private IBinder LZ;
    private volatile int NX;
    private Handler avc;
    private Object avd;
    private boolean ave;

    public WearableListenerService();

    static /* synthetic */ String a(WearableListenerService var0);

    static /* synthetic */ void b(WearableListenerService var0) throws SecurityException;

    private boolean bc(int var1);

    static /* synthetic */ Object c(WearableListenerService var0);

    static /* synthetic */ boolean d(WearableListenerService var0);

    static /* synthetic */ Handler e(WearableListenerService var0);

    private void pU() throws SecurityException;

    @Override
    public final IBinder onBind(Intent var1);

    @Override
    public void onCreate();

    @Override
    public void onDataChanged(DataEventBuffer var1);

    @Override
    public void onDestroy();

    @Override
    public void onMessageReceived(MessageEvent var1);

    @Override
    public void onPeerConnected(Node var1);

    @Override
    public void onPeerDisconnected(Node var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class a
    extends ae.a {
        final /* synthetic */ WearableListenerService avf;

        private a(WearableListenerService var1);

        /* synthetic */ a(WearableListenerService var1, com.google.android.gms.wearable.WearableListenerService$1 var2);

        @Override
        public void Z(DataHolder var1);

        @Override
        public void a(ah var1);

        @Override
        public void a(ak var1);

        @Override
        public void b(ak var1);

    }

}

