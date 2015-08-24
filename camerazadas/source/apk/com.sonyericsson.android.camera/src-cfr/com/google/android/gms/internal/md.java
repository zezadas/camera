/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.mc;

public class md
implements Parcelable.Creator<mc> {
    static void a(mc mc, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, mc.getRequestId(), false);
        b.c(parcel, 1000, mc.getVersionCode());
        b.a(parcel, 2, mc.getExpirationTime());
        b.a(parcel, 3, mc.ma());
        b.a(parcel, 4, mc.getLatitude());
        b.a(parcel, 5, mc.getLongitude());
        b.a(parcel, 6, mc.mb());
        b.c(parcel, 7, mc.mc());
        b.c(parcel, 8, mc.getNotificationResponsiveness());
        b.c(parcel, 9, mc.md());
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cw(parcel);
    }

    public mc cw(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        int n3 = 0;
        short s = 0;
        double d = 0.0;
        double d2 = 0.0;
        float f = 0.0f;
        long l = 0;
        int n4 = 0;
        int n5 = -1;
        block12 : while (parcel.dataPosition() < n) {
            int n6 = a.B(parcel);
            switch (a.aD(n6)) {
                default: {
                    a.b(parcel, n6);
                    continue block12;
                }
                case 1: {
                    string = a.o(parcel, n6);
                    continue block12;
                }
                case 1000: {
                    n2 = a.g(parcel, n6);
                    continue block12;
                }
                case 2: {
                    l = a.i(parcel, n6);
                    continue block12;
                }
                case 3: {
                    s = a.f(parcel, n6);
                    continue block12;
                }
                case 4: {
                    d = a.m(parcel, n6);
                    continue block12;
                }
                case 5: {
                    d2 = a.m(parcel, n6);
                    continue block12;
                }
                case 6: {
                    f = a.l(parcel, n6);
                    continue block12;
                }
                case 7: {
                    n3 = a.g(parcel, n6);
                    continue block12;
                }
                case 8: {
                    n4 = a.g(parcel, n6);
                    continue block12;
                }
                case 9: 
            }
            n5 = a.g(parcel, n6);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new mc(n2, string, n3, s, d, d2, f, l, n4, n5);
    }

    public mc[] em(int n) {
        return new mc[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.em(n);
    }
}

