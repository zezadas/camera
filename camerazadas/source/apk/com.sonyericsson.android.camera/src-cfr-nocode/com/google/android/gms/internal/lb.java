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
import com.google.android.gms.fitness.RecordingApi;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.fitness.request.af;
import com.google.android.gms.fitness.request.aj;
import com.google.android.gms.fitness.request.m;
import com.google.android.gms.fitness.result.ListSubscriptionsResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kq;

/*
 * Exception performing whole class analysis ignored.
 */
public class lb
implements RecordingApi {
    public lb();

    private PendingResult<ListSubscriptionsResult> a(GoogleApiClient var1, m var2);

    public PendingResult<Status> a(GoogleApiClient var1, af var2);

    public PendingResult<Status> a(GoogleApiClient var1, aj var2);

    @Override
    public PendingResult<ListSubscriptionsResult> listSubscriptions(GoogleApiClient var1);

    @Override
    public PendingResult<ListSubscriptionsResult> listSubscriptions(GoogleApiClient var1, DataType var2);

    @Override
    public PendingResult<Status> subscribe(GoogleApiClient var1, DataSource var2);

    @Override
    public PendingResult<Status> subscribe(GoogleApiClient var1, DataType var2);

    @Override
    public PendingResult<Status> unsubscribe(GoogleApiClient var1, DataSource var2);

    @Override
    public PendingResult<Status> unsubscribe(GoogleApiClient var1, DataType var2);

    @Override
    public PendingResult<Status> unsubscribe(GoogleApiClient var1, Subscription var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends kq.a {
        private final BaseImplementation.b<ListSubscriptionsResult> De;

        private a(BaseImplementation.b<ListSubscriptionsResult> var1);

        /* synthetic */ a(BaseImplementation.b var1,  var2);

        @Override
        public void a(ListSubscriptionsResult var1);
    }

}

