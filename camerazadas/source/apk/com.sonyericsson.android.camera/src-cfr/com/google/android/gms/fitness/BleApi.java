/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import com.google.android.gms.fitness.result.BleDevicesResult;

public interface BleApi {
    public PendingResult<Status> claimBleDevice(GoogleApiClient var1, BleDevice var2);

    public PendingResult<Status> claimBleDevice(GoogleApiClient var1, String var2);

    public PendingResult<BleDevicesResult> listClaimedBleDevices(GoogleApiClient var1);

    public PendingResult<Status> startBleScan(GoogleApiClient var1, StartBleScanRequest var2);

    public PendingResult<Status> stopBleScan(GoogleApiClient var1, BleScanCallback var2);

    public PendingResult<Status> unclaimBleDevice(GoogleApiClient var1, BleDevice var2);

    public PendingResult<Status> unclaimBleDevice(GoogleApiClient var1, String var2);
}

