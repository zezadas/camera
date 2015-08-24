/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.am;
import com.google.android.gms.wearable.internal.av;
import java.util.List;

public class au
implements SafeParcelable {
    public static final Parcelable.Creator<au> CREATOR = new av();
    public final long avN;
    public final List<am> avP;
    public final int statusCode;
    public final int versionCode;

    au(int n, int n2, long l, List<am> list) {
        this.versionCode = n;
        this.statusCode = n2;
        this.avN = l;
        this.avP = list;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        av.a(this, parcel, n);
    }
}

