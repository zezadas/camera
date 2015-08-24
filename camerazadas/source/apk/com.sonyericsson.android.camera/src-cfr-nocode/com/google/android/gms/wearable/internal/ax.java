/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.internal.ae;
import com.google.android.gms.wearable.internal.ah;
import com.google.android.gms.wearable.internal.ak;

/*
 * Exception performing whole class analysis.
 */
public class ax
extends ae.a {
    private final DataApi.DataListener avX;
    private final MessageApi.MessageListener avY;
    private final NodeApi.NodeListener avZ;
    private final IntentFilter[] awa;

    public ax(DataApi.DataListener var1, MessageApi.MessageListener var2, NodeApi.NodeListener var3, IntentFilter[] var4);

    public static ax a(DataApi.DataListener var0, IntentFilter[] var1);

    public static ax a(MessageApi.MessageListener var0, IntentFilter[] var1);

    public static ax a(NodeApi.NodeListener var0);

    @Override
    public void Z(DataHolder var1);

    @Override
    public void a(ah var1);

    @Override
    public void a(ak var1);

    @Override
    public void b(ak var1);

    public IntentFilter[] qb();
}

