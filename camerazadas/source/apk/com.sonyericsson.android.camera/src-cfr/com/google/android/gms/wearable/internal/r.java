/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.c;
import com.google.android.gms.wearable.internal.s;

@Deprecated
public class r
implements SafeParcelable {
    public static final Parcelable.Creator<r> CREATOR = new s();
    public final c avx;
    public final int statusCode;
    public final int versionCode;

    r(int n, int n2, c c) {
        this.versionCode = n;
        this.statusCode = n2;
        this.avx = c;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        s.a(this, parcel, n);
    }
}

