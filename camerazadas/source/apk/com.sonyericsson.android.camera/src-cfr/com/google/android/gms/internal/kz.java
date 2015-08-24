/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
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
import com.google.android.gms.fitness.request.e;
import com.google.android.gms.fitness.result.DataReadResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.km;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kt;

public class kz
implements HistoryApi {
    @Override
    public PendingResult<Status> deleteData(GoogleApiClient googleApiClient, final DataDeleteRequest dataDeleteRequest) {
        return googleApiClient.a(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(dataDeleteRequest, (kt)b, string);
            }
        });
    }

    @Override
    public PendingResult<Status> insertData(GoogleApiClient googleApiClient, final DataSet dataSet) {
        return googleApiClient.a(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(new e.a().b(dataSet).jj(), (kt)b, string);
            }
        });
    }

    @Override
    public PendingResult<DataReadResult> readData(GoogleApiClient googleApiClient, final DataReadRequest dataReadRequest) {
        return googleApiClient.a(new kk.a<DataReadResult>(){

            @Override
            protected void a(kk kk) throws RemoteException {
                a a = new a(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(dataReadRequest, a, string);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.y(status);
            }

            protected DataReadResult y(Status status) {
                return DataReadResult.a(status, dataReadRequest);
            }
        });
    }

    private static class a
    extends km.a {
        private final BaseImplementation.b<DataReadResult> De;
        private int TL = 0;
        private DataReadResult TM = null;

        private a(BaseImplementation.b<DataReadResult> b) {
            this.De = b;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void a(DataReadResult dataReadResult) {
            synchronized (this) {
                Log.v("Fitness", "Received batch result");
                if (this.TM == null) {
                    this.TM = dataReadResult;
                } else {
                    this.TM.b(dataReadResult);
                }
                ++this.TL;
                if (this.TL == this.TM.jH()) {
                    this.De.b(this.TM);
                }
                return;
            }
        }
    }

}

