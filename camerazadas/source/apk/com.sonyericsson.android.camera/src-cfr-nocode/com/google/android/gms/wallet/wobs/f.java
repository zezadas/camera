/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.g;
import com.google.android.gms.wallet.wobs.l;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class f
implements SafeParcelable {
    public static final Parcelable.Creator<f> CREATOR;
    private final int BR;
    l atc;
    g auC;
    String label;
    String type;

    static;

    f();

    f(int var1, String var2, g var3, String var4, l var5);

    @Override
    public int describeContents();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

