/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.a;

@Deprecated
public final class Address
implements SafeParcelable {
    public static final Parcelable.Creator<Address> CREATOR = new a();
    private final int BR;
    String adN;
    String adO;
    String adP;
    String adU;
    String adW;
    boolean adX;
    String adY;
    String ast;
    String asu;
    String name;
    String uW;

    Address() {
        this.BR = 1;
    }

    Address(int n, String string, String string2, String string3, String string4, String string5, String string6, String string7, String string8, String string9, boolean bl, String string10) {
        this.BR = n;
        this.name = string;
        this.adN = string2;
        this.adO = string3;
        this.adP = string4;
        this.uW = string5;
        this.ast = string6;
        this.asu = string7;
        this.adU = string8;
        this.adW = string9;
        this.adX = bl;
        this.adY = string10;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAddress1() {
        return this.adN;
    }

    public String getAddress2() {
        return this.adO;
    }

    public String getAddress3() {
        return this.adP;
    }

    public String getCity() {
        return this.ast;
    }

    public String getCompanyName() {
        return this.adY;
    }

    public String getCountryCode() {
        return this.uW;
    }

    public String getName() {
        return this.name;
    }

    public String getPhoneNumber() {
        return this.adW;
    }

    public String getPostalCode() {
        return this.adU;
    }

    public String getState() {
        return this.asu;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public boolean isPostBox() {
        return this.adX;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }
}

