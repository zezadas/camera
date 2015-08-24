/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.n;
import com.google.android.gms.wallet.wobs.CommonWalletObject;

public final class OfferWalletObject
implements SafeParcelable {
    public static final Parcelable.Creator<OfferWalletObject> CREATOR = new n();
    private final int BR;
    String atD;
    CommonWalletObject atE;
    String fl;

    OfferWalletObject() {
        this.BR = 3;
    }

    OfferWalletObject(int n, String string, String string2, CommonWalletObject commonWalletObject) {
        this.BR = n;
        this.atD = string2;
        if (n < 3) {
            this.atE = CommonWalletObject.pQ().df(string).pR();
            return;
        }
        this.atE = commonWalletObject;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getId() {
        return this.atE.getId();
    }

    public String getRedemptionCode() {
        return this.atD;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        n.a(this, parcel, n);
    }
}

