/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;
import com.google.android.gms.wallet.Address;
import com.google.android.gms.wallet.InstrumentInfo;
import com.google.android.gms.wallet.LoyaltyWalletObject;
import com.google.android.gms.wallet.OfferWalletObject;
import com.google.android.gms.wallet.k;

public final class MaskedWallet
implements SafeParcelable {
    public static final Parcelable.Creator<MaskedWallet> CREATOR = new k();
    private final int BR;
    String asB;
    String asC;
    String asE;
    Address asF;
    Address asG;
    String[] asH;
    UserAddress asI;
    UserAddress asJ;
    InstrumentInfo[] asK;
    LoyaltyWalletObject[] atm;
    OfferWalletObject[] atn;

    private MaskedWallet() {
        this.BR = 2;
    }

    MaskedWallet(int n, String string, String string2, String[] arrstring, String string3, Address address, Address address2, LoyaltyWalletObject[] arrloyaltyWalletObject, OfferWalletObject[] arrofferWalletObject, UserAddress userAddress, UserAddress userAddress2, InstrumentInfo[] arrinstrumentInfo) {
        this.BR = n;
        this.asB = string;
        this.asC = string2;
        this.asH = arrstring;
        this.asE = string3;
        this.asF = address;
        this.asG = address2;
        this.atm = arrloyaltyWalletObject;
        this.atn = arrofferWalletObject;
        this.asI = userAddress;
        this.asJ = userAddress2;
        this.asK = arrinstrumentInfo;
    }

    public static Builder newBuilderFrom(MaskedWallet maskedWallet) {
        o.i(maskedWallet);
        return MaskedWallet.pM().setGoogleTransactionId(maskedWallet.getGoogleTransactionId()).setMerchantTransactionId(maskedWallet.getMerchantTransactionId()).setPaymentDescriptions(maskedWallet.getPaymentDescriptions()).setInstrumentInfos(maskedWallet.getInstrumentInfos()).setEmail(maskedWallet.getEmail()).setLoyaltyWalletObjects(maskedWallet.getLoyaltyWalletObjects()).setOfferWalletObjects(maskedWallet.getOfferWalletObjects()).setBuyerBillingAddress(maskedWallet.getBuyerBillingAddress()).setBuyerShippingAddress(maskedWallet.getBuyerShippingAddress());
    }

    public static Builder pM() {
        MaskedWallet maskedWallet = new MaskedWallet();
        maskedWallet.getClass();
        return maskedWallet.new Builder();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Deprecated
    public Address getBillingAddress() {
        return this.asF;
    }

    public UserAddress getBuyerBillingAddress() {
        return this.asI;
    }

    public UserAddress getBuyerShippingAddress() {
        return this.asJ;
    }

    public String getEmail() {
        return this.asE;
    }

    public String getGoogleTransactionId() {
        return this.asB;
    }

    public InstrumentInfo[] getInstrumentInfos() {
        return this.asK;
    }

    public LoyaltyWalletObject[] getLoyaltyWalletObjects() {
        return this.atm;
    }

    public String getMerchantTransactionId() {
        return this.asC;
    }

    public OfferWalletObject[] getOfferWalletObjects() {
        return this.atn;
    }

    public String[] getPaymentDescriptions() {
        return this.asH;
    }

    @Deprecated
    public Address getShippingAddress() {
        return this.asG;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        k.a(this, parcel, n);
    }

    public final class Builder {
        private Builder() {
        }

        public MaskedWallet build() {
            return MaskedWallet.this;
        }

        public Builder setBillingAddress(Address address) {
            MaskedWallet.this.asF = address;
            return this;
        }

        public Builder setBuyerBillingAddress(UserAddress userAddress) {
            MaskedWallet.this.asI = userAddress;
            return this;
        }

        public Builder setBuyerShippingAddress(UserAddress userAddress) {
            MaskedWallet.this.asJ = userAddress;
            return this;
        }

        public Builder setEmail(String string) {
            MaskedWallet.this.asE = string;
            return this;
        }

        public Builder setGoogleTransactionId(String string) {
            MaskedWallet.this.asB = string;
            return this;
        }

        public Builder setInstrumentInfos(InstrumentInfo[] arrinstrumentInfo) {
            MaskedWallet.this.asK = arrinstrumentInfo;
            return this;
        }

        public Builder setLoyaltyWalletObjects(LoyaltyWalletObject[] arrloyaltyWalletObject) {
            MaskedWallet.this.atm = arrloyaltyWalletObject;
            return this;
        }

        public Builder setMerchantTransactionId(String string) {
            MaskedWallet.this.asC = string;
            return this;
        }

        public Builder setOfferWalletObjects(OfferWalletObject[] arrofferWalletObject) {
            MaskedWallet.this.atn = arrofferWalletObject;
            return this;
        }

        public Builder setPaymentDescriptions(String[] arrstring) {
            MaskedWallet.this.asH = arrstring;
            return this;
        }

        public Builder setShippingAddress(Address address) {
            MaskedWallet.this.asG = address;
            return this;
        }
    }

}

