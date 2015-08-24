/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.Cart;
import com.google.android.gms.wallet.FullWalletRequest;

public class g
implements Parcelable.Creator<FullWalletRequest> {
    static void a(FullWalletRequest fullWalletRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, fullWalletRequest.getVersionCode());
        b.a(parcel, 2, fullWalletRequest.asB, false);
        b.a(parcel, 3, fullWalletRequest.asC, false);
        b.a(parcel, 4, fullWalletRequest.asL, n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ds(parcel);
    }

    public FullWalletRequest ds(Parcel parcel) {
        Cart cart = null;
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
            cart = a.a(parcel, n3, Cart.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new FullWalletRequest(n2, string2, string, cart);
    }

    public FullWalletRequest[] ft(int n) {
        return new FullWalletRequest[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ft(n);
    }
}

