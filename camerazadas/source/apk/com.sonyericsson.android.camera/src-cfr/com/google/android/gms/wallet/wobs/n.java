/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.o;

public final class n
implements SafeParcelable {
    public static final Parcelable.Creator<n> CREATOR = new o();
    private final int BR;
    String auM;
    String description;

    n() {
        this.BR = 1;
    }

    n(int n, String string, String string2) {
        this.BR = n;
        this.auM = string;
        this.description = string2;
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
        o.a(this, parcel, n);
    }
}

