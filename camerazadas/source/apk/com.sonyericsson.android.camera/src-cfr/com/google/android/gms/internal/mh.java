/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mi;
import com.google.android.gms.internal.mj;

public final class mh
implements SafeParcelable {
    public static final mi CREATOR = new mi();
    private final int BR;
    private final int aeh;
    private final int afp;
    private final mj afq;

    mh(int n, int n2, int n3, mj mj) {
        this.BR = n;
        this.aeh = n2;
        this.afp = n3;
        this.afq = mj;
    }

    @Override
    public int describeContents() {
        mi mi = CREATOR;
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof mh)) {
            return false;
        }
        object = (mh)object;
        if (this.aeh != object.aeh) return false;
        if (this.afp != object.afp) return false;
        if (this.afq.equals(object.afq)) return true;
        return false;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.aeh, this.afp);
    }

    public int mc() {
        return this.aeh;
    }

    public int mg() {
        return this.afp;
    }

    public mj mh() {
        return this.afq;
    }

    public String toString() {
        return n.h(this).a("transitionTypes", this.aeh).a("loiteringTimeMillis", this.afp).a("placeFilter", this.afq).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        mi mi = CREATOR;
        mi.a(this, parcel, n);
    }
}

