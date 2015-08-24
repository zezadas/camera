/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jr;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.wallet.j;
import com.google.android.gms.wallet.wobs.d;
import com.google.android.gms.wallet.wobs.f;
import com.google.android.gms.wallet.wobs.l;
import com.google.android.gms.wallet.wobs.n;
import com.google.android.gms.wallet.wobs.p;
import java.util.ArrayList;

public final class LoyaltyWalletObject
implements SafeParcelable {
    public static final Parcelable.Creator<LoyaltyWalletObject> CREATOR = new j();
    private final int BR;
    String Dv;
    String asT;
    String asU;
    String asV;
    String asW;
    String asX;
    String asY;
    String asZ;
    String ata;
    ArrayList<p> atb;
    l atc;
    ArrayList<LatLng> atd;
    String ate;
    String atf;
    ArrayList<d> atg;
    boolean ath;
    ArrayList<n> ati;
    ArrayList<com.google.android.gms.wallet.wobs.j> atj;
    ArrayList<n> atk;
    f atl;
    String fl;
    int state;

    LoyaltyWalletObject() {
        this.BR = 4;
        this.atb = jr.hz();
        this.atd = jr.hz();
        this.atg = jr.hz();
        this.ati = jr.hz();
        this.atj = jr.hz();
        this.atk = jr.hz();
    }

    LoyaltyWalletObject(int n, String string, String string2, String string3, String string4, String string5, String string6, String string7, String string8, String string9, String string10, int n2, ArrayList<p> arrayList, l l, ArrayList<LatLng> arrayList2, String string11, String string12, ArrayList<d> arrayList3, boolean bl, ArrayList<n> arrayList4, ArrayList<com.google.android.gms.wallet.wobs.j> arrayList5, ArrayList<n> arrayList6, f f) {
        this.BR = n;
        this.fl = string;
        this.asT = string2;
        this.asU = string3;
        this.asV = string4;
        this.Dv = string5;
        this.asW = string6;
        this.asX = string7;
        this.asY = string8;
        this.asZ = string9;
        this.ata = string10;
        this.state = n2;
        this.atb = arrayList;
        this.atc = l;
        this.atd = arrayList2;
        this.ate = string11;
        this.atf = string12;
        this.atg = arrayList3;
        this.ath = bl;
        this.ati = arrayList4;
        this.atj = arrayList5;
        this.atk = arrayList6;
        this.atl = f;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAccountId() {
        return this.asT;
    }

    public String getAccountName() {
        return this.Dv;
    }

    public String getBarcodeAlternateText() {
        return this.asW;
    }

    public String getBarcodeType() {
        return this.asX;
    }

    public String getBarcodeValue() {
        return this.asY;
    }

    public String getId() {
        return this.fl;
    }

    public String getIssuerName() {
        return this.asU;
    }

    public String getProgramName() {
        return this.asV;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        j.a(this, parcel, n);
    }
}

