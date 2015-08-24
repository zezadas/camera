/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.RecordingApi;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.fitness.request.af;
import com.google.android.gms.fitness.request.aj;
import com.google.android.gms.fitness.request.m;
import com.google.android.gms.fitness.result.ListSubscriptionsResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.kt;

public class lb
implements RecordingApi {
    private PendingResult<ListSubscriptionsResult> a(GoogleApiClient googleApiClient, final m m) {
        return googleApiClient.a(new kk.a<ListSubscriptionsResult>(){

            @Override
            protected void a(kk kk) throws RemoteException {
                a a = new a(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(m, a, string);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.z(status);
            }

            protected ListSubscriptionsResult z(Status status) {
                return ListSubscriptionsResult.G(status);
            }
        });
    }

    public PendingResult<Status> a(GoogleApiClient googleApiClient, final af af) {
        return googleApiClient.a(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(af, (kt)b, string);
            }
        });
    }

    public PendingResult<Status> a(GoogleApiClient googleApiClient, final aj aj) {
        return googleApiClient.b(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(aj, (kt)b, string);
            }
        });
    }

    @Override
    public PendingResult<ListSubscriptionsResult> listSubscriptions(GoogleApiClient googleApiClient) {
        return this.a(googleApiClient, new m.a().jq());
    }

    @Override
    public PendingResult<ListSubscriptionsResult> listSubscriptions(GoogleApiClient googleApiClient, DataType dataType) {
        return this.a(googleApiClient, new m.a().c(dataType).jq());
    }

    @Override
    public PendingResult<Status> subscribe(GoogleApiClient googleApiClient, DataSource dataSource) {
        return this.a(googleApiClient, new af.a().b(new Subscription.a().b(dataSource).iZ()).jF());
    }

    @Override
    public PendingResult<Status> subscribe(GoogleApiClient googleApiClient, DataType dataType) {
        return this.a(googleApiClient, new af.a().b(new Subscription.a().b(dataType).iZ()).jF());
    }

    @Override
    public PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, DataSource dataSource) {
        return this.a(googleApiClient, new aj.a().d(dataSource).jG());
    }

    @Override
    public PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, DataType dataType) {
        return this.a(googleApiClient, new aj.a().d(dataType).jG());
    }

    @Override
    public PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, Subscription subscription) {
        if (subscription.getDataType() == null) {
            return this.unsubscribe(googleApiClient, subscription.getDataSource());
        }
        return this.unsubscribe(googleApiClient, subscription.getDataType());
    }

    private static class a
    extends kq.a {
        private final BaseImplementation.b<ListSubscriptionsResult> De;

        private a(BaseImplementation.b<ListSubscriptionsResult> b) {
            this.De = b;
        }

        @Override
        public void a(ListSubscriptionsResult listSubscriptionsResult) {
            this.De.b(listSubscriptionsResult);
        }
    }

}

