/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.e;

public final class np
implements Account {
    /*
     * Enabled aggressive block sorting
     */
    private static e a(GoogleApiClient object, Api.c<e> c) {
        boolean bl = true;
        boolean bl2 = object != null;
        o.b(bl2, (Object)"GoogleApiClient parameter is required.");
        o.a(object.isConnected(), "GoogleApiClient must be connected.");
        object = (e)object.a(c);
        bl2 = object != null ? bl : false;
        o.a(bl2, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
        return object;
    }

    @Override
    public void clearDefaultAccount(GoogleApiClient googleApiClient) {
        np.a(googleApiClient, Plus.CU).clearDefaultAccount();
    }

    @Override
    public String getAccountName(GoogleApiClient googleApiClient) {
        return np.a(googleApiClient, Plus.CU).getAccountName();
    }

    @Override
    public PendingResult<Status> revokeAccessAndDisconnect(GoogleApiClient googleApiClient) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(e e) {
                e.m(this);
            }
        });
    }

    private static abstract class a
    extends Plus.a<Status> {
        private a() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        public Status d(Status status) {
            return status;
        }
    }

}

