/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.LoyaltyWalletObject;
import com.google.android.gms.wallet.OfferWalletObject;
import com.google.android.gms.wallet.e;

public final class d
implements SafeParcelable {
    public static final Parcelable.Creator<d> CREATOR = new e();
    private final int BR;
    OfferWalletObject asA;
    LoyaltyWalletObject asz;

    d() {
        this.BR = 2;
    }

    d(int n, LoyaltyWalletObject loyaltyWalletObject, OfferWalletObject offerWalletObject) {
        this.BR = n;
        this.asz = loyaltyWalletObject;
        this.asA = offerWalletObject;
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

