/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.b;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class d
implements SafeParcelable {
    public static final Parcelable.Creator<d> CREATOR;
    private final int BR;
    String auA;
    ArrayList<b> auB;
    String auz;

    static;

    d();

    d(int var1, String var2, String var3, ArrayList<b> var4);

    @Override
    public int describeContents();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

