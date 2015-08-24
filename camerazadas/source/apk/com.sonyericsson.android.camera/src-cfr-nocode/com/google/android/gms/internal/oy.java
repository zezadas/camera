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
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.ot;
import com.google.android.gms.internal.ow;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;

/*
 * Exception performing whole class analysis.
 */
public class oy
extends e<ot> {
    private final String Dd;
    private final int atL;
    private final int mTheme;
    private final Activity nr;

    public oy(Activity var1, Looper var2, GoogleApiClient.ConnectionCallbacks var3, GoogleApiClient.OnConnectionFailedListener var4, int var5, String var6, int var7);

    public static Bundle a(int var0, String var1, String var2, int var3);

    static /* synthetic */ Activity b(oy var0);

    private Bundle pO();

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    public void a(FullWalletRequest var1, int var2);

    public void a(MaskedWalletRequest var1, int var2);

    public void a(NotifyTransactionStatusRequest var1);

    protected ot bP(IBinder var1);

    public void d(String var1, String var2, int var3);

    public void fI(int var1);

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends ow.a {
        private a();

        /* synthetic */ a( var1);

        @Override
        public void a(int var1, FullWallet var2, Bundle var3);

        @Override
        public void a(int var1, MaskedWallet var2, Bundle var3);

        @Override
        public void a(int var1, boolean var2, Bundle var3);

        @Override
        public void a(Status var1, op var2, Bundle var3);

        @Override
        public void i(int var1, Bundle var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class b
    extends a {
        private final int Lu;
        final /* synthetic */ oy auw;

        public b(oy var1, int var2);

        @Override
        public void a(int var1, FullWallet var2, Bundle var3);

        @Override
        public void a(int var1, MaskedWallet var2, Bundle var3);

        @Override
        public void a(int var1, boolean var2, Bundle var3);

        @Override
        public void i(int var1, Bundle var2);
    }

}

