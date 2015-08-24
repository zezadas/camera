/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.appstate;

import com.google.android.gms.appstate.AppState;
import com.google.android.gms.common.internal.n;

public final class a
implements AppState {
    private final int CO;
    private final String CP;
    private final byte[] CQ;
    private final boolean CR;
    private final String CS;
    private final byte[] CT;

    public a(AppState appState) {
        this.CO = appState.getKey();
        this.CP = appState.getLocalVersion();
        this.CQ = appState.getLocalData();
        this.CR = appState.hasConflict();
        this.CS = appState.getConflictVersion();
        this.CT = appState.getConflictData();
    }

    static int a(AppState appState) {
        return n.hashCode(appState.getKey(), appState.getLocalVersion(), appState.getLocalData(), appState.hasConflict(), appState.getConflictVersion(), appState.getConflictData());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(AppState appState, Object object) {
        boolean bl = true;
        if (!(object instanceof AppState)) {
            return false;
        }
        boolean bl2 = bl;
        if (appState == object) return bl2;
        if (!n.equal((object = (AppState)object).getKey(), appState.getKey())) return false;
        if (!n.equal(object.getLocalVersion(), appState.getLocalVersion())) return false;
        if (!n.equal(object.getLocalData(), appState.getLocalData())) return false;
        if (!n.equal(object.hasConflict(), appState.hasConflict())) return false;
        if (!n.equal(object.getConflictVersion(), appState.getConflictVersion())) return false;
        bl2 = bl;
        if (n.equal(object.getConflictData(), appState.getConflictData())) return bl2;
        return false;
    }

    static String b(AppState appState) {
        return n.h(appState).a("Key", appState.getKey()).a("LocalVersion", appState.getLocalVersion()).a("LocalData", appState.getLocalData()).a("HasConflict", appState.hasConflict()).a("ConflictVersion", appState.getConflictVersion()).a("ConflictData", appState.getConflictData()).toString();
    }

    public boolean equals(Object object) {
        return a.a(this, object);
    }

    public AppState fo() {
        return this;
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.fo();
    }

    @Override
    public byte[] getConflictData() {
        return this.CT;
    }

    @Override
    public String getConflictVersion() {
        return this.CS;
    }

    @Override
    public int getKey() {
        return this.CO;
    }

    @Override
    public byte[] getLocalData() {
        return this.CQ;
    }

    @Override
    public String getLocalVersion() {
        return this.CP;
    }

    @Override
    public boolean hasConflict() {
        return this.CR;
    }

    public int hashCode() {
        return a.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return a.b(this);
    }
}

