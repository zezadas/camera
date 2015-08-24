/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.my;
import java.util.Locale;

public class mx
implements SafeParcelable {
    public static final my CREATOR = new my();
    public final String Dv;
    public final String aij;
    public final String aik;
    public final int versionCode;

    public mx(int n, String string, String string2, String string3) {
        this.versionCode = n;
        this.aij = string;
        this.aik = string2;
        this.Dv = string3;
    }

    public mx(String string, Locale locale, String string2) {
        this.versionCode = 0;
        this.aij = string;
        this.aik = locale.toString();
        this.Dv = string2;
    }

    @Override
    public int describeContents() {
        my my = CREATOR;
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
        if (object == null) return false;
        if (!(object instanceof mx)) {
            return false;
        }
        object = (mx)object;
        if (!this.aik.equals(object.aik)) return false;
        if (!this.aij.equals(object.aij)) return false;
        if (n.equal(this.Dv, object.Dv)) return true;
        return false;
    }

    public int hashCode() {
        return n.hashCode(this.aij, this.aik, this.Dv);
    }

    public String toString() {
        return n.h(this).a("clientPackageName", this.aij).a("locale", this.aik).a("accountName", this.Dv).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        my my = CREATOR;
        my.a(this, parcel, n);
    }
}

