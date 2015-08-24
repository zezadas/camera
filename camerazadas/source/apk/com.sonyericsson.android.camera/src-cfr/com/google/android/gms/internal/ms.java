/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.mp;
import com.google.android.gms.internal.mq;
import com.google.android.gms.internal.mr;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.i;
import java.util.ArrayList;
import java.util.List;

public class ms
implements Parcelable.Creator<mr> {
    static void a(mr mr, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, mr.getName(), false);
        b.c(parcel, 1000, mr.BR);
        b.a(parcel, 2, mr.ml(), n, false);
        b.a(parcel, 3, mr.getAddress(), false);
        b.c(parcel, 4, mr.mm(), false);
        b.a(parcel, 5, mr.getPhoneNumber(), false);
        b.a(parcel, 6, mr.mn(), false);
        b.H(parcel, n2);
    }

    public mr cD(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string2 = null;
        ArrayList<mp> arrayList = null;
        String string3 = null;
        LatLng latLng = null;
        String string4 = null;
        block9 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block9;
                }
                case 1: {
                    string4 = a.o(parcel, n3);
                    continue block9;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block9;
                }
                case 2: {
                    latLng = (LatLng)a.a(parcel, n3, LatLng.CREATOR);
                    continue block9;
                }
                case 3: {
                    string3 = a.o(parcel, n3);
                    continue block9;
                }
                case 4: {
                    arrayList = a.c(parcel, n3, mp.CREATOR);
                    continue block9;
                }
                case 5: {
                    string2 = a.o(parcel, n3);
                    continue block9;
                }
                case 6: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new mr(n2, string4, latLng, string3, arrayList, string2, string);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cD(parcel);
    }

    public mr[] et(int n) {
        return new mr[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.et(n);
    }
}

