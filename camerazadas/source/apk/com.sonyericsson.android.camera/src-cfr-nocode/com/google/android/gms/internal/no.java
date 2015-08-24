/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.nh;
import com.google.android.gms.internal.ni;
import com.google.android.gms.internal.nj;
import com.google.android.gms.internal.nl;
import com.google.android.gms.internal.nm;

/*
 * Exception performing whole class analysis.
 */
public class no
extends e<nh> {
    private final String BZ;
    private final nl akW;
    private final nj akX;
    private boolean akY;
    private final Object mw;

    public no(Context var1, nl var2);

    private void c(nm var1, ni var2);

    private void d(nm var1, ni var2);

    private void mY();

    void S(boolean var1);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    public void b(nm var1, ni var2);

    protected nh bD(IBinder var1);

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);

    public void start();

    public void stop();
}

