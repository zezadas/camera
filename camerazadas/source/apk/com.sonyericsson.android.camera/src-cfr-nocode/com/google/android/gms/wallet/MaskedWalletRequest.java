/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.Cart;
import com.google.android.gms.wallet.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class MaskedWalletRequest
implements SafeParcelable {
    public static final Parcelable.Creator<MaskedWalletRequest> CREATOR;
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

    static;

    MaskedWalletRequest();

    MaskedWalletRequest(int var1, String var2, boolean var3, boolean var4, boolean var5, String var6, String var7, String var8, Cart var9, boolean var10, boolean var11, CountrySpecification[] var12, boolean var13, boolean var14, ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> var15);

    public static Builder newBuilder();

    public boolean allowDebitCard();

    public boolean allowPrepaidCard();

    @Override
    public int describeContents();

    public ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> getAllowedCountrySpecificationsForShipping();

    public CountrySpecification[] getAllowedShippingCountrySpecifications();

    public Cart getCart();

    public String getCurrencyCode();

    public String getEstimatedTotalPrice();

    public String getMerchantName();

    public String getMerchantTransactionId();

    public int getVersionCode();

    public boolean isBillingAgreement();

    public boolean isPhoneNumberRequired();

    public boolean isShippingAddressRequired();

    public boolean shouldRetrieveWalletObjects();

    public boolean useMinimalBillingAddress();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public final class Builder {
        final /* synthetic */ MaskedWalletRequest atA;

        private Builder(MaskedWalletRequest var1);

        /* synthetic */ Builder(MaskedWalletRequest var1,  var2);

        public Builder addAllowedCountrySpecificationForShipping(com.google.android.gms.identity.intents.model.CountrySpecification var1);

        public Builder addAllowedCountrySpecificationsForShipping(Collection<com.google.android.gms.identity.intents.model.CountrySpecification> var1);

        public MaskedWalletRequest build();

        public Builder setAllowDebitCard(boolean var1);

        public Builder setAllowPrepaidCard(boolean var1);

        public Builder setCart(Cart var1);

        public Builder setCurrencyCode(String var1);

        public Builder setEstimatedTotalPrice(String var1);

        public Builder setIsBillingAgreement(boolean var1);

        public Builder setMerchantName(String var1);

        public Builder setMerchantTransactionId(String var1);

        public Builder setPhoneNumberRequired(boolean var1);

        public Builder setShippingAddressRequired(boolean var1);

        public Builder setShouldRetrieveWalletObjects(boolean var1);

        public Builder setUseMinimalBillingAddress(boolean var1);
    }

}

