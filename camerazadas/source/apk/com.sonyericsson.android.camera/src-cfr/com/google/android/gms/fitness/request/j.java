/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.request.k;

public class j
implements SafeParcelable {
    public static final Parcelable.Creator<j> CREATOR = new k();
    private final int BR;
    private final String mName;

    j(int n, String string) {
        this.BR = n;
        this.mName = string;
    }

    public j(String string) {
        this.BR = 1;
        this.mName = string;
    }

    private boolean a(j j) {
        return n.equal(this.mName, j.mName);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof j && this.a((j)object)) {
            return true;
        }
        return false;
    }

    public String getName() {
        return this.mName;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.mName);
    }

    public String toString() {
        return n.h(this).a("name", this.mName).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        k.a(this, parcel, n);
    }
}

