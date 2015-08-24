/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.c;

public class d
implements Parcelable.Creator<c> {
    static void a(c c, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, c.aex);
        b.c(parcel, 1000, c.getVersionCode());
        b.c(parcel, 2, c.aey);
        b.a(parcel, 3, c.aez);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ct(parcel);
    }

    public c ct(Parcel parcel) {
        int n = 1;
        int n2 = a.C(parcel);
        int n3 = 0;
        long l = 0;
        int n4 = 1;
        block6 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block6;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block6;
                }
                case 1000: {
                    n3 = a.g(parcel, n5);
                    continue block6;
                }
                case 2: {
                    n = a.g(parcel, n5);
                    continue block6;
                }
                case 3: 
            }
            l = a.i(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new c(n3, n4, n, l);
    }

    public c[] eh(int n) {
        return new c[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eh(n);
    }
}

