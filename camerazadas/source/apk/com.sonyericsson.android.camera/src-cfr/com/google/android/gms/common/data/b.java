/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.data.a;
import com.google.android.gms.common.internal.safeparcel.a;

public class b
implements Parcelable.Creator<a> {
    static void a(a a, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, a.BR);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, a.JR, n, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 3, a.FD);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    public a[] ao(int n) {
        return new a[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.y(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ao(n);
    }

    public a y(Parcel parcel) {
        int n = 0;
        int n2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n4)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    n3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block5;
                }
                case 2: {
                    parcelFileDescriptor = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n4, ParcelFileDescriptor.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            n = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new a(n3, parcelFileDescriptor, n);
    }
}

