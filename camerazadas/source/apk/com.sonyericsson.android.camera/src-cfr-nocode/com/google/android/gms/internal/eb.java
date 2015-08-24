/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.dw;
import com.google.android.gms.internal.ea;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 */
@ez
public final class eb
extends ek.a
implements ServiceConnection {
    private Context mContext;
    private boolean sD;
    private int sE;
    private Intent sF;
    private dw sn;
    private String su;
    private ea sy;

    public eb(Context var1, String var2, boolean var3, int var4, Intent var5, ea var6);

    @Override
    public void finishPurchase();

    @Override
    public String getProductId();

    @Override
    public Intent getPurchaseData();

    @Override
    public int getResultCode();

    @Override
    public boolean isVerified();

    @Override
    public void onServiceConnected(ComponentName var1, IBinder var2);

    @Override
    public void onServiceDisconnected(ComponentName var1);
}

