/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.aa;

public class z
implements SafeParcelable {
    public static final Parcelable.Creator<z> CREATOR = new aa();
    public final ParcelFileDescriptor avB;
    public final int statusCode;
    public final int versionCode;

    z(int n, int n2, ParcelFileDescriptor parcelFileDescriptor) {
        this.versionCode = n;
        this.statusCode = n2;
        this.avB = parcelFileDescriptor;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        aa.a(this, parcel, n | 1);
    }
}

