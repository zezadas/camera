/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class g
implements SafeParcelable {
    public static final Parcelable.Creator<g> CREATOR;
    private final int BR;
    int auD;
    String auE;
    double auF;
    String auG;
    long auH;
    int auI;

    static;

    g();

    g(int var1, int var2, String var3, double var4, String var6, long var7, int var9);

    @Override
    public int describeContents();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

