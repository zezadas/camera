/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hh;

public class hg
implements SafeParcelable {
    public static final hh CREATOR = new hh();
    final int BR;
    final String BZ;
    final String Ca;
    final String Cb;

    hg(int n, String string, String string2, String string3) {
        this.BR = n;
        this.BZ = string;
        this.Ca = string2;
        this.Cb = string3;
    }

    public hg(String string, String string2, String string3) {
        this(1, string, string2, string3);
    }

    @Override
    public int describeContents() {
        hh hh = CREATOR;
        return 0;
    }

    public String toString() {
        return String.format("DocumentId[packageName=%s, corpusName=%s, uri=%s]", this.BZ, this.Ca, this.Cb);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        hh hh = CREATOR;
        hh.a(this, parcel, n);
    }
}

