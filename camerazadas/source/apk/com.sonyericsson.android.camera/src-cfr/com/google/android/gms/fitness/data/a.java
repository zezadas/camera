/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.b;
import com.google.android.gms.internal.kw;

public final class a
implements SafeParcelable {
    public static final Parcelable.Creator<a> CREATOR;
    public static final a Sw;
    private final int BR;
    private final String BZ;
    private final String Sx;
    private final String Sy;

    static {
        Sw = new a("com.google.android.gms", String.valueOf(6171000), null);
        CREATOR = new b();
    }

    a(int n, String string, String string2, String string3) {
        this.BR = n;
        this.BZ = o.i(string);
        this.Sx = "";
        this.Sy = string3;
    }

    public a(String string, String string2, String string3) {
        this(1, string, "", string3);
    }

    private boolean a(a a) {
        if (this.BZ.equals(a.BZ) && n.equal(this.Sx, a.Sx) && n.equal(this.Sy, a.Sy)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof a && this.a((a)object)) {
            return true;
        }
        return false;
    }

    public String getPackageName() {
        return this.BZ;
    }

    public String getVersion() {
        return this.Sx;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.BZ, this.Sx, this.Sy);
    }

    a iA() {
        return new a(kw.bt(this.BZ), kw.bt(this.Sx), kw.bt(this.Sy));
    }

    public String iz() {
        return this.Sy;
    }

    public String toString() {
        return String.format("Application{%s:%s:%s}", this.BZ, this.Sx, this.Sy);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }
}

