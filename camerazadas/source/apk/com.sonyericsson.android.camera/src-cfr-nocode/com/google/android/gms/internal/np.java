/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.e;

/*
 * Exception performing whole class analysis ignored.
 */
public final class np
implements Account {
    public np();

    private static e a(GoogleApiClient var0, Api.c<e> var1);

    @Override
    public void clearDefaultAccount(GoogleApiClient var1);

    @Override
    public String getAccountName(GoogleApiClient var1);

    @Override
    public PendingResult<Status> revokeAccessAndDisconnect(GoogleApiClient var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class a
    extends Plus.a<Status> {
        private a();

        /* synthetic */ a( var1);

        @Override
        public /* synthetic */ Result c(Status var1);

        public Status d(Status var1);
    }

}

