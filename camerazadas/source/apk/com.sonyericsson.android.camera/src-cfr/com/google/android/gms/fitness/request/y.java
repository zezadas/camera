/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.request.z;

public class y
implements SafeParcelable {
    public static final Parcelable.Creator<y> CREATOR = new z();
    private final int BR;
    private final String Tq;
    private final String mName;

    y(int n, String string, String string2) {
        this.BR = n;
        this.mName = string;
        this.Tq = string2;
    }

    private y(a a) {
        this.BR = 1;
        this.mName = a.mName;
        this.Tq = a.Tq;
    }

    private boolean a(y y) {
        if (n.equal(this.mName, y.mName) && n.equal(this.Tq, y.Tq)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof y && this.a((y)object)) {
            return true;
        }
        return false;
    }

    public String getIdentifier() {
        return this.Tq;
    }

    public String getName() {
        return this.mName;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.mName, this.Tq);
    }

    public String toString() {
        return n.h(this).a("name", this.mName).a("identifier", this.Tq).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        z.a(this, parcel, n);
    }

    public static class a {
        private String Tq;
        private String mName;

        public a bu(String string) {
            this.mName = string;
            return this;
        }

        public a bv(String string) {
            this.Tq = string;
            return this;
        }

        public y jB() {
            return new y(this);
        }
    }

}

