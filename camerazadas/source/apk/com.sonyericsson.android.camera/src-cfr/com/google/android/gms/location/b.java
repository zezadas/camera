/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.location.LocationRequest;

public class b
implements Parcelable.Creator<LocationRequest> {
    static void a(LocationRequest locationRequest, Parcel parcel, int n) {
        n = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, locationRequest.mPriority);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1000, locationRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, locationRequest.aes);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, locationRequest.aet);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, locationRequest.UK);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, locationRequest.aei);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 6, locationRequest.aeu);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, locationRequest.aev);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, locationRequest.aew);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cs(parcel);
    }

    public LocationRequest cs(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        int n3 = 102;
        long l = 3600000;
        long l2 = 600000;
        boolean bl = false;
        long l3 = Long.MAX_VALUE;
        int n4 = Integer.MAX_VALUE;
        float f = 0.0f;
        long l4 = 0;
        block11 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block11;
                }
                case 1: {
                    n3 = a.g(parcel, n5);
                    continue block11;
                }
                case 1000: {
                    n2 = a.g(parcel, n5);
                    continue block11;
                }
                case 2: {
                    l = a.i(parcel, n5);
                    continue block11;
                }
                case 3: {
                    l2 = a.i(parcel, n5);
                    continue block11;
                }
                case 4: {
                    bl = a.c(parcel, n5);
                    continue block11;
                }
                case 5: {
                    l3 = a.i(parcel, n5);
                    continue block11;
                }
                case 6: {
                    n4 = a.g(parcel, n5);
                    continue block11;
                }
                case 7: {
                    f = a.l(parcel, n5);
                    continue block11;
                }
                case 8: 
            }
            l4 = a.i(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new LocationRequest(n2, n3, l, l2, bl, l3, n4, f, l4);
    }

    public LocationRequest[] ed(int n) {
        return new LocationRequest[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ed(n);
    }
}

