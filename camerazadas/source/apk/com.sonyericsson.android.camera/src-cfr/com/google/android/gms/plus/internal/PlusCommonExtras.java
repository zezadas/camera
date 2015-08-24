/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.plus.internal.f;

public class PlusCommonExtras
implements SafeParcelable {
    public static final f CREATOR;
    public static String TAG;
    private final int BR;
    private String alA;
    private String alB;

    static {
        TAG = "PlusCommonExtras";
        CREATOR = new f();
    }

    public PlusCommonExtras() {
        this.BR = 1;
        this.alA = "";
        this.alB = "";
    }

    PlusCommonExtras(int n, String string, String string2) {
        this.BR = n;
        this.alA = string;
        this.alB = string2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (!(object instanceof PlusCommonExtras)) {
            return false;
        }
        object = (PlusCommonExtras)object;
        if (this.BR != object.BR) return false;
        if (!n.equal(this.alA, object.alA)) return false;
        if (!n.equal(this.alB, object.alB)) return false;
        return true;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.BR, this.alA, this.alB);
    }

    public String ne() {
        return this.alA;
    }

    public String nf() {
        return this.alB;
    }

    public void o(Bundle bundle) {
        bundle.putByteArray("android.gms.plus.internal.PlusCommonExtras.extraPlusCommon", c.a(this));
    }

    public String toString() {
        return n.h(this).a("versionCode", this.BR).a("Gpsrc", this.alA).a("ClientCallingPackage", this.alB).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        f.a(this, parcel, n);
    }
}

