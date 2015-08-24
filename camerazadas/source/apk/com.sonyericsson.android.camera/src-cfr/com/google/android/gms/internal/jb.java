/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jc;

public class jb
implements SafeParcelable {
    public static final jc CREATOR = new jc();
    final int BR;
    public final String Mq;
    public final int Mr;

    public jb(int n, String string, int n2) {
        this.BR = n;
        this.Mq = string;
        this.Mr = n2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        jc.a(this, parcel, n);
    }
}

