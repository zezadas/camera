/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.f;
import com.google.android.gms.plus.internal.h;

public class j
implements Parcelable.Creator<h> {
    static void a(h h, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, h.getAccountName(), false);
        b.c(parcel, 1000, h.getVersionCode());
        b.a(parcel, 2, h.ng(), false);
        b.a(parcel, 3, h.nh(), false);
        b.a(parcel, 4, h.ni(), false);
        b.a(parcel, 5, h.nj(), false);
        b.a(parcel, 6, h.nk(), false);
        b.a(parcel, 7, h.nl(), false);
        b.a(parcel, 8, h.nm(), false);
        b.a(parcel, 9, h.nn(), n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.da(parcel);
    }

    public h da(Parcel parcel) {
        PlusCommonExtras plusCommonExtras = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        String[] arrstring = null;
        String[] arrstring2 = null;
        String[] arrstring3 = null;
        String string5 = null;
        block12 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block12;
                }
                case 1: {
                    string5 = a.o(parcel, n3);
                    continue block12;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block12;
                }
                case 2: {
                    arrstring3 = a.A(parcel, n3);
                    continue block12;
                }
                case 3: {
                    arrstring2 = a.A(parcel, n3);
                    continue block12;
                }
                case 4: {
                    arrstring = a.A(parcel, n3);
                    continue block12;
                }
                case 5: {
                    string4 = a.o(parcel, n3);
                    continue block12;
                }
                case 6: {
                    string3 = a.o(parcel, n3);
                    continue block12;
                }
                case 7: {
                    string2 = a.o(parcel, n3);
                    continue block12;
                }
                case 8: {
                    string = a.o(parcel, n3);
                    continue block12;
                }
                case 9: 
            }
            plusCommonExtras = (PlusCommonExtras)a.a(parcel, n3, PlusCommonExtras.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new h(n2, string5, arrstring3, arrstring2, arrstring, string4, string3, string2, string, plusCommonExtras);
    }

    public h[] eS(int n) {
        return new h[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eS(n);
    }
}

