/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hj;
import com.google.android.gms.internal.hp;
import com.google.android.gms.internal.hq;

public class hi
implements SafeParcelable {
    public static final hj CREATOR;
    public static final int Cc;
    private static final hq Cd;
    final int BR;
    public final String Ce;
    final hq Cf;
    public final int Cg;
    public final byte[] Ch;

    static {
        Cc = Integer.parseInt("-1");
        CREATOR = new hj();
        Cd = new hq.a("SsbContext").E(true).at("blob").fm();
    }

    /*
     * Enabled aggressive block sorting
     */
    hi(int n, String string, hq hq, int n2, byte[] arrby) {
        boolean bl = n2 == Cc || hp.O(n2) != null;
        o.b(bl, (Object)("Invalid section type " + n2));
        this.BR = n;
        this.Ce = string;
        this.Cf = hq;
        this.Cg = n2;
        this.Ch = arrby;
        string = this.fk();
        if (string != null) {
            throw new IllegalArgumentException(string);
        }
    }

    public hi(String string, hq hq) {
        this(1, string, hq, Cc, null);
    }

    public hi(String string, hq hq, String string2) {
        this(1, string, hq, hp.as(string2), null);
    }

    public hi(byte[] arrby, hq hq) {
        this(1, null, hq, Cc, arrby);
    }

    @Override
    public int describeContents() {
        hj hj = CREATOR;
        return 0;
    }

    public String fk() {
        if (this.Cg != Cc && hp.O(this.Cg) == null) {
            return "Invalid section type " + this.Cg;
        }
        if (this.Ce != null && this.Ch != null) {
            return "Both content and blobContent set";
        }
        return null;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        hj hj = CREATOR;
        hj.a(this, parcel, n);
    }
}

