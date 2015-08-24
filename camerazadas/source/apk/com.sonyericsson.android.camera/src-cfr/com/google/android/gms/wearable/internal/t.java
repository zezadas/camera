/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.c;
import com.google.android.gms.wearable.internal.u;

public class t
implements SafeParcelable {
    public static final Parcelable.Creator<t> CREATOR = new u();
    public final c[] avy;
    public final int statusCode;
    public final int versionCode;

    t(int n, int n2, c[] arrc) {
        this.versionCode = n;
        this.statusCode = n2;
        this.avy = arrc;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        u.a(this, parcel, n);
    }
}

