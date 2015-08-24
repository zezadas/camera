/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.appstate;

import com.google.android.gms.appstate.AppState;

/*
 * Exception performing whole class analysis.
 */
public final class a
implements AppState {
    private final int CO;
    private final String CP;
    private final byte[] CQ;
    private final boolean CR;
    private final String CS;
    private final byte[] CT;

    public a(AppState var1);

    static int a(AppState var0);

    static boolean a(AppState var0, Object var1);

    static String b(AppState var0);

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

    public int hashCode();

    @Override
    public boolean isDataValid();

    public String toString();
}

