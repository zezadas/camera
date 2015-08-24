/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jr;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.wallet.wobs.d;
import com.google.android.gms.wallet.wobs.j;
import com.google.android.gms.wallet.wobs.l;
import com.google.android.gms.wallet.wobs.n;
import com.google.android.gms.wallet.wobs.p;
import java.util.ArrayList;

public class CommonWalletObject
implements SafeParcelable {
    public static final Parcelable.Creator<CommonWalletObject> CREATOR = new com.google.android.gms.wallet.wobs.a();
    private final int BR;
    String asU;
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
    ArrayList<j> atj;
    ArrayList<n> atk;
    String fl;
    String name;
    int state;

    CommonWalletObject() {
        this.BR = 1;
        this.atb = jr.hz();
        this.atd = jr.hz();
        this.atg = jr.hz();
        this.ati = jr.hz();
        this.atj = jr.hz();
        this.atk = jr.hz();
    }

    CommonWalletObject(int n, String string, String string2, String string3, String string4, String string5, String string6, String string7, String string8, int n2, ArrayList<p> arrayList, l l, ArrayList<LatLng> arrayList2, String string9, String string10, ArrayList<d> arrayList3, boolean bl, ArrayList<n> arrayList4, ArrayList<j> arrayList5, ArrayList<n> arrayList6) {
        this.BR = n;
        this.fl = string;
        this.ata = string2;
        this.name = string3;
        this.asU = string4;
        this.asW = string5;
        this.asX = string6;
        this.asY = string7;
        this.asZ = string8;
        this.state = n2;
        this.atb = arrayList;
        this.atc = l;
        this.atd = arrayList2;
        this.ate = string9;
        this.atf = string10;
        this.atg = arrayList3;
        this.ath = bl;
        this.ati = arrayList4;
        this.atj = arrayList5;
        this.atk = arrayList6;
    }

    public static a pQ() {
        CommonWalletObject commonWalletObject = new CommonWalletObject();
        commonWalletObject.getClass();
        return commonWalletObject.new a();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getId() {
        return this.fl;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        com.google.android.gms.wallet.wobs.a.a(this, parcel, n);
    }

    public final class a {
        private a() {
        }

        public a df(String string) {
            CommonWalletObject.this.fl = string;
            return this;
        }

        public CommonWalletObject pR() {
            return CommonWalletObject.this;
        }
    }

}

