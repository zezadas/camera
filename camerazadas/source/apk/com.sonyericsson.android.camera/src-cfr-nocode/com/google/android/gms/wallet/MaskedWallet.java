/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;
import com.google.android.gms.wallet.Address;
import com.google.android.gms.wallet.InstrumentInfo;
import com.google.android.gms.wallet.LoyaltyWalletObject;
import com.google.android.gms.wallet.OfferWalletObject;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class MaskedWallet
implements SafeParcelable {
    public static final Parcelable.Creator<MaskedWallet> CREATOR;
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

    static;

    private MaskedWallet();

    MaskedWallet(int var1, String var2, String var3, String[] var4, String var5, Address var6, Address var7, LoyaltyWalletObject[] var8, OfferWalletObject[] var9, UserAddress var10, UserAddress var11, InstrumentInfo[] var12);

    public static Builder newBuilderFrom(MaskedWallet var0);

    public static Builder pM();

    @Override
    public int describeContents();

    @Deprecated
    public Address getBillingAddress();

    public UserAddress getBuyerBillingAddress();

    public UserAddress getBuyerShippingAddress();

    public String getEmail();

    public String getGoogleTransactionId();

    public InstrumentInfo[] getInstrumentInfos();

    public LoyaltyWalletObject[] getLoyaltyWalletObjects();

    public String getMerchantTransactionId();

    public OfferWalletObject[] getOfferWalletObjects();

    public String[] getPaymentDescriptions();

    @Deprecated
    public Address getShippingAddress();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public final class Builder {
        final /* synthetic */ MaskedWallet ato;

        private Builder(MaskedWallet var1);

        /* synthetic */ Builder(MaskedWallet var1,  var2);

        public MaskedWallet build();

        public Builder setBillingAddress(Address var1);

        public Builder setBuyerBillingAddress(UserAddress var1);

        public Builder setBuyerShippingAddress(UserAddress var1);

        public Builder setEmail(String var1);

        public Builder setGoogleTransactionId(String var1);

        public Builder setInstrumentInfos(InstrumentInfo[] var1);

        public Builder setLoyaltyWalletObjects(LoyaltyWalletObject[] var1);

        public Builder setMerchantTransactionId(String var1);

        public Builder setOfferWalletObjects(OfferWalletObject[] var1);

        public Builder setPaymentDescriptions(String[] var1);

        public Builder setShippingAddress(Address var1);
    }

}

