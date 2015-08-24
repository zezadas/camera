/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.identity.intents.model.UserAddress;
import com.google.android.gms.wallet.Address;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.InstrumentInfo;
import com.google.android.gms.wallet.ProxyCard;

public class f
implements Parcelable.Creator<FullWallet> {
    static void a(FullWallet fullWallet, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, fullWallet.getVersionCode());
        b.a(parcel, 2, fullWallet.asB, false);
        b.a(parcel, 3, fullWallet.asC, false);
        b.a(parcel, 4, fullWallet.asD, n, false);
        b.a(parcel, 5, fullWallet.asE, false);
        b.a(parcel, 6, fullWallet.asF, n, false);
        b.a(parcel, 7, fullWallet.asG, n, false);
        b.a(parcel, 8, fullWallet.asH, false);
        b.a(parcel, 9, fullWallet.asI, n, false);
        b.a(parcel, 10, fullWallet.asJ, n, false);
        b.a((Parcel)parcel, (int)11, (Parcelable[])fullWallet.asK, (int)n, (boolean)false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dr(parcel);
    }

    public FullWallet dr(Parcel parcel) {
        InstrumentInfo[] arrinstrumentInfo = null;
        int n = a.C(parcel);
        int n2 = 0;
        UserAddress userAddress = null;
        UserAddress userAddress2 = null;
        String[] arrstring = null;
        Address address = null;
        Address address2 = null;
        String string = null;
        ProxyCard proxyCard = null;
        String string2 = null;
        String string3 = null;
        block13 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block13;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block13;
                }
                case 2: {
                    string3 = a.o(parcel, n3);
                    continue block13;
                }
                case 3: {
                    string2 = a.o(parcel, n3);
                    continue block13;
                }
                case 4: {
                    proxyCard = a.a(parcel, n3, ProxyCard.CREATOR);
                    continue block13;
                }
                case 5: {
                    string = a.o(parcel, n3);
                    continue block13;
                }
                case 6: {
                    address2 = a.a(parcel, n3, Address.CREATOR);
                    continue block13;
                }
                case 7: {
                    address = a.a(parcel, n3, Address.CREATOR);
                    continue block13;
                }
                case 8: {
                    arrstring = a.A(parcel, n3);
                    continue block13;
                }
                case 9: {
                    userAddress2 = a.a(parcel, n3, UserAddress.CREATOR);
                    continue block13;
                }
                case 10: {
                    userAddress = a.a(parcel, n3, UserAddress.CREATOR);
                    continue block13;
                }
                case 11: 
            }
            arrinstrumentInfo = a.b(parcel, n3, InstrumentInfo.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new FullWallet(n2, string3, string2, proxyCard, string, address2, address, arrstring, userAddress2, userAddress, arrinstrumentInfo);
    }

    public FullWallet[] fs(int n) {
        return new FullWallet[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fs(n);
    }
}

