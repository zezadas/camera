/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.fragment.a;

public final class WalletFragmentInitParams
implements SafeParcelable {
    public static final Parcelable.Creator<WalletFragmentInitParams> CREATOR = new a();
    final int BR;
    private String Dd;
    private MaskedWalletRequest atW;
    private MaskedWallet atX;
    private int auk;

    private WalletFragmentInitParams() {
        this.BR = 1;
        this.auk = -1;
    }

    WalletFragmentInitParams(int n, String string, MaskedWalletRequest maskedWalletRequest, int n2, MaskedWallet maskedWallet) {
        this.BR = n;
        this.Dd = string;
        this.atW = maskedWalletRequest;
        this.auk = n2;
        this.atX = maskedWallet;
    }

    public static Builder newBuilder() {
        WalletFragmentInitParams walletFragmentInitParams = new WalletFragmentInitParams();
        walletFragmentInitParams.getClass();
        return walletFragmentInitParams.new Builder();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAccountName() {
        return this.Dd;
    }

    public MaskedWallet getMaskedWallet() {
        return this.atX;
    }

    public MaskedWalletRequest getMaskedWalletRequest() {
        return this.atW;
    }

    public int getMaskedWalletRequestCode() {
        return this.auk;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }

    public final class Builder {
        private Builder() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public WalletFragmentInitParams build() {
            boolean bl = true;
            boolean bl2 = WalletFragmentInitParams.this.atX != null && WalletFragmentInitParams.this.atW == null || WalletFragmentInitParams.this.atX == null && WalletFragmentInitParams.this.atW != null;
            o.a(bl2, "Exactly one of MaskedWallet or MaskedWalletRequest is required");
            bl2 = WalletFragmentInitParams.this.auk >= 0 ? bl : false;
            o.a(bl2, "masked wallet request code is required and must be non-negative");
            return WalletFragmentInitParams.this;
        }

        public Builder setAccountName(String string) {
            WalletFragmentInitParams.this.Dd = string;
            return this;
        }

        public Builder setMaskedWallet(MaskedWallet maskedWallet) {
            WalletFragmentInitParams.this.atX = maskedWallet;
            return this;
        }

        public Builder setMaskedWalletRequest(MaskedWalletRequest maskedWalletRequest) {
            WalletFragmentInitParams.this.atW = maskedWalletRequest;
            return this;
        }

        public Builder setMaskedWalletRequestCode(int n) {
            WalletFragmentInitParams.this.auk = n;
            return this;
        }
    }

}

