/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.bj;
import com.google.android.gms.internal.bk;
import java.util.ArrayList;
import java.util.List;

public class aw
implements Parcelable.Creator<av> {
    static void a(av av, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, av.versionCode);
        b.a(parcel, 2, av.nT);
        b.a(parcel, 3, av.extras, false);
        b.c(parcel, 4, av.nU);
        b.b(parcel, 5, av.nV, false);
        b.a(parcel, 6, av.nW);
        b.c(parcel, 7, av.nX);
        b.a(parcel, 8, av.nY);
        b.a(parcel, 9, av.nZ, false);
        b.a(parcel, 10, av.oa, n, false);
        b.a(parcel, 11, av.ob, n, false);
        b.a(parcel, 12, av.oc, false);
        b.a(parcel, 13, av.od, false);
        b.H(parcel, n2);
    }

    public av b(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        long l = 0;
        Bundle bundle = null;
        int n3 = 0;
        ArrayList<String> arrayList = null;
        boolean bl = false;
        int n4 = 0;
        boolean bl2 = false;
        String string = null;
        bj bj = null;
        Location location = null;
        String string2 = null;
        Bundle bundle2 = null;
        block15 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block15;
                }
                case 1: {
                    n2 = a.g(parcel, n5);
                    continue block15;
                }
                case 2: {
                    l = a.i(parcel, n5);
                    continue block15;
                }
                case 3: {
                    bundle = a.q(parcel, n5);
                    continue block15;
                }
                case 4: {
                    n3 = a.g(parcel, n5);
                    continue block15;
                }
                case 5: {
                    arrayList = a.C(parcel, n5);
                    continue block15;
                }
                case 6: {
                    bl = a.c(parcel, n5);
                    continue block15;
                }
                case 7: {
                    n4 = a.g(parcel, n5);
                    continue block15;
                }
                case 8: {
                    bl2 = a.c(parcel, n5);
                    continue block15;
                }
                case 9: {
                    string = a.o(parcel, n5);
                    continue block15;
                }
                case 10: {
                    bj = (bj)a.a(parcel, n5, bj.CREATOR);
                    continue block15;
                }
                case 11: {
                    location = a.a(parcel, n5, Location.CREATOR);
                    continue block15;
                }
                case 12: {
                    string2 = a.o(parcel, n5);
                    continue block15;
                }
                case 13: 
            }
            bundle2 = a.q(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new av(n2, l, bundle, n3, arrayList, bl, n4, bl2, string, bj, location, string2, bundle2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.b(parcel);
    }

    public av[] e(int n) {
        return new av[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.e(n);
    }
}

