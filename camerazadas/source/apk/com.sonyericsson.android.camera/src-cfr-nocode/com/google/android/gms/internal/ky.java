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
import com.google.android.gms.fitness.ConfigApi;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.request.j;
import com.google.android.gms.fitness.result.DataTypeResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.ko;

/*
 * Exception performing whole class analysis ignored.
 */
public class ky
implements ConfigApi {
    public ky();

    @Override
    public PendingResult<DataTypeResult> createCustomDataType(GoogleApiClient var1, DataTypeCreateRequest var2);

    @Override
    public PendingResult<Status> disableFit(GoogleApiClient var1);

    @Override
    public PendingResult<DataTypeResult> readDataType(GoogleApiClient var1, String var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends ko.a {
        private final BaseImplementation.b<DataTypeResult> De;

        private a(BaseImplementation.b<DataTypeResult> var1);

        /* synthetic */ a(BaseImplementation.b var1,  var2);

        @Override
        public void a(DataTypeResult var1);
    }

}

