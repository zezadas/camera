/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.internal.c;

public class CustomProperty
implements SafeParcelable {
    public static final Parcelable.Creator<CustomProperty> CREATOR = new c();
    final int BR;
    final CustomPropertyKey PJ;
    final String mValue;

    CustomProperty(int n, CustomPropertyKey customPropertyKey, String string) {
        this.BR = n;
        o.b(customPropertyKey, (Object)"key");
        this.PJ = customPropertyKey;
        this.mValue = string;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }
}

