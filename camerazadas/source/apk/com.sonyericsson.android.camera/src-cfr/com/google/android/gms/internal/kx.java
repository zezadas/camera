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
import com.google.android.gms.fitness.BleApi;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import com.google.android.gms.fitness.request.ad;
import com.google.android.gms.fitness.request.ah;
import com.google.android.gms.fitness.request.b;
import com.google.android.gms.fitness.result.BleDevicesResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.lf;

public class kx
implements BleApi {
    @Override
    public PendingResult<Status> claimBleDevice(GoogleApiClient googleApiClient, final BleDevice bleDevice) {
        return googleApiClient.b(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(new b(bleDevice), (kt)b, string);
            }
        });
    }

    @Override
    public PendingResult<Status> claimBleDevice(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.b(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string2 = kk.getContext().getPackageName();
                kk.jb().a(new b(string), (kt)b, string2);
            }
        });
    }

    @Override
    public PendingResult<BleDevicesResult> listClaimedBleDevices(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new kk.a<BleDevicesResult>(){

            @Override
            protected void a(kk kk) throws RemoteException {
                a a = new a(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(a, string);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.w(status);
            }

            protected BleDevicesResult w(Status status) {
                return BleDevicesResult.D(status);
            }
        });
    }

    @Override
    public PendingResult<Status> startBleScan(GoogleApiClient googleApiClient, final StartBleScanRequest startBleScanRequest) {
        return googleApiClient.a(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(startBleScanRequest, (kt)b, string);
            }
        });
    }

    @Override
    public PendingResult<Status> stopBleScan(GoogleApiClient googleApiClient, final BleScanCallback bleScanCallback) {
        return googleApiClient.a(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string = kk.getContext().getPackageName();
                ad ad = new ad(bleScanCallback);
                kk.jb().a(ad, (kt)b, string);
            }
        });
    }

    @Override
    public PendingResult<Status> unclaimBleDevice(GoogleApiClient googleApiClient, BleDevice bleDevice) {
        return this.unclaimBleDevice(googleApiClient, bleDevice.getAddress());
    }

    @Override
    public PendingResult<Status> unclaimBleDevice(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.b(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string2 = kk.getContext().getPackageName();
                kk.jb().a(new ah(string), (kt)b, string2);
            }
        });
    }

    private static class a
    extends lf.a {
        private final BaseImplementation.b<BleDevicesResult> De;

        private a(BaseImplementation.b<BleDevicesResult> b) {
            this.De = b;
        }

        @Override
        public void a(BleDevicesResult bleDevicesResult) {
            this.De.b(bleDevicesResult);
        }
    }

}

