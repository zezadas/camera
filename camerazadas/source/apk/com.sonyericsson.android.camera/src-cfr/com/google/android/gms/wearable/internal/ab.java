/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.ac;
import com.google.android.gms.wearable.internal.ak;

public class ab
implements SafeParcelable {
    public static final Parcelable.Creator<ab> CREATOR = new ac();
    public final ak avC;
    public final int statusCode;
    public final int versionCode;

    ab(int n, int n2, ak ak) {
        this.versionCode = n;
        this.statusCode = n2;
        this.avC = ak;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ac.a(this, parcel, n);
    }
}

