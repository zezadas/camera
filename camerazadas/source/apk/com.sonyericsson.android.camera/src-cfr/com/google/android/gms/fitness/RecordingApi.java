/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.fitness.result.ListSubscriptionsResult;

public interface RecordingApi {
    public PendingResult<ListSubscriptionsResult> listSubscriptions(GoogleApiClient var1);

    public PendingResult<ListSubscriptionsResult> listSubscriptions(GoogleApiClient var1, DataType var2);

    public PendingResult<Status> subscribe(GoogleApiClient var1, DataSource var2);

    public PendingResult<Status> subscribe(GoogleApiClient var1, DataType var2);

    public PendingResult<Status> unsubscribe(GoogleApiClient var1, DataSource var2);

    public PendingResult<Status> unsubscribe(GoogleApiClient var1, DataType var2);

    public PendingResult<Status> unsubscribe(GoogleApiClient var1, Subscription var2);
}

