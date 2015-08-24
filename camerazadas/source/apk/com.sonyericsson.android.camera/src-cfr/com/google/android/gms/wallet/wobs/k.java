/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.wobs.j;

public class k
implements Parcelable.Creator<j> {
    static void a(j j, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, j.getVersionCode());
        b.a(parcel, 2, j.auJ, false);
        b.a(parcel, 3, j.tG, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dL(parcel);
    }

    public j dL(Parcel parcel) {
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
        return new j(n2, string2, string);
    }

    public j[] fO(int n) {
        return new j[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fO(n);
    }
}

