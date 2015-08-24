/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.OfferWalletObject;
import com.google.android.gms.wallet.wobs.CommonWalletObject;

public class n
implements Parcelable.Creator<OfferWalletObject> {
    static void a(OfferWalletObject offerWalletObject, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, offerWalletObject.getVersionCode());
        b.a(parcel, 2, offerWalletObject.fl, false);
        b.a(parcel, 3, offerWalletObject.atD, false);
        b.a(parcel, 4, offerWalletObject.atE, n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dz(parcel);
    }

    public OfferWalletObject dz(Parcel parcel) {
        CommonWalletObject commonWalletObject = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    string2 = a.o(parcel, n3);
                    continue block6;
                }
                case 3: {
                    string = a.o(parcel, n3);
                    continue block6;
                }
                case 4: 
            }
            commonWalletObject = a.a(parcel, n3, CommonWalletObject.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new OfferWalletObject(n2, string2, string, commonWalletObject);
    }

    public OfferWalletObject[] fA(int n) {
        return new OfferWalletObject[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fA(n);
    }
}

