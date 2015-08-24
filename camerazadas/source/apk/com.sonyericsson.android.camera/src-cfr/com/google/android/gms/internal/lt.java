/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ls;

public class lt
implements Parcelable.Creator<ls> {
    static void a(ls ls, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, ls.uid);
        b.c(parcel, 1000, ls.getVersionCode());
        b.a(parcel, 2, ls.packageName, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cu(parcel);
    }

    public ls cu(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        String string = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    n = a.g(parcel, n4);
                    continue block5;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: 
            }
            string = a.o(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ls(n3, n, string);
    }

    public ls[] ei(int n) {
        return new ls[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ei(n);
    }
}

