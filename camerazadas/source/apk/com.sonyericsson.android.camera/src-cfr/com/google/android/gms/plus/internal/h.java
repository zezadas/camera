/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.j;
import java.util.Arrays;

public class h
implements SafeParcelable {
    public static final j CREATOR = new j();
    private final int BR;
    private final String Dd;
    private final String[] alD;
    private final String[] alE;
    private final String[] alF;
    private final String alG;
    private final String alH;
    private final String alI;
    private final String alJ;
    private final PlusCommonExtras alK;

    h(int n, String string, String[] arrstring, String[] arrstring2, String[] arrstring3, String string2, String string3, String string4, String string5, PlusCommonExtras plusCommonExtras) {
        this.BR = n;
        this.Dd = string;
        this.alD = arrstring;
        this.alE = arrstring2;
        this.alF = arrstring3;
        this.alG = string2;
        this.alH = string3;
        this.alI = string4;
        this.alJ = string5;
        this.alK = plusCommonExtras;
    }

    public h(String string, String[] arrstring, String[] arrstring2, String[] arrstring3, String string2, String string3, String string4, PlusCommonExtras plusCommonExtras) {
        this.BR = 1;
        this.Dd = string;
        this.alD = arrstring;
        this.alE = arrstring2;
        this.alF = arrstring3;
        this.alG = string2;
        this.alH = string3;
        this.alI = string4;
        this.alJ = null;
        this.alK = plusCommonExtras;
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
        if (!(object instanceof h)) {
            return false;
        }
        object = (h)object;
        if (this.BR != object.BR) return false;
        if (!n.equal(this.Dd, object.Dd)) return false;
        if (!Arrays.equals(this.alD, object.alD)) return false;
        if (!Arrays.equals(this.alE, object.alE)) return false;
        if (!Arrays.equals(this.alF, object.alF)) return false;
        if (!n.equal(this.alG, object.alG)) return false;
        if (!n.equal(this.alH, object.alH)) return false;
        if (!n.equal(this.alI, object.alI)) return false;
        if (!n.equal(this.alJ, object.alJ)) return false;
        if (!n.equal(this.alK, object.alK)) return false;
        return true;
    }

    public String getAccountName() {
        return this.Dd;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.BR, this.Dd, this.alD, this.alE, this.alF, this.alG, this.alH, this.alI, this.alJ, this.alK);
    }

    public String[] ng() {
        return this.alD;
    }

    public String[] nh() {
        return this.alE;
    }

    public String[] ni() {
        return this.alF;
    }

    public String nj() {
        return this.alG;
    }

    public String nk() {
        return this.alH;
    }

    public String nl() {
        return this.alI;
    }

    public String nm() {
        return this.alJ;
    }

    public PlusCommonExtras nn() {
        return this.alK;
    }

    public Bundle no() {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(PlusCommonExtras.class.getClassLoader());
        this.alK.o(bundle);
        return bundle;
    }

    public String toString() {
        return n.h(this).a("versionCode", this.BR).a("accountName", this.Dd).a("requestedScopes", this.alD).a("visibleActivities", this.alE).a("requiredFeatures", this.alF).a("packageNameForAuth", this.alG).a("callingPackageName", this.alH).a("applicationName", this.alI).a("extra", this.alK.toString()).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        j.a(this, parcel, n);
    }
}

