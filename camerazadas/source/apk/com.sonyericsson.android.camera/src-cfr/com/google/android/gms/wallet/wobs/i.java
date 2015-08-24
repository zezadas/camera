/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.wobs.f;
import com.google.android.gms.wallet.wobs.g;
import com.google.android.gms.wallet.wobs.l;

public class i
implements Parcelable.Creator<f> {
    static void a(f f, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, f.getVersionCode());
        b.a(parcel, 2, f.label, false);
        b.a(parcel, 3, f.auC, n, false);
        b.a(parcel, 4, f.type, false);
        b.a(parcel, 5, f.atc, n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dK(parcel);
    }

    public f dK(Parcel parcel) {
        l l = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        g g = null;
        String string2 = null;
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
                    string2 = a.o(parcel, n3);
                    continue block7;
                }
                case 3: {
                    g = a.a(parcel, n3, g.CREATOR);
                    continue block7;
                }
                case 4: {
                    string = a.o(parcel, n3);
                    continue block7;
                }
                case 5: 
            }
            l = a.a(parcel, n3, l.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new f(n2, string2, g, string, l);
    }

    public f[] fN(int n) {
        return new f[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fN(n);
    }
}

