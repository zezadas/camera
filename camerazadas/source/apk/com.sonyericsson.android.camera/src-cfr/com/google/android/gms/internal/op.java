/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oq;

public final class op
implements SafeParcelable {
    public static final Parcelable.Creator<op> CREATOR = new oq();
    private final int BR;
    String[] atO;
    byte[][] atP;

    op() {
        this(1, new String[0], new byte[0][]);
    }

    op(int n, String[] arrstring, byte[][] arrby) {
        this.BR = n;
        this.atO = arrstring;
        this.atP = arrby;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        oq.a(this, parcel, n);
    }
}

