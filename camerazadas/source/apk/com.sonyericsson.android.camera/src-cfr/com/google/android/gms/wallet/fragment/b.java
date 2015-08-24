/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;
import com.google.android.gms.wallet.fragment.WalletFragmentStyle;

public class b
implements Parcelable.Creator<WalletFragmentOptions> {
    static void a(WalletFragmentOptions walletFragmentOptions, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, walletFragmentOptions.BR);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 2, walletFragmentOptions.getEnvironment());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 3, walletFragmentOptions.getTheme());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, walletFragmentOptions.getFragmentStyle(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 5, walletFragmentOptions.getMode());
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dE(parcel);
    }

    public WalletFragmentOptions dE(Parcel parcel) {
        int n = 1;
        int n2 = 0;
        int n3 = a.C(parcel);
        WalletFragmentStyle walletFragmentStyle = null;
        int n4 = 1;
        int n5 = 0;
        block7 : while (parcel.dataPosition() < n3) {
            int n6 = a.B(parcel);
            switch (a.aD(n6)) {
                default: {
                    a.b(parcel, n6);
                    continue block7;
                }
                case 1: {
                    n5 = a.g(parcel, n6);
                    continue block7;
                }
                case 2: {
                    n4 = a.g(parcel, n6);
                    continue block7;
                }
                case 3: {
                    n2 = a.g(parcel, n6);
                    continue block7;
                }
                case 4: {
                    walletFragmentStyle = a.a(parcel, n6, WalletFragmentStyle.CREATOR);
                    continue block7;
                }
                case 5: 
            }
            n = a.g(parcel, n6);
        }
        if (parcel.dataPosition() != n3) {
            throw new a.a("Overread allowed size end=" + n3, parcel);
        }
        return new WalletFragmentOptions(n5, n4, n2, walletFragmentStyle, n);
    }

    public WalletFragmentOptions[] fG(int n) {
        return new WalletFragmentOptions[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fG(n);
    }
}

