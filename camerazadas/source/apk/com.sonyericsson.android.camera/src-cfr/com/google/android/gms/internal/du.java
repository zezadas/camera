/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.dv;

public class du
implements Parcelable.Creator<dv> {
    static void a(dv dv, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, dv.versionCode);
        b.a(parcel, 2, dv.ck(), false);
        b.a(parcel, 3, dv.cl(), false);
        b.a(parcel, 4, dv.cm(), false);
        b.a(parcel, 5, dv.cn(), false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.g(parcel);
    }

    public dv g(Parcel parcel) {
        IBinder iBinder = null;
        int n = a.C(parcel);
        int n2 = 0;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block7;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block7;
                }
                case 2: {
                    iBinder4 = a.p(parcel, n3);
                    continue block7;
                }
                case 3: {
                    iBinder3 = a.p(parcel, n3);
                    continue block7;
                }
                case 4: {
                    iBinder2 = a.p(parcel, n3);
                    continue block7;
                }
                case 5: 
            }
            iBinder = a.p(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new dv(n2, iBinder4, iBinder3, iBinder2, iBinder);
    }

    public dv[] n(int n) {
        return new dv[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.n(n);
    }
}

