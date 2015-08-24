/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.wearable.internal.b;

public class c
implements Parcelable.Creator<b> {
    static void a(b b, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, b.BR);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b.pV(), false);
        com.google.android.gms.common.internal.safeparcel.b.a((Parcel)parcel, (int)3, (Parcelable[])b.avl, (int)n, (boolean)false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dS(parcel);
    }

    public b dS(Parcel parcel) {
        IntentFilter[] arrintentFilter = null;
        int n = a.C(parcel);
        int n2 = 0;
        IBinder iBinder = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: {
                    iBinder = a.p(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            arrintentFilter = a.b(parcel, n3, IntentFilter.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new b(n2, iBinder, arrintentFilter);
    }

    public b[] fV(int n) {
        return new b[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fV(n);
    }
}

