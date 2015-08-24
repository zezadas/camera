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
import com.google.android.gms.fitness.ConfigApi;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.request.j;
import com.google.android.gms.fitness.result.DataTypeResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.ko;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kt;

public class ky
implements ConfigApi {
    @Override
    public PendingResult<DataTypeResult> createCustomDataType(GoogleApiClient googleApiClient, final DataTypeCreateRequest dataTypeCreateRequest) {
        return googleApiClient.b(new kk.a<DataTypeResult>(){

            @Override
            protected void a(kk kk) throws RemoteException {
                a a = new a(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(dataTypeCreateRequest, (ko)a, string);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.x(status);
            }

            protected DataTypeResult x(Status status) {
                return DataTypeResult.F(status);
            }
        });
    }

    @Override
    public PendingResult<Status> disableFit(GoogleApiClient googleApiClient) {
        return googleApiClient.b(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(b, string);
            }
        });
    }

    @Override
    public PendingResult<DataTypeResult> readDataType(GoogleApiClient googleApiClient, String string) {
        return googleApiClient.a(new kk.a<DataTypeResult>(new j(string)){
            final /* synthetic */ j TG;

            @Override
            protected void a(kk kk) throws RemoteException {
                a a = new a(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(this.TG, (ko)a, string);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.x(status);
            }

            protected DataTypeResult x(Status status) {
                return DataTypeResult.F(status);
            }
        });
    }

    private static class a
    extends ko.a {
        private final BaseImplementation.b<DataTypeResult> De;

        private a(BaseImplementation.b<DataTypeResult> b) {
            this.De = b;
        }

        @Override
        public void a(DataTypeResult dataTypeResult) {
            this.De.b(dataTypeResult);
        }
    }

}

