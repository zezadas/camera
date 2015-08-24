/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.Cart;
import com.google.android.gms.wallet.g;

public final class FullWalletRequest
implements SafeParcelable {
    public static final Parcelable.Creator<FullWalletRequest> CREATOR = new g();
    private final int BR;
    String asB;
    String asC;
    Cart asL;

    FullWalletRequest() {
        this.BR = 1;
    }

    FullWalletRequest(int n, String string, String string2, Cart cart) {
        this.BR = n;
        this.asB = string;
        this.asC = string2;
        this.asL = cart;
    }

    public static Builder newBuilder() {
        FullWalletRequest fullWalletRequest = new FullWalletRequest();
        fullWalletRequest.getClass();
        return fullWalletRequest.new Builder();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Cart getCart() {
        return this.asL;
    }

    public String getGoogleTransactionId() {
        return this.asB;
    }

    public String getMerchantTransactionId() {
        return this.asC;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        g.a(this, parcel, n);
    }

    public final class Builder {
        private Builder() {
        }

        public FullWalletRequest build() {
            return FullWalletRequest.this;
        }

        public Builder setCart(Cart cart) {
            FullWalletRequest.this.asL = cart;
            return this;
        }

        public Builder setGoogleTransactionId(String string) {
            FullWalletRequest.this.asB = string;
            return this;
        }

        public Builder setMerchantTransactionId(String string) {
            FullWalletRequest.this.asC = string;
            return this;
        }
    }

}

