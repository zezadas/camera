/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.internal.l;

public class Operator
implements SafeParcelable {
    public static final Parcelable.Creator<Operator> CREATOR = new l();
    public static final Operator QZ = new Operator("=");
    public static final Operator Ra = new Operator("<");
    public static final Operator Rb = new Operator("<=");
    public static final Operator Rc = new Operator(">");
    public static final Operator Rd = new Operator(">=");
    public static final Operator Re = new Operator("and");
    public static final Operator Rf = new Operator("or");
    public static final Operator Rg = new Operator("not");
    public static final Operator Rh = new Operator("contains");
    final int BR;
    final String mTag;

    Operator(int n, String string) {
        this.BR = n;
        this.mTag = string;
    }

    private Operator(String string) {
        this(1, string);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null) {
            return false;
        }
        if (this.getClass() != object.getClass()) {
            return false;
        }
        object = (Operator)object;
        if (this.mTag == null) {
            if (object.mTag == null) return true;
            return false;
        }
        if (!this.mTag.equals(object.mTag)) return false;
        return true;
    }

    public String getTag() {
        return this.mTag;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int hashCode() {
        int n;
        if (this.mTag == null) {
            n = 0;
            do {
                return n + 31;
                break;
            } while (true);
        }
        n = this.mTag.hashCode();
        return n + 31;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        l.a(this, parcel, n);
    }
}

