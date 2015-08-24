/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.Fitness;
import com.google.android.gms.fitness.SensorsApi;
import com.google.android.gms.fitness.data.k;
import com.google.android.gms.fitness.data.l;
import com.google.android.gms.fitness.request.DataSourcesRequest;
import com.google.android.gms.fitness.request.OnDataPointListener;
import com.google.android.gms.fitness.request.SensorRequest;
import com.google.android.gms.fitness.request.o;
import com.google.android.gms.fitness.request.q;
import com.google.android.gms.fitness.result.DataSourcesResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kn;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.ku;

public class lc
implements SensorsApi {
    private PendingResult<Status> a(GoogleApiClient googleApiClient, final o o) {
        return googleApiClient.a(new a<Status>(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(o, (kt)b, string);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.d(status);
            }

            protected Status d(Status status) {
                return status;
            }
        });
    }

    private PendingResult<Status> a(GoogleApiClient googleApiClient, final q q, final b b) {
        return googleApiClient.b(new a<Status>(){

            @Override
            protected void a(kk kk) throws RemoteException {
                d d = new d(this, b);
                String string = kk.getContext().getPackageName();
                kk.jb().a(q, (kt)d, string);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.d(status);
            }

            protected Status d(Status status) {
                return status;
            }
        });
    }

    @Override
    public PendingResult<Status> add(GoogleApiClient googleApiClient, SensorRequest sensorRequest, PendingIntent pendingIntent) {
        return this.a(googleApiClient, new o(sensorRequest, null, pendingIntent));
    }

    @Override
    public PendingResult<Status> add(GoogleApiClient googleApiClient, SensorRequest sensorRequest, OnDataPointListener onDataPointListener) {
        return this.a(googleApiClient, new o(sensorRequest, l.a.iV().a(onDataPointListener), null));
    }

    @Override
    public PendingResult<DataSourcesResult> findDataSources(GoogleApiClient googleApiClient, final DataSourcesRequest dataSourcesRequest) {
        return googleApiClient.a(new a<DataSourcesResult>(){

            protected DataSourcesResult A(Status status) {
                return DataSourcesResult.E(status);
            }

            @Override
            protected void a(kk kk) throws RemoteException {
                c c = new c(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(dataSourcesRequest, c, string);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.A(status);
            }
        });
    }

    @Override
    public PendingResult<Status> remove(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return this.a(googleApiClient, new q(null, pendingIntent), null);
    }

    @Override
    public PendingResult<Status> remove(GoogleApiClient googleApiClient, final OnDataPointListener onDataPointListener) {
        l l = l.a.iV().b(onDataPointListener);
        if (l == null) {
            return new ku<Status>(Status.Jv);
        }
        return this.a(googleApiClient, new q(l, null), new b(){

            @Override
            public void jd() {
                l.a.iV().c(onDataPointListener);
            }
        });
    }

    private static abstract class a<R extends Result>
    extends BaseImplementation.a<R, kk> {
        public a() {
            super(Fitness.CU);
        }
    }

    private static interface b {
        public void jd();
    }

    private static class c
    extends kn.a {
        private final BaseImplementation.b<DataSourcesResult> De;

        private c(BaseImplementation.b<DataSourcesResult> b) {
            this.De = b;
        }

        @Override
        public void a(DataSourcesResult dataSourcesResult) {
            this.De.b(dataSourcesResult);
        }
    }

    private static class d
    extends kt.a {
        private final BaseImplementation.b<Status> De;
        private final b TX;

        private d(BaseImplementation.b<Status> b, b b2) {
            this.De = b;
            this.TX = b2;
        }

        @Override
        public void k(Status status) {
            if (this.TX != null && status.isSuccess()) {
                this.TX.jd();
            }
            this.De.b(status);
        }
    }

}

