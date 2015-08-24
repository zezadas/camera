/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.result.DataTypeResult;

public interface ConfigApi {
    public PendingResult<DataTypeResult> createCustomDataType(GoogleApiClient var1, DataTypeCreateRequest var2);

    public PendingResult<Status> disableFit(GoogleApiClient var1);

    public PendingResult<DataTypeResult> readDataType(GoogleApiClient var1, String var2);
}

