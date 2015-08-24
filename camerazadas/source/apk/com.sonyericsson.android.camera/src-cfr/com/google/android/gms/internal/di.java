/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.dj;

public class di
implements Parcelable.Creator<dj> {
    static void a(dj dj, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, dj.versionCode);
        b.a(parcel, 2, dj.rp, false);
        b.a(parcel, 3, dj.rq, false);
        b.a(parcel, 4, dj.mimeType, false);
        b.a(parcel, 5, dj.packageName, false);
        b.a(parcel, 6, dj.rr, false);
        b.a(parcel, 7, dj.rs, false);
        b.a(parcel, 8, dj.rt, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.e(parcel);
    }

    public dj e(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        String string6 = null;
        String string7 = null;
        block10 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block10;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block10;
                }
                case 2: {
                    string7 = a.o(parcel, n3);
                    continue block10;
                }
                case 3: {
                    string6 = a.o(parcel, n3);
                    continue block10;
                }
                case 4: {
                    string5 = a.o(parcel, n3);
                    continue block10;
                }
                case 5: {
                    string4 = a.o(parcel, n3);
                    continue block10;
                }
                case 6: {
                    string3 = a.o(parcel, n3);
                    continue block10;
                }
                case 7: {
                    string2 = a.o(parcel, n3);
                    continue block10;
                }
                case 8: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new dj(n2, string7, string6, string5, string4, string3, string2, string);
    }

    public dj[] l(int n) {
        return new dj[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.l(n);
    }
}

