/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.internal.ln;
import com.google.android.gms.internal.lo;

/*
 * Exception performing whole class analysis.
 */
public class lm
extends e<lo> {
    private final String Dd;
    private a adM;
    private final int mTheme;
    private Activity nr;

    public lm(Activity var1, Looper var2, GoogleApiClient.ConnectionCallbacks var3, GoogleApiClient.OnConnectionFailedListener var4, String var5, int var6);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    public void a(UserAddressRequest var1, int var2);

    protected lo aF(IBinder var1);

    @Override
    public void disconnect();

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);

    protected lo lS();

    protected void lT();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class a
    extends ln.a {
        private final int Lu;
        private Activity nr;

        public a(int var1, Activity var2);

        static /* synthetic */ void a(a var0, Activity var1);

        private void setActivity(Activity var1);

        @Override
        public void g(int var1, Bundle var2);
    }

}

