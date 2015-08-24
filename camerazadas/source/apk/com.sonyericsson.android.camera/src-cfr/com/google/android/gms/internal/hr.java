/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.hk;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hq;

public class hr
implements Parcelable.Creator<hq> {
    static void a(hq hq, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, hq.name, false);
        b.c(parcel, 1000, hq.BR);
        b.a(parcel, 2, hq.Co, false);
        b.a(parcel, 3, hq.Cp);
        b.c(parcel, 4, hq.weight);
        b.a(parcel, 5, hq.Cq);
        b.a(parcel, 6, hq.Cr, false);
        b.a((Parcel)parcel, (int)7, (Parcelable[])hq.Cs, (int)n, (boolean)false);
        b.a(parcel, 8, hq.Ct, false);
        b.a(parcel, 11, hq.Cu, false);
        b.H(parcel, n2);
    }

    public hq[] Q(int n) {
        return new hq[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.r(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.Q(n);
    }

    public hq r(Parcel parcel) {
        boolean bl = false;
        String string = null;
        int n = a.C(parcel);
        int n2 = 1;
        Object object = null;
        hk[] arrhk = null;
        String string2 = null;
        boolean bl2 = false;
        String string3 = null;
        String string4 = null;
        int n3 = 0;
        block12 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block12;
                }
                case 1: {
                    string4 = a.o(parcel, n4);
                    continue block12;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block12;
                }
                case 2: {
                    string3 = a.o(parcel, n4);
                    continue block12;
                }
                case 3: {
                    bl2 = a.c(parcel, n4);
                    continue block12;
                }
                case 4: {
                    n2 = a.g(parcel, n4);
                    continue block12;
                }
                case 5: {
                    bl = a.c(parcel, n4);
                    continue block12;
                }
                case 6: {
                    string2 = a.o(parcel, n4);
                    continue block12;
                }
                case 7: {
                    arrhk = (hk[])a.b(parcel, n4, hk.CREATOR);
                    continue block12;
                }
                case 8: {
                    object = a.u(parcel, n4);
                    continue block12;
                }
                case 11: 
            }
            string = a.o(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new hq(n3, string4, string3, bl2, n2, bl, string2, arrhk, (int[])object, string);
    }
}

