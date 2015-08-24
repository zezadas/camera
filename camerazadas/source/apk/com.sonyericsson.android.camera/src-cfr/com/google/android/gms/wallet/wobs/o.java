/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.wobs.n;

public class o
implements Parcelable.Creator<n> {
    static void a(n n, Parcel parcel, int n2) {
        n2 = b.D(parcel);
        b.c(parcel, 1, n.getVersionCode());
        b.a(parcel, 2, n.auM, false);
        b.a(parcel, 3, n.description, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dN(parcel);
    }

    public n dN(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string2 = null;
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
                    string2 = a.o(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new n(n2, string2, string);
    }

    public n[] fQ(int n) {
        return new n[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fQ(n);
    }
}

