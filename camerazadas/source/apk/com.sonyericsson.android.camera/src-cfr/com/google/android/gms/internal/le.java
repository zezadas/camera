/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.BleApi;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import com.google.android.gms.fitness.result.BleDevicesResult;
import com.google.android.gms.internal.ku;

public class le
implements BleApi {
    private static final Status Ue = new Status(5007);

    @Override
    public PendingResult<Status> claimBleDevice(GoogleApiClient googleApiClient, BleDevice bleDevice) {
        return new ku<Status>(Ue);
    }

    @Override
    public PendingResult<Status> claimBleDevice(GoogleApiClient googleApiClient, String string) {
        return new ku<Status>(Ue);
    }

    @Override
    public PendingResult<BleDevicesResult> listClaimedBleDevices(GoogleApiClient googleApiClient) {
        return new ku<BleDevicesResult>(BleDevicesResult.D(Ue));
    }

    @Override
    public PendingResult<Status> startBleScan(GoogleApiClient googleApiClient, StartBleScanRequest startBleScanRequest) {
        return new ku<Status>(Ue);
    }

    @Override
    public PendingResult<Status> stopBleScan(GoogleApiClient googleApiClient, BleScanCallback bleScanCallback) {
        return new ku<Status>(Ue);
    }

    @Override
    public PendingResult<Status> unclaimBleDevice(GoogleApiClient googleApiClient, BleDevice bleDevice) {
        return new ku<Status>(Ue);
    }

    @Override
    public PendingResult<Status> unclaimBleDevice(GoogleApiClient googleApiClient, String string) {
        return new ku<Status>(Ue);
    }
}

