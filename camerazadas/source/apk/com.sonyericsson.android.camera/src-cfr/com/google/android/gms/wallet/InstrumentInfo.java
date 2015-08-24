/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.h;

public final class InstrumentInfo
implements SafeParcelable {
    public static final Parcelable.Creator<InstrumentInfo> CREATOR = new h();
    private final int BR;
    private String asN;
    private String asO;

    InstrumentInfo(int n, String string, String string2) {
        this.BR = n;
        this.asN = string;
        this.asO = string2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getInstrumentDetails() {
        return this.asO;
    }

    public String getInstrumentType() {
        return this.asN;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        h.a(this, parcel, n);
    }
}

