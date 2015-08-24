/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.identity.intents.model;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.b;

public final class UserAddress
implements SafeParcelable {
    public static final Parcelable.Creator<UserAddress> CREATOR = new b();
    private final int BR;
    String adN;
    String adO;
    String adP;
    String adQ;
    String adR;
    String adS;
    String adT;
    String adU;
    String adV;
    String adW;
    boolean adX;
    String adY;
    String adZ;
    String name;
    String uW;

    UserAddress() {
        this.BR = 1;
    }

    UserAddress(int n, String string, String string2, String string3, String string4, String string5, String string6, String string7, String string8, String string9, String string10, String string11, String string12, boolean bl, String string13, String string14) {
        this.BR = n;
        this.name = string;
        this.adN = string2;
        this.adO = string3;
        this.adP = string4;
        this.adQ = string5;
        this.adR = string6;
        this.adS = string7;
        this.adT = string8;
        this.uW = string9;
        this.adU = string10;
        this.adV = string11;
        this.adW = string12;
        this.adX = bl;
        this.adY = string13;
        this.adZ = string14;
    }

    public static UserAddress fromIntent(Intent intent) {
        if (!(intent != null && intent.hasExtra("com.google.android.gms.identity.intents.EXTRA_ADDRESS"))) {
            return null;
        }
        return (UserAddress)intent.getParcelableExtra("com.google.android.gms.identity.intents.EXTRA_ADDRESS");
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

    public String getAddress4() {
        return this.adQ;
    }

    public String getAddress5() {
        return this.adR;
    }

    public String getAdministrativeArea() {
        return this.adS;
    }

    public String getCompanyName() {
        return this.adY;
    }

    public String getCountryCode() {
        return this.uW;
    }

    public String getEmailAddress() {
        return this.adZ;
    }

    public String getLocality() {
        return this.adT;
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

    public String getSortingCode() {
        return this.adV;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public boolean isPostBox() {
        return this.adX;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }
}

