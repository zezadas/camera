/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.l;
import com.google.android.gms.wallet.wobs.n;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class p
implements SafeParcelable {
    public static final Parcelable.Creator<p> CREATOR;
    private final int BR;
    String auJ;
    l auN;
    n auO;
    n auP;
    String tG;

    static;

    p();

    p(int var1, String var2, String var3, l var4, n var5, n var6);

    @Override
    public int describeContents();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

