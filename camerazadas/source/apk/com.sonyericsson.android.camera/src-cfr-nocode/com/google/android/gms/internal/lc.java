/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.SensorsApi;
import com.google.android.gms.fitness.request.DataSourcesRequest;
import com.google.android.gms.fitness.request.OnDataPointListener;
import com.google.android.gms.fitness.request.SensorRequest;
import com.google.android.gms.fitness.request.o;
import com.google.android.gms.fitness.request.q;
import com.google.android.gms.fitness.result.DataSourcesResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kn;
import com.google.android.gms.internal.kt;

/*
 * Exception performing whole class analysis ignored.
 */
public class lc
implements SensorsApi {
    public lc();

    private PendingResult<Status> a(GoogleApiClient var1, o var2);

    private PendingResult<Status> a(GoogleApiClient var1, q var2, b var3);

    @Override
    public PendingResult<Status> add(GoogleApiClient var1, SensorRequest var2, PendingIntent var3);

    @Override
    public PendingResult<Status> add(GoogleApiClient var1, SensorRequest var2, OnDataPointListener var3);

    @Override
    public PendingResult<DataSourcesResult> findDataSources(GoogleApiClient var1, DataSourcesRequest var2);

    @Override
    public PendingResult<Status> remove(GoogleApiClient var1, PendingIntent var2);

    @Override
    public PendingResult<Status> remove(GoogleApiClient var1, OnDataPointListener var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class a<R extends Result>
    extends BaseImplementation.a<R, kk> {
        public a();
    }

    private static interface b {
        public void jd();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class c
    extends kn.a {
        private final BaseImplementation.b<DataSourcesResult> De;

        private c(BaseImplementation.b<DataSourcesResult> var1);

        /* synthetic */ c(BaseImplementation.b var1,  var2);

        @Override
        public void a(DataSourcesResult var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class d
    extends kt.a {
        private final BaseImplementation.b<Status> De;
        private final b TX;

        private d(BaseImplementation.b<Status> var1, b var2);

        /* synthetic */ d(BaseImplementation.b var1, b var2,  var3);

        @Override
        public void k(Status var1);
    }

}

