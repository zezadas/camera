/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.fragment.WalletFragmentInitParams;

public class a
implements Parcelable.Creator<WalletFragmentInitParams> {
    static void a(WalletFragmentInitParams walletFragmentInitParams, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, walletFragmentInitParams.BR);
        b.a(parcel, 2, walletFragmentInitParams.getAccountName(), false);
        b.a(parcel, 3, walletFragmentInitParams.getMaskedWalletRequest(), n, false);
        b.c(parcel, 4, walletFragmentInitParams.getMaskedWalletRequestCode());
        b.a(parcel, 5, walletFragmentInitParams.getMaskedWallet(), n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dD(parcel);
    }

    public WalletFragmentInitParams dD(Parcel parcel) {
        MaskedWallet maskedWallet = null;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        int n3 = -1;
        MaskedWalletRequest maskedWalletRequest = null;
        String string = null;
        block7 : while (parcel.dataPosition() < n) {
            int n4 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n4)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n4);
                    continue block7;
                }
                case 1: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block7;
                }
                case 2: {
                    string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block7;
                }
                case 3: {
                    maskedWalletRequest = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n4, MaskedWalletRequest.CREATOR);
                    continue block7;
                }
                case 4: {
                    n3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block7;
                }
                case 5: 
            }
            maskedWallet = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n4, MaskedWallet.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new WalletFragmentInitParams(n2, string, maskedWalletRequest, n3, maskedWallet);
    }

    public WalletFragmentInitParams[] fF(int n) {
        return new WalletFragmentInitParams[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fF(n);
    }
}

