/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.bk;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class bj
implements SafeParcelable {
    public static final bk CREATOR;
    public final int backgroundColor;
    public final int oH;
    public final int oI;
    public final int oJ;
    public final int oK;
    public final int oL;
    public final int oM;
    public final int oN;
    public final String oO;
    public final int oP;
    public final String oQ;
    public final int oR;
    public final int oS;
    public final String oT;
    public final int versionCode;

    static;

    bj(int var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9, String var10, int var11, String var12, int var13, int var14, String var15);

    public bj(SearchAdRequest var1);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

