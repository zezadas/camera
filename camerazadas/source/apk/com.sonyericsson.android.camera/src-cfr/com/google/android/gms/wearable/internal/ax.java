/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
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

public class ax
extends ae.a {
    private final DataApi.DataListener avX;
    private final MessageApi.MessageListener avY;
    private final NodeApi.NodeListener avZ;
    private final IntentFilter[] awa;

    public ax(DataApi.DataListener dataListener, MessageApi.MessageListener messageListener, NodeApi.NodeListener nodeListener, IntentFilter[] arrintentFilter) {
        this.avX = dataListener;
        this.avY = messageListener;
        this.avZ = nodeListener;
        this.awa = arrintentFilter;
    }

    public static ax a(DataApi.DataListener dataListener, IntentFilter[] arrintentFilter) {
        return new ax(dataListener, null, null, arrintentFilter);
    }

    public static ax a(MessageApi.MessageListener messageListener, IntentFilter[] arrintentFilter) {
        return new ax(null, messageListener, null, arrintentFilter);
    }

    public static ax a(NodeApi.NodeListener nodeListener) {
        return new ax(null, null, nodeListener, null);
    }

    @Override
    public void Z(DataHolder dataHolder) {
        if (this.avX != null) {
            try {
                this.avX.onDataChanged(new DataEventBuffer(dataHolder));
                return;
            }
            finally {
                dataHolder.close();
            }
        }
        dataHolder.close();
    }

    @Override
    public void a(ah ah) {
        if (this.avY != null) {
            this.avY.onMessageReceived(ah);
        }
    }

    @Override
    public void a(ak ak) {
        if (this.avZ != null) {
            this.avZ.onPeerConnected(ak);
        }
    }

    @Override
    public void b(ak ak) {
        if (this.avZ != null) {
            this.avZ.onPeerDisconnected(ak);
        }
    }

    public IntentFilter[] qb() {
        return this.awa;
    }
}

