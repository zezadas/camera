/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.request;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.request.GameRequestSummary;
import com.google.android.gms.games.request.GameRequestSummaryRef;

public final class GameRequestSummaryBuffer
extends DataBuffer<GameRequestSummary> {
    public GameRequestSummary dW(int n) {
        return new GameRequestSummaryRef(this.II, n);
    }

    @Override
    public /* synthetic */ Object get(int n) {
        return this.dW(n);
    }
}

