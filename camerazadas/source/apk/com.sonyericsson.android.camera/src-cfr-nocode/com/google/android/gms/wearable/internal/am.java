/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class am
implements SafeParcelable {
    public static final Parcelable.Creator<am> CREATOR;
    public final long avN;
    public final String label;
    public final String packageName;
    public final int versionCode;

    static;

    am(int var1, String var2, String var3, long var4);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

