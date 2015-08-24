/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.appstate;

import com.google.android.gms.appstate.AppState;
import com.google.android.gms.appstate.a;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class b
extends d
implements AppState {
    b(DataHolder dataHolder, int n) {
        super(dataHolder, n);
    }

    @Override
    public boolean equals(Object object) {
        return a.a(this, object);
    }

    public AppState fo() {
        return new a(this);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.fo();
    }

    @Override
    public byte[] getConflictData() {
        return this.getByteArray("conflict_data");
    }

    @Override
    public String getConflictVersion() {
        return this.getString("conflict_version");
    }

    @Override
    public int getKey() {
        return this.getInteger("key");
    }

    @Override
    public byte[] getLocalData() {
        return this.getByteArray("local_data");
    }

    @Override
    public String getLocalVersion() {
        return this.getString("local_version");
    }

    @Override
    public boolean hasConflict() {
        if (!this.aS("conflict_version")) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        return a.a(this);
    }

    public String toString() {
        return a.b(this);
    }
}

