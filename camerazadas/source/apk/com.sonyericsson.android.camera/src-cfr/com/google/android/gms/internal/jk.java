/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.jd;
import com.google.android.gms.internal.je;
import com.google.android.gms.internal.ji;

public class jk
implements Parcelable.Creator<ji.a> {
    static void a(ji.a a, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, a.getVersionCode());
        b.c(parcel, 2, a.hd());
        b.a(parcel, 3, a.hj());
        b.c(parcel, 4, a.he());
        b.a(parcel, 5, a.hk());
        b.a(parcel, 6, a.hl(), false);
        b.c(parcel, 7, a.hm());
        b.a(parcel, 8, a.ho(), false);
        b.a(parcel, 9, a.hq(), n, false);
        b.H(parcel, n2);
    }

    public ji.a I(Parcel parcel) {
        jd jd = null;
        int n = 0;
        int n2 = a.C(parcel);
        String string = null;
        String string2 = null;
        boolean bl = false;
        int n3 = 0;
        boolean bl2 = false;
        int n4 = 0;
        int n5 = 0;
        block11 : while (parcel.dataPosition() < n2) {
            int n6 = a.B(parcel);
            switch (a.aD(n6)) {
                default: {
                    a.b(parcel, n6);
                    continue block11;
                }
                case 1: {
                    n5 = a.g(parcel, n6);
                    continue block11;
                }
                case 2: {
                    n4 = a.g(parcel, n6);
                    continue block11;
                }
                case 3: {
                    bl2 = a.c(parcel, n6);
                    continue block11;
                }
                case 4: {
                    n3 = a.g(parcel, n6);
                    continue block11;
                }
                case 5: {
                    bl = a.c(parcel, n6);
                    continue block11;
                }
                case 6: {
                    string2 = a.o(parcel, n6);
                    continue block11;
                }
                case 7: {
                    n = a.g(parcel, n6);
                    continue block11;
                }
                case 8: {
                    string = a.o(parcel, n6);
                    continue block11;
                }
                case 9: 
            }
            jd = (jd)a.a(parcel, n6, jd.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ji.a(n5, n4, bl2, n3, bl, string2, n, string, jd);
    }

    public ji.a[] aI(int n) {
        return new ji.a[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.I(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aI(n);
    }
}

