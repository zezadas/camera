/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.appstate;

import com.google.android.gms.appstate.AppState;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class b
extends d
implements AppState {
    b(DataHolder var1, int var2);

    @Override
    public boolean equals(Object var1);

    public AppState fo();

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public byte[] getConflictData();

    @Override
    public String getConflictVersion();

    @Override
    public int getKey();

    @Override
    public byte[] getLocalData();

    @Override
    public String getLocalVersion();

    @Override
    public boolean hasConflict();

    @Override
    public int hashCode();

    public String toString();
}

