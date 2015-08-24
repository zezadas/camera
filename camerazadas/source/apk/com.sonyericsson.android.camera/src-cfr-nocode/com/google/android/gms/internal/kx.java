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
import com.google.android.gms.fitness.BleApi;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import com.google.android.gms.fitness.result.BleDevicesResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.lf;

/*
 * Exception performing whole class analysis ignored.
 */
public class kx
implements BleApi {
    public kx();

    @Override
    public PendingResult<Status> claimBleDevice(GoogleApiClient var1, BleDevice var2);

    @Override
    public PendingResult<Status> claimBleDevice(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<BleDevicesResult> listClaimedBleDevices(GoogleApiClient var1);

    @Override
    public PendingResult<Status> startBleScan(GoogleApiClient var1, StartBleScanRequest var2);

    @Override
    public PendingResult<Status> stopBleScan(GoogleApiClient var1, BleScanCallback var2);

    @Override
    public PendingResult<Status> unclaimBleDevice(GoogleApiClient var1, BleDevice var2);

    @Override
    public PendingResult<Status> unclaimBleDevice(GoogleApiClient var1, String var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends lf.a {
        private final BaseImplementation.b<BleDevicesResult> De;

        private a(BaseImplementation.b<BleDevicesResult> var1);

        /* synthetic */ a(BaseImplementation.b var1,  var2);

        @Override
        public void a(BleDevicesResult var1);
    }

}

