/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;

public final class BatchResultToken<R extends Result> {
    protected final int mId;

    BatchResultToken(int n) {
        this.mId = n;
    }
}

