/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.fragment;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.fragment.WalletFragmentStyle;

public class c
implements Parcelable.Creator<WalletFragmentStyle> {
    static void a(WalletFragmentStyle walletFragmentStyle, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, walletFragmentStyle.BR);
        b.a(parcel, 2, walletFragmentStyle.auo, false);
        b.c(parcel, 3, walletFragmentStyle.aup);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dF(parcel);
    }

    public WalletFragmentStyle dF(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        Bundle bundle = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: {
                    bundle = a.q(parcel, n4);
                    continue block5;
                }
                case 3: 
            }
            n = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new WalletFragmentStyle(n3, bundle, n);
    }

    public WalletFragmentStyle[] fH(int n) {
        return new WalletFragmentStyle[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fH(n);
    }
}

