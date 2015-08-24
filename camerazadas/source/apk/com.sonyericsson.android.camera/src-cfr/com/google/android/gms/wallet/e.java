/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.LoyaltyWalletObject;
import com.google.android.gms.wallet.OfferWalletObject;
import com.google.android.gms.wallet.d;

public class e
implements Parcelable.Creator<d> {
    static void a(d d, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, d.getVersionCode());
        b.a(parcel, 2, d.asz, n, false);
        b.a(parcel, 3, d.asA, n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dq(parcel);
    }

    public d dq(Parcel parcel) {
        OfferWalletObject offerWalletObject = null;
        int n = a.C(parcel);
        int n2 = 0;
        LoyaltyWalletObject loyaltyWalletObject = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: {
                    loyaltyWalletObject = a.a(parcel, n3, LoyaltyWalletObject.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            offerWalletObject = a.a(parcel, n3, OfferWalletObject.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new d(n2, loyaltyWalletObject, offerWalletObject);
    }

    public d[] fr(int n) {
        return new d[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fr(n);
    }
}

