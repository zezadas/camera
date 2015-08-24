/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jr;
import com.google.android.gms.wallet.wobs.b;
import com.google.android.gms.wallet.wobs.e;
import java.util.ArrayList;

public final class d
implements SafeParcelable {
    public static final Parcelable.Creator<d> CREATOR = new e();
    private final int BR;
    String auA;
    ArrayList<b> auB;
    String auz;

    d() {
        this.BR = 1;
        this.auB = jr.hz();
    }

    d(int n, String string, String string2, ArrayList<b> arrayList) {
        this.BR = n;
        this.auz = string;
        this.auA = string2;
        this.auB = arrayList;
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
        e.a(this, parcel, n);
    }
}

