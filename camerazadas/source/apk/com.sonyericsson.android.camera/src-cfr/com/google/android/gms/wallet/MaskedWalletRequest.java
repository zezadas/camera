/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.Cart;
import com.google.android.gms.wallet.CountrySpecification;
import com.google.android.gms.wallet.l;
import java.util.ArrayList;
import java.util.Collection;

public final class MaskedWalletRequest
implements SafeParcelable {
    public static final Parcelable.Creator<MaskedWalletRequest> CREATOR = new l();
    private final int BR;
    String asC;
    Cart asL;
    String asw;
    boolean atp;
    boolean atq;
    boolean atr;
    String ats;
    String att;
    boolean atu;
    boolean atv;
    CountrySpecification[] atw;
    boolean atx;
    boolean aty;
    ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> atz;

    MaskedWalletRequest() {
        this.BR = 3;
        this.atx = true;
        this.aty = true;
    }

    MaskedWalletRequest(int n, String string, boolean bl, boolean bl2, boolean bl3, String string2, String string3, String string4, Cart cart, boolean bl4, boolean bl5, CountrySpecification[] arrcountrySpecification, boolean bl6, boolean bl7, ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> arrayList) {
        this.BR = n;
        this.asC = string;
        this.atp = bl;
        this.atq = bl2;
        this.atr = bl3;
        this.ats = string2;
        this.asw = string3;
        this.att = string4;
        this.asL = cart;
        this.atu = bl4;
        this.atv = bl5;
        this.atw = arrcountrySpecification;
        this.atx = bl6;
        this.aty = bl7;
        this.atz = arrayList;
    }

    public static Builder newBuilder() {
        MaskedWalletRequest maskedWalletRequest = new MaskedWalletRequest();
        maskedWalletRequest.getClass();
        return maskedWalletRequest.new Builder();
    }

    public boolean allowDebitCard() {
        return this.aty;
    }

    public boolean allowPrepaidCard() {
        return this.atx;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> getAllowedCountrySpecificationsForShipping() {
        return this.atz;
    }

    public CountrySpecification[] getAllowedShippingCountrySpecifications() {
        return this.atw;
    }

    public Cart getCart() {
        return this.asL;
    }

    public String getCurrencyCode() {
        return this.asw;
    }

    public String getEstimatedTotalPrice() {
        return this.ats;
    }

    public String getMerchantName() {
        return this.att;
    }

    public String getMerchantTransactionId() {
        return this.asC;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public boolean isBillingAgreement() {
        return this.atv;
    }

    public boolean isPhoneNumberRequired() {
        return this.atp;
    }

    public boolean isShippingAddressRequired() {
        return this.atq;
    }

    public boolean shouldRetrieveWalletObjects() {
        return this.atu;
    }

    public boolean useMinimalBillingAddress() {
        return this.atr;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        l.a(this, parcel, n);
    }

    public final class Builder {
        private Builder() {
        }

        public Builder addAllowedCountrySpecificationForShipping(com.google.android.gms.identity.intents.model.CountrySpecification countrySpecification) {
            if (MaskedWalletRequest.this.atz == null) {
                MaskedWalletRequest.this.atz = new ArrayList();
            }
            MaskedWalletRequest.this.atz.add(countrySpecification);
            return this;
        }

        public Builder addAllowedCountrySpecificationsForShipping(Collection<com.google.android.gms.identity.intents.model.CountrySpecification> collection) {
            if (collection != null) {
                if (MaskedWalletRequest.this.atz == null) {
                    MaskedWalletRequest.this.atz = new ArrayList();
                }
                MaskedWalletRequest.this.atz.addAll(collection);
            }
            return this;
        }

        public MaskedWalletRequest build() {
            return MaskedWalletRequest.this;
        }

        public Builder setAllowDebitCard(boolean bl) {
            MaskedWalletRequest.this.aty = bl;
            return this;
        }

        public Builder setAllowPrepaidCard(boolean bl) {
            MaskedWalletRequest.this.atx = bl;
            return this;
        }

        public Builder setCart(Cart cart) {
            MaskedWalletRequest.this.asL = cart;
            return this;
        }

        public Builder setCurrencyCode(String string) {
            MaskedWalletRequest.this.asw = string;
            return this;
        }

        public Builder setEstimatedTotalPrice(String string) {
            MaskedWalletRequest.this.ats = string;
            return this;
        }

        public Builder setIsBillingAgreement(boolean bl) {
            MaskedWalletRequest.this.atv = bl;
            return this;
        }

        public Builder setMerchantName(String string) {
            MaskedWalletRequest.this.att = string;
            return this;
        }

        public Builder setMerchantTransactionId(String string) {
            MaskedWalletRequest.this.asC = string;
            return this;
        }

        public Builder setPhoneNumberRequired(boolean bl) {
            MaskedWalletRequest.this.atp = bl;
            return this;
        }

        public Builder setShippingAddressRequired(boolean bl) {
            MaskedWalletRequest.this.atq = bl;
            return this;
        }

        public Builder setShouldRetrieveWalletObjects(boolean bl) {
            MaskedWalletRequest.this.atu = bl;
            return this;
        }

        public Builder setUseMinimalBillingAddress(boolean bl) {
            MaskedWalletRequest.this.atr = bl;
            return this;
        }
    }

}

