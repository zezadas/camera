/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.an;

public class am
implements SafeParcelable {
    public static final Parcelable.Creator<am> CREATOR = new an();
    public final long avN;
    public final String label;
    public final String packageName;
    public final int versionCode;

    am(int n, String string, String string2, long l) {
        this.versionCode = n;
        this.packageName = string;
        this.label = string2;
        this.avN = l;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        an.a(this, parcel, n);
    }
}

