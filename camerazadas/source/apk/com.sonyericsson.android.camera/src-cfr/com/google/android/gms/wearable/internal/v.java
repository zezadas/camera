/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.ak;
import com.google.android.gms.wearable.internal.w;
import java.util.List;

public class v
implements SafeParcelable {
    public static final Parcelable.Creator<v> CREATOR = new w();
    public final List<ak> avz;
    public final int statusCode;
    public final int versionCode;

    v(int n, int n2, List<ak> list) {
        this.versionCode = n;
        this.statusCode = n2;
        this.avz = list;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        w.a(this, parcel, n);
    }
}

