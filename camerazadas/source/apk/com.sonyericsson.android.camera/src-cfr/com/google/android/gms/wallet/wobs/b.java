/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.c;

public final class b
implements SafeParcelable {
    public static final Parcelable.Creator<b> CREATOR = new c();
    private final int BR;
    String label;
    String value;

    b() {
        this.BR = 1;
    }

    b(int n, String string, String string2) {
        this.BR = n;
        this.label = string;
        this.value = string2;
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
        c.a(this, parcel, n);
    }
}

