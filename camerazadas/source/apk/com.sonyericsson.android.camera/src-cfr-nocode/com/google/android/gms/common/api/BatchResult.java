/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import com.google.android.gms.common.api.BatchResultToken;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/*
 * Exception performing whole class analysis.
 */
public final class BatchResult
implements Result {
    private final Status CM;
    private final PendingResult<?>[] IE;

    BatchResult(Status var1, PendingResult<?>[] var2);

    @Override
    public Status getStatus();

    public <R extends Result> R take(BatchResultToken<R> var1);
}

