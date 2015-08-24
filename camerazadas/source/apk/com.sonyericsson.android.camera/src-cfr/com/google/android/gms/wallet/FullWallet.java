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
import com.google.android.gms.wallet.f;

public final class FullWallet
implements SafeParcelable {
    public static final Parcelable.Creator<FullWallet> CREATOR = new f();
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

    private FullWallet() {
        this.BR = 1;
    }

    FullWallet(int n, String string, String string2, ProxyCard proxyCard, String string3, Address address, Address address2, String[] arrstring, UserAddress userAddress, UserAddress userAddress2, InstrumentInfo[] arrinstrumentInfo) {
        this.BR = n;
        this.asB = string;
        this.asC = string2;
        this.asD = proxyCard;
        this.asE = string3;
        this.asF = address;
        this.asG = address2;
        this.asH = arrstring;
        this.asI = userAddress;
        this.asJ = userAddress2;
        this.asK = arrinstrumentInfo;
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

    public String getMerchantTransactionId() {
        return this.asC;
    }

    public String[] getPaymentDescriptions() {
        return this.asH;
    }

    public ProxyCard getProxyCard() {
        return this.asD;
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
        f.a(this, parcel, n);
    }
}

