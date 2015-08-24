/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.ak;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ab
implements SafeParcelable {
    public static final Parcelable.Creator<ab> CREATOR;
    public final ak avC;
    public final int statusCode;
    public final int versionCode;

    static;

    ab(int var1, int var2, ak var3);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

