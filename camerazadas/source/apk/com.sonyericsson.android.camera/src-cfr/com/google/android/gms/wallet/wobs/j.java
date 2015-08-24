/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.k;

public final class j
implements SafeParcelable {
    public static final Parcelable.Creator<j> CREATOR = new k();
    private final int BR;
    String auJ;
    String tG;

    j() {
        this.BR = 1;
    }

    j(int n, String string, String string2) {
        this.BR = n;
        this.auJ = string;
        this.tG = string2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        k.a(this, parcel, n);
    }
}

