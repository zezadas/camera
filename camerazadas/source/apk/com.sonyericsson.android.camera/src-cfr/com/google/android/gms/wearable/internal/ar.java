/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.internal.aq;

public class ar
implements Parcelable.Creator<aq> {
    static void a(aq aq, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, aq.BR);
        b.a(parcel, 2, aq.pV(), false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.eg(parcel);
    }

    public aq eg(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        IBinder iBinder = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block4;
                }
                case 2: 
            }
            iBinder = a.p(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new aq(n2, iBinder);
    }

    public aq[] gj(int n) {
        return new aq[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.gj(n);
    }
}

