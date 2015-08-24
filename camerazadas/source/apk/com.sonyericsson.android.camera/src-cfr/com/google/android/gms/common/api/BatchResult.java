/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import com.google.android.gms.common.api.BatchResultToken;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.o;
import java.util.concurrent.TimeUnit;

public final class BatchResult
implements Result {
    private final Status CM;
    private final PendingResult<?>[] IE;

    BatchResult(Status status, PendingResult<?>[] arrpendingResult) {
        this.CM = status;
        this.IE = arrpendingResult;
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    /*
     * Enabled aggressive block sorting
     */
    public <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        boolean bl = batchResultToken.mId < this.IE.length;
        o.b(bl, (Object)"The result token does not belong to this batch");
        return (R)this.IE[batchResultToken.mId].await(0, TimeUnit.MILLISECONDS);
    }
}

