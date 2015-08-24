/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mm;

public class ml
implements SafeParcelable {
    public static final mm CREATOR = new mm();
    final int BR;
    private final String afz;
    private final String mTag;

    ml(int n, String string, String string2) {
        this.BR = n;
        this.afz = string;
        this.mTag = string2;
    }

    @Override
    public int describeContents() {
        mm mm = CREATOR;
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (!(object instanceof ml)) {
            return false;
        }
        object = (ml)object;
        if (!n.equal(this.afz, object.afz)) return false;
        if (!n.equal(this.mTag, object.mTag)) return false;
        return true;
    }

    public String getTag() {
        return this.mTag;
    }

    public int hashCode() {
        return n.hashCode(this.afz, this.mTag);
    }

    public String mk() {
        return this.afz;
    }

    public String toString() {
        return n.h(this).a("mPlaceId", this.afz).a("mTag", this.mTag).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        mm mm = CREATOR;
        mm.a(this, parcel, n);
    }
}

