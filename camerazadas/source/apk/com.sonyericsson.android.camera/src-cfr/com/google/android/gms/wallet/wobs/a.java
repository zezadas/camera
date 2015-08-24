/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.jr;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.i;
import com.google.android.gms.wallet.wobs.CommonWalletObject;
import com.google.android.gms.wallet.wobs.d;
import com.google.android.gms.wallet.wobs.j;
import com.google.android.gms.wallet.wobs.l;
import com.google.android.gms.wallet.wobs.n;
import com.google.android.gms.wallet.wobs.p;
import java.util.ArrayList;

public class a
implements Parcelable.Creator<CommonWalletObject> {
    static void a(CommonWalletObject commonWalletObject, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, commonWalletObject.getVersionCode());
        b.a(parcel, 2, commonWalletObject.fl, false);
        b.a(parcel, 3, commonWalletObject.ata, false);
        b.a(parcel, 4, commonWalletObject.name, false);
        b.a(parcel, 5, commonWalletObject.asU, false);
        b.a(parcel, 6, commonWalletObject.asW, false);
        b.a(parcel, 7, commonWalletObject.asX, false);
        b.a(parcel, 8, commonWalletObject.asY, false);
        b.a(parcel, 9, commonWalletObject.asZ, false);
        b.c(parcel, 10, commonWalletObject.state);
        b.c(parcel, 11, commonWalletObject.atb, false);
        b.a(parcel, 12, commonWalletObject.atc, n, false);
        b.c(parcel, 13, commonWalletObject.atd, false);
        b.a(parcel, 14, commonWalletObject.ate, false);
        b.a(parcel, 15, commonWalletObject.atf, false);
        b.a(parcel, 17, commonWalletObject.ath);
        b.c(parcel, 16, commonWalletObject.atg, false);
        b.c(parcel, 19, commonWalletObject.atj, false);
        b.c(parcel, 18, commonWalletObject.ati, false);
        b.c(parcel, 20, commonWalletObject.atk, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dG(parcel);
    }

    public CommonWalletObject dG(Parcel parcel) {
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        String string6 = null;
        String string7 = null;
        String string8 = null;
        int n3 = 0;
        ArrayList<p> arrayList = jr.hz();
        l l = null;
        ArrayList<LatLng> arrayList2 = jr.hz();
        String string9 = null;
        String string10 = null;
        ArrayList<d> arrayList3 = jr.hz();
        boolean bl = false;
        ArrayList<n> arrayList4 = jr.hz();
        ArrayList<j> arrayList5 = jr.hz();
        ArrayList<n> arrayList6 = jr.hz();
        block22 : while (parcel.dataPosition() < n) {
            int n4 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n4)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n4);
                    continue block22;
                }
                case 1: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block22;
                }
                case 2: {
                    string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block22;
                }
                case 3: {
                    string2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block22;
                }
                case 4: {
                    string3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block22;
                }
                case 5: {
                    string4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block22;
                }
                case 6: {
                    string5 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block22;
                }
                case 7: {
                    string6 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block22;
                }
                case 8: {
                    string7 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block22;
                }
                case 9: {
                    string8 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block22;
                }
                case 10: {
                    n3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block22;
                }
                case 11: {
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n4, p.CREATOR);
                    continue block22;
                }
                case 12: {
                    l = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n4, l.CREATOR);
                    continue block22;
                }
                case 13: {
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n4, LatLng.CREATOR);
                    continue block22;
                }
                case 14: {
                    string9 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block22;
                }
                case 15: {
                    string10 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block22;
                }
                case 17: {
                    bl = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n4);
                    continue block22;
                }
                case 16: {
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n4, d.CREATOR);
                    continue block22;
                }
                case 19: {
                    arrayList5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n4, j.CREATOR);
                    continue block22;
                }
                case 18: {
                    arrayList4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n4, n.CREATOR);
                    continue block22;
                }
                case 20: 
            }
            arrayList6 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n4, n.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new CommonWalletObject(n2, string, string2, string3, string4, string5, string6, string7, string8, n3, arrayList, l, arrayList2, string9, string10, arrayList3, bl, arrayList4, arrayList5, arrayList6);
    }

    public CommonWalletObject[] fJ(int n) {
        return new CommonWalletObject[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fJ(n);
    }
}

