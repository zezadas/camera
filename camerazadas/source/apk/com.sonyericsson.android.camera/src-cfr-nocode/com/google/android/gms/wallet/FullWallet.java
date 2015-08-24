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
import com.google.android.gms.wallet.ProxyCard;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class FullWallet
implements SafeParcelable {
    public static final Parcelable.Creator<FullWallet> CREATOR;
    private final int BR;
    String asB;
    String asC;
    ProxyCard asD;
    String asE;
    Address asF;
    Address asG;
    String[] asH;
    UserAddress asI;
    UserAddress asJ;
    InstrumentInfo[] asK;

    static;

    private FullWallet();

    FullWallet(int var1, String var2, String var3, ProxyCard var4, String var5, Address var6, Address var7, String[] var8, UserAddress var9, UserAddress var10, InstrumentInfo[] var11);

    @Override
    public int describeContents();

    @Deprecated
    public Address getBillingAddress();

    public UserAddress getBuyerBillingAddress();

    public UserAddress getBuyerShippingAddress();

    public String getEmail();

    public String getGoogleTransactionId();

    public InstrumentInfo[] getInstrumentInfos();

    public String getMerchantTransactionId();

    public String[] getPaymentDescriptions();

    public ProxyCard getProxyCard();

    @Deprecated
    public Address getShippingAddress();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

