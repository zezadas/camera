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
import com.google.android.gms.wallet.InstrumentInfo;
import com.google.android.gms.wallet.LoyaltyWalletObject;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.OfferWalletObject;

public class k
implements Parcelable.Creator<MaskedWallet> {
    static void a(MaskedWallet maskedWallet, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, maskedWallet.getVersionCode());
        b.a(parcel, 2, maskedWallet.asB, false);
        b.a(parcel, 3, maskedWallet.asC, false);
        b.a(parcel, 4, maskedWallet.asH, false);
        b.a(parcel, 5, maskedWallet.asE, false);
        b.a(parcel, 6, maskedWallet.asF, n, false);
        b.a(parcel, 7, maskedWallet.asG, n, false);
        b.a((Parcel)parcel, (int)8, (Parcelable[])maskedWallet.atm, (int)n, (boolean)false);
        b.a((Parcel)parcel, (int)9, (Parcelable[])maskedWallet.atn, (int)n, (boolean)false);
        b.a(parcel, 10, maskedWallet.asI, n, false);
        b.a(parcel, 11, maskedWallet.asJ, n, false);
        b.a((Parcel)parcel, (int)12, (Parcelable[])maskedWallet.asK, (int)n, (boolean)false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dw(parcel);
    }

    public MaskedWallet dw(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        String[] arrstring = null;
        String string3 = null;
        Address address = null;
        Address address2 = null;
        LoyaltyWalletObject[] arrloyaltyWalletObject = null;
        OfferWalletObject[] arrofferWalletObject = null;
        UserAddress userAddress = null;
        UserAddress userAddress2 = null;
        InstrumentInfo[] arrinstrumentInfo = null;
        block14 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block14;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block14;
                }
                case 2: {
                    string = a.o(parcel, n3);
                    continue block14;
                }
                case 3: {
                    string2 = a.o(parcel, n3);
                    continue block14;
                }
                case 4: {
                    arrstring = a.A(parcel, n3);
                    continue block14;
                }
                case 5: {
                    string3 = a.o(parcel, n3);
                    continue block14;
                }
                case 6: {
                    address = a.a(parcel, n3, Address.CREATOR);
                    continue block14;
                }
                case 7: {
                    address2 = a.a(parcel, n3, Address.CREATOR);
                    continue block14;
                }
                case 8: {
                    arrloyaltyWalletObject = a.b(parcel, n3, LoyaltyWalletObject.CREATOR);
                    continue block14;
                }
                case 9: {
                    arrofferWalletObject = a.b(parcel, n3, OfferWalletObject.CREATOR);
                    continue block14;
                }
                case 10: {
                    userAddress = a.a(parcel, n3, UserAddress.CREATOR);
                    continue block14;
                }
                case 11: {
                    userAddress2 = a.a(parcel, n3, UserAddress.CREATOR);
                    continue block14;
                }
                case 12: 
            }
            arrinstrumentInfo = a.b(parcel, n3, InstrumentInfo.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new MaskedWallet(n2, string, string2, arrstring, string3, address, address2, arrloyaltyWalletObject, arrofferWalletObject, userAddress, userAddress2, arrinstrumentInfo);
    }

    public MaskedWallet[] fx(int n) {
        return new MaskedWallet[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fx(n);
    }
}

