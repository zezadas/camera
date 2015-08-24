/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nm;

public class nn
implements Parcelable.Creator<nm> {
    static void a(nm nm, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, nm.versionCode);
        b.a(parcel, 2, nm.packageName, false);
        b.c(parcel, 3, nm.akR);
        b.c(parcel, 4, nm.akS);
        b.a(parcel, 5, nm.akT, false);
        b.a(parcel, 6, nm.akU, false);
        b.a(parcel, 7, nm.akV);
        b.H(parcel, n);
    }

    public nm cY(Parcel parcel) {
        String string = null;
        int n = 0;
        int n2 = a.C(parcel);
        boolean bl = true;
        String string2 = null;
        int n3 = 0;
        String string3 = null;
        int n4 = 0;
        block9 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block9;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block9;
                }
                case 2: {
                    string3 = a.o(parcel, n5);
                    continue block9;
                }
                case 3: {
                    n3 = a.g(parcel, n5);
                    continue block9;
                }
                case 4: {
                    n = a.g(parcel, n5);
                    continue block9;
                }
                case 5: {
                    string2 = a.o(parcel, n5);
                    continue block9;
                }
                case 6: {
                    string = a.o(parcel, n5);
                    continue block9;
                }
                case 7: 
            }
            bl = a.c(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new nm(n4, string3, n3, n, string2, string, bl);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cY(parcel);
    }

    public nm[] eP(int n) {
        return new nm[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eP(n);
    }
}

