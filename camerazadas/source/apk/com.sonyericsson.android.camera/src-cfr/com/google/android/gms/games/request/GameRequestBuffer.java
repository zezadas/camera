/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.request;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestRef;

public final class GameRequestBuffer
extends g<GameRequest> {
    public GameRequestBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override
    protected /* synthetic */ Object f(int n, int n2) {
        return this.n(n, n2);
    }

    @Override
    protected String gD() {
        return "external_request_id";
    }

    protected GameRequest n(int n, int n2) {
        return new GameRequestRef(this.II, n, n2);
    }
}

