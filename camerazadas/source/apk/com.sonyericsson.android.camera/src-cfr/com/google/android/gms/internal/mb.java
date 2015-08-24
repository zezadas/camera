/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.ls;
import com.google.android.gms.internal.lt;
import com.google.android.gms.internal.ma;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.b;
import java.util.List;

public class mb
implements Parcelable.Creator<ma> {
    static void a(ma ma, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, ma.UI, n, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1000, ma.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, ma.afi);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, ma.afj);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, ma.afk);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 5, ma.afl, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, ma.mTag, false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cv(parcel);
    }

    public ma cv(Parcel parcel) {
        String string = null;
        boolean bl = true;
        boolean bl2 = false;
        int n = a.C(parcel);
        List<ls> list = ma.afh;
        boolean bl3 = true;
        LocationRequest locationRequest = null;
        int n2 = 0;
        block9 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block9;
                }
                case 1: {
                    locationRequest = (LocationRequest)a.a(parcel, n3, LocationRequest.CREATOR);
                    continue block9;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block9;
                }
                case 2: {
                    bl2 = a.c(parcel, n3);
                    continue block9;
                }
                case 3: {
                    bl3 = a.c(parcel, n3);
                    continue block9;
                }
                case 4: {
                    bl = a.c(parcel, n3);
                    continue block9;
                }
                case 5: {
                    list = a.c(parcel, n3, ls.CREATOR);
                    continue block9;
                }
                case 6: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ma(n2, locationRequest, bl2, bl3, bl, list, string);
    }

    public ma[] ej(int n) {
        return new ma[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ej(n);
    }
}

