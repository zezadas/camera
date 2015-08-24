/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.j;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class h
implements SafeParcelable {
    public static final j CREATOR;
    private final int BR;
    private final String Dd;
    private final String[] alD;
    private final String[] alE;
    private final String[] alF;
    private final String alG;
    private final String alH;
    private final String alI;
    private final String alJ;
    private final PlusCommonExtras alK;

    static;

    h(int var1, String var2, String[] var3, String[] var4, String[] var5, String var6, String var7, String var8, String var9, PlusCommonExtras var10);

    public h(String var1, String[] var2, String[] var3, String[] var4, String var5, String var6, String var7, PlusCommonExtras var8);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getAccountName();

    public int getVersionCode();

    public int hashCode();

    public String[] ng();

    public String[] nh();

    public String[] ni();

    public String nj();

    public String nk();

    public String nl();

    public String nm();

    public PlusCommonExtras nn();

    public Bundle no();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

