/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.mj;
import com.google.android.gms.internal.mp;
import com.google.android.gms.internal.mq;
import com.google.android.gms.internal.mt;
import com.google.android.gms.internal.mu;
import java.util.ArrayList;
import java.util.List;

public class mk
implements Parcelable.Creator<mj> {
    static void a(mj mj, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, mj.afr, false);
        b.c(parcel, 1000, mj.BR);
        b.a(parcel, 2, mj.mi(), false);
        b.a(parcel, 3, mj.mj());
        b.c(parcel, 4, mj.afu, false);
        b.b(parcel, 6, mj.afv, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cz(parcel);
    }

    public mj cz(Parcel parcel) {
        boolean bl = false;
        ArrayList<String> arrayList = null;
        int n = a.C(parcel);
        ArrayList<mt> arrayList2 = null;
        String string = null;
        ArrayList<mp> arrayList3 = null;
        int n2 = 0;
        block8 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block8;
                }
                case 1: {
                    arrayList3 = a.c(parcel, n3, mp.CREATOR);
                    continue block8;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block8;
                }
                case 2: {
                    string = a.o(parcel, n3);
                    continue block8;
                }
                case 3: {
                    bl = a.c(parcel, n3);
                    continue block8;
                }
                case 4: {
                    arrayList2 = a.c(parcel, n3, mt.CREATOR);
                    continue block8;
                }
                case 6: 
            }
            arrayList = a.C(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new mj(n2, arrayList3, string, bl, arrayList2, arrayList);
    }

    public mj[] ep(int n) {
        return new mj[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ep(n);
    }
}

