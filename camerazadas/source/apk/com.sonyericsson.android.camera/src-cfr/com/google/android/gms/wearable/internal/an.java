/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.internal.am;

public class an
implements Parcelable.Creator<am> {
    static void a(am am, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, am.versionCode);
        b.a(parcel, 2, am.packageName, false);
        b.a(parcel, 3, am.label, false);
        b.a(parcel, 4, am.avN);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ee(parcel);
    }

    public am ee(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        long l = 0;
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
            l = a.i(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new am(n2, string2, string, l);
    }

    public am[] gh(int n) {
        return new am[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.gh(n);
    }
}

