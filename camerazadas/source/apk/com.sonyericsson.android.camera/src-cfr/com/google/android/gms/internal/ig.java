/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ih;
import com.google.android.gms.internal.ik;

public class ig
implements SafeParcelable {
    public static final Parcelable.Creator<ig> CREATOR = new ih();
    private final int BR;
    private String Gn;

    public ig() {
        this(1, null);
    }

    ig(int n, String string) {
        this.BR = n;
        this.Gn = string;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof ig)) {
            return false;
        }
        object = (ig)object;
        return ik.a(this.Gn, object.Gn);
    }

    public String fy() {
        return this.Gn;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.Gn);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ih.a(this, parcel, n);
    }
}

