/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.CustomPropertyKey;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CustomProperty
implements SafeParcelable {
    public static final Parcelable.Creator<CustomProperty> CREATOR;
    final int BR;
    final CustomPropertyKey PJ;
    final String mValue;

    static;

    CustomProperty(int var1, CustomPropertyKey var2, String var3);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

