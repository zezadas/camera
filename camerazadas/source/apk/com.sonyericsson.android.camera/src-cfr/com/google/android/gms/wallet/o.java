/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.ProxyCard;

public class o
implements Parcelable.Creator<ProxyCard> {
    static void a(ProxyCard proxyCard, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, proxyCard.getVersionCode());
        b.a(parcel, 2, proxyCard.atF, false);
        b.a(parcel, 3, proxyCard.atG, false);
        b.c(parcel, 4, proxyCard.atH);
        b.c(parcel, 5, proxyCard.atI);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dA(parcel);
    }

    public ProxyCard dA(Parcel parcel) {
        String string = null;
        int n = 0;
        int n2 = a.C(parcel);
        int n3 = 0;
        String string2 = null;
        int n4 = 0;
        block7 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block7;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block7;
                }
                case 2: {
                    string2 = a.o(parcel, n5);
                    continue block7;
                }
                case 3: {
                    string = a.o(parcel, n5);
                    continue block7;
                }
                case 4: {
                    n3 = a.g(parcel, n5);
                    continue block7;
                }
                case 5: 
            }
            n = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ProxyCard(n4, string2, string, n3, n);
    }

    public ProxyCard[] fB(int n) {
        return new ProxyCard[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fB(n);
    }
}

