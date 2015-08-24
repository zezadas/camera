/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.d;

public class c
implements SafeParcelable {
    public static final Parcelable.Creator<c> CREATOR = new d();
    final int BR;
    private final int FD;
    private final String Sz;
    private final int auS;
    private final boolean auT;
    private boolean auU;
    private String auV;
    private final String mName;

    c(int n, String string, String string2, int n2, int n3, boolean bl, boolean bl2, String string3) {
        this.BR = n;
        this.mName = string;
        this.Sz = string2;
        this.FD = n2;
        this.auS = n3;
        this.auT = bl;
        this.auU = bl2;
        this.auV = string3;
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
        if (!(object instanceof c)) {
            return false;
        }
        object = (c)object;
        if (!n.equal(this.BR, object.BR)) return false;
        if (!n.equal(this.mName, object.mName)) return false;
        if (!n.equal(this.Sz, object.Sz)) return false;
        if (!n.equal(this.FD, object.FD)) return false;
        if (!n.equal(this.auS, object.auS)) return false;
        if (!n.equal(this.auT, object.auT)) return false;
        return true;
    }

    public String getAddress() {
        return this.Sz;
    }

    public String getName() {
        return this.mName;
    }

    public int getRole() {
        return this.auS;
    }

    public int getType() {
        return this.FD;
    }

    public int hashCode() {
        return n.hashCode(this.BR, this.mName, this.Sz, this.FD, this.auS, this.auT);
    }

    public boolean isConnected() {
        return this.auU;
    }

    public boolean isEnabled() {
        return this.auT;
    }

    public String pS() {
        return this.auV;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ConnectionConfiguration[ ");
        stringBuilder.append("mName=" + this.mName);
        stringBuilder.append(", mAddress=" + this.Sz);
        stringBuilder.append(", mType=" + this.FD);
        stringBuilder.append(", mRole=" + this.auS);
        stringBuilder.append(", mEnabled=" + this.auT);
        stringBuilder.append(", mIsConnected=" + this.auU);
        stringBuilder.append(", mEnabled=" + this.auV);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        d.a(this, parcel, n);
    }
}

