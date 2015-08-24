/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.Cart;
import com.google.android.gms.wallet.CountrySpecification;
import com.google.android.gms.wallet.MaskedWalletRequest;
import java.util.ArrayList;

public class l
implements Parcelable.Creator<MaskedWalletRequest> {
    static void a(MaskedWalletRequest maskedWalletRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, maskedWalletRequest.getVersionCode());
        b.a(parcel, 2, maskedWalletRequest.asC, false);
        b.a(parcel, 3, maskedWalletRequest.atp);
        b.a(parcel, 4, maskedWalletRequest.atq);
        b.a(parcel, 5, maskedWalletRequest.atr);
        b.a(parcel, 6, maskedWalletRequest.ats, false);
        b.a(parcel, 7, maskedWalletRequest.asw, false);
        b.a(parcel, 8, maskedWalletRequest.att, false);
        b.a(parcel, 9, maskedWalletRequest.asL, n, false);
        b.a(parcel, 10, maskedWalletRequest.atu);
        b.a(parcel, 11, maskedWalletRequest.atv);
        b.a((Parcel)parcel, (int)12, (Parcelable[])maskedWalletRequest.atw, (int)n, (boolean)false);
        b.a(parcel, 13, maskedWalletRequest.atx);
        b.a(parcel, 14, maskedWalletRequest.aty);
        b.c(parcel, 15, maskedWalletRequest.atz, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dx(parcel);
    }

    public MaskedWalletRequest dx(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        boolean bl = false;
        boolean bl2 = false;
        boolean bl3 = false;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        Cart cart = null;
        boolean bl4 = false;
        boolean bl5 = false;
        CountrySpecification[] arrcountrySpecification = null;
        boolean bl6 = true;
        boolean bl7 = true;
        ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> arrayList = null;
        block17 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block17;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block17;
                }
                case 2: {
                    string = a.o(parcel, n3);
                    continue block17;
                }
                case 3: {
                    bl = a.c(parcel, n3);
                    continue block17;
                }
                case 4: {
                    bl2 = a.c(parcel, n3);
                    continue block17;
                }
                case 5: {
                    bl3 = a.c(parcel, n3);
                    continue block17;
                }
                case 6: {
                    string2 = a.o(parcel, n3);
                    continue block17;
                }
                case 7: {
                    string3 = a.o(parcel, n3);
                    continue block17;
                }
                case 8: {
                    string4 = a.o(parcel, n3);
                    continue block17;
                }
                case 9: {
                    cart = a.a(parcel, n3, Cart.CREATOR);
                    continue block17;
                }
                case 10: {
                    bl4 = a.c(parcel, n3);
                    continue block17;
                }
                case 11: {
                    bl5 = a.c(parcel, n3);
                    continue block17;
                }
                case 12: {
                    arrcountrySpecification = a.b(parcel, n3, CountrySpecification.CREATOR);
                    continue block17;
                }
                case 13: {
                    bl6 = a.c(parcel, n3);
                    continue block17;
                }
                case 14: {
                    bl7 = a.c(parcel, n3);
                    continue block17;
                }
                case 15: 
            }
            arrayList = a.c(parcel, n3, com.google.android.gms.identity.intents.model.CountrySpecification.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new MaskedWalletRequest(n2, string, bl, bl2, bl3, string2, string3, string4, cart, bl4, bl5, arrcountrySpecification, bl6, bl7, arrayList);
    }

    public MaskedWalletRequest[] fy(int n) {
        return new MaskedWalletRequest[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fy(n);
    }
}

