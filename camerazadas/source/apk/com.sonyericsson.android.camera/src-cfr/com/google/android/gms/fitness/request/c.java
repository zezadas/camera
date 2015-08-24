/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.b;

public class c
implements Parcelable.Creator<b> {
    static void a(b b, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, b.getDeviceAddress(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1000, b.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b.jf(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    public b bA(Parcel parcel) {
        BleDevice bleDevice = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    string = a.o(parcel, n3);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            bleDevice = a.a(parcel, n3, BleDevice.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new b(n2, string, bleDevice);
    }

    public b[] cR(int n) {
        return new b[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bA(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cR(n);
    }
}

