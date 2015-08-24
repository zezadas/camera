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
import com.google.android.gms.fitness.HistoryApi;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.result.DataReadResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.km;

/*
 * Exception performing whole class analysis ignored.
 */
public class kz
implements HistoryApi {
    public kz();

    @Override
    public PendingResult<Status> deleteData(GoogleApiClient var1, DataDeleteRequest var2);

    @Override
    public PendingResult<Status> insertData(GoogleApiClient var1, DataSet var2);

    @Override
    public PendingResult<DataReadResult> readData(GoogleApiClient var1, DataReadRequest var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends km.a {
        private final BaseImplementation.b<DataReadResult> De;
        private int TL;
        private DataReadResult TM;

        private a(BaseImplementation.b<DataReadResult> var1);

        /* synthetic */ a(BaseImplementation.b var1,  var2);

        @Override
        public void a(DataReadResult var1);
    }

}

