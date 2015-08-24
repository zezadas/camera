/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.h;

public class UserMetadata
implements SafeParcelable {
    public static final Parcelable.Creator<UserMetadata> CREATOR = new h();
    final int BR;
    final String NG;
    final String NH;
    final String NI;
    final boolean NJ;
    final String NK;

    UserMetadata(int n, String string, String string2, String string3, boolean bl, String string4) {
        this.BR = n;
        this.NG = string;
        this.NH = string2;
        this.NI = string3;
        this.NJ = bl;
        this.NK = string4;
    }

    public UserMetadata(String string, String string2, String string3, boolean bl, String string4) {
        this(1, string, string2, string3, bl, string4);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return String.format("Permission ID: '%s', Display Name: '%s', Picture URL: '%s', Authenticated User: %b, Email: '%s'", this.NG, this.NH, this.NI, this.NJ, this.NK);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        h.a(this, parcel, n);
    }
}

