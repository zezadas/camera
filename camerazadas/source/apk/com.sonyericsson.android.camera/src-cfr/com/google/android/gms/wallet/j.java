/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.jr;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.i;
import com.google.android.gms.wallet.LoyaltyWalletObject;
import com.google.android.gms.wallet.wobs.d;
import com.google.android.gms.wallet.wobs.f;
import com.google.android.gms.wallet.wobs.l;
import com.google.android.gms.wallet.wobs.n;
import com.google.android.gms.wallet.wobs.p;
import java.util.ArrayList;

public class j
implements Parcelable.Creator<LoyaltyWalletObject> {
    static void a(LoyaltyWalletObject loyaltyWalletObject, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, loyaltyWalletObject.getVersionCode());
        b.a(parcel, 2, loyaltyWalletObject.fl, false);
        b.a(parcel, 3, loyaltyWalletObject.asT, false);
        b.a(parcel, 4, loyaltyWalletObject.asU, false);
        b.a(parcel, 5, loyaltyWalletObject.asV, false);
        b.a(parcel, 6, loyaltyWalletObject.Dv, false);
        b.a(parcel, 7, loyaltyWalletObject.asW, false);
        b.a(parcel, 8, loyaltyWalletObject.asX, false);
        b.a(parcel, 9, loyaltyWalletObject.asY, false);
        b.a(parcel, 10, loyaltyWalletObject.asZ, false);
        b.a(parcel, 11, loyaltyWalletObject.ata, false);
        b.c(parcel, 12, loyaltyWalletObject.state);
        b.c(parcel, 13, loyaltyWalletObject.atb, false);
        b.a(parcel, 14, loyaltyWalletObject.atc, n, false);
        b.c(parcel, 15, loyaltyWalletObject.atd, false);
        b.a(parcel, 17, loyaltyWalletObject.atf, false);
        b.a(parcel, 16, loyaltyWalletObject.ate, false);
        b.a(parcel, 19, loyaltyWalletObject.ath);
        b.c(parcel, 18, loyaltyWalletObject.atg, false);
        b.c(parcel, 21, loyaltyWalletObject.atj, false);
        b.c(parcel, 20, loyaltyWalletObject.ati, false);
        b.a(parcel, 23, loyaltyWalletObject.atl, n, false);
        b.c(parcel, 22, loyaltyWalletObject.atk, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dv(parcel);
    }

    public LoyaltyWalletObject dv(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        String string6 = null;
        String string7 = null;
        String string8 = null;
        String string9 = null;
        String string10 = null;
        int n3 = 0;
        ArrayList<p> arrayList = jr.hz();
        l l = null;
        ArrayList<LatLng> arrayList2 = jr.hz();
        String string11 = null;
        String string12 = null;
        ArrayList<d> arrayList3 = jr.hz();
        boolean bl = false;
        ArrayList<n> arrayList4 = jr.hz();
        ArrayList<com.google.android.gms.wallet.wobs.j> arrayList5 = jr.hz();
        ArrayList<n> arrayList6 = jr.hz();
        f f = null;
        block25 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block25;
                }
                case 1: {
                    n2 = a.g(parcel, n4);
                    continue block25;
                }
                case 2: {
                    string = a.o(parcel, n4);
                    continue block25;
                }
                case 3: {
                    string2 = a.o(parcel, n4);
                    continue block25;
                }
                case 4: {
                    string3 = a.o(parcel, n4);
                    continue block25;
                }
                case 5: {
                    string4 = a.o(parcel, n4);
                    continue block25;
                }
                case 6: {
                    string5 = a.o(parcel, n4);
                    continue block25;
                }
                case 7: {
                    string6 = a.o(parcel, n4);
                    continue block25;
                }
                case 8: {
                    string7 = a.o(parcel, n4);
                    continue block25;
                }
                case 9: {
                    string8 = a.o(parcel, n4);
                    continue block25;
                }
                case 10: {
                    string9 = a.o(parcel, n4);
                    continue block25;
                }
                case 11: {
                    string10 = a.o(parcel, n4);
                    continue block25;
                }
                case 12: {
                    n3 = a.g(parcel, n4);
                    continue block25;
                }
                case 13: {
                    arrayList = a.c(parcel, n4, p.CREATOR);
                    continue block25;
                }
                case 14: {
                    l = a.a(parcel, n4, l.CREATOR);
                    continue block25;
                }
                case 15: {
                    arrayList2 = a.c(parcel, n4, LatLng.CREATOR);
                    continue block25;
                }
                case 17: {
                    string12 = a.o(parcel, n4);
                    continue block25;
                }
                case 16: {
                    string11 = a.o(parcel, n4);
                    continue block25;
                }
                case 19: {
                    bl = a.c(parcel, n4);
                    continue block25;
                }
                case 18: {
                    arrayList3 = a.c(parcel, n4, d.CREATOR);
                    continue block25;
                }
                case 21: {
                    arrayList5 = a.c(parcel, n4, com.google.android.gms.wallet.wobs.j.CREATOR);
                    continue block25;
                }
                case 20: {
                    arrayList4 = a.c(parcel, n4, n.CREATOR);
                    continue block25;
                }
                case 23: {
                    f = a.a(parcel, n4, f.CREATOR);
                    continue block25;
                }
                case 22: 
            }
            arrayList6 = a.c(parcel, n4, n.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new LoyaltyWalletObject(n2, string, string2, string3, string4, string5, string6, string7, string8, string9, string10, n3, arrayList, l, arrayList2, string11, string12, arrayList3, bl, arrayList4, arrayList5, arrayList6, f);
    }

    public LoyaltyWalletObject[] fw(int n) {
        return new LoyaltyWalletObject[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fw(n);
    }
}

