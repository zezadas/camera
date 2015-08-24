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
public final class l
implements SafeParcelable {
    public static final Parcelable.Creator<l> CREATOR;
    private final int BR;
    long auK;
    long auL;

    static;

    l();

    l(int var1, long var2, long var4);

    @Override
    public int describeContents();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

