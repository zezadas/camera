/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.internal.ao;
import com.google.android.gms.wearable.internal.m;

public class ap
implements Parcelable.Creator<ao> {
    static void a(ao ao, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, ao.versionCode);
        b.c(parcel, 2, ao.statusCode);
        b.a(parcel, 3, ao.avA, n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ef(parcel);
    }

    public ao ef(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        m m = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: {
                    n = a.g(parcel, n4);
                    continue block5;
                }
                case 3: 
            }
            m = a.a(parcel, n4, m.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ao(n3, n, m);
    }

    public ao[] gi(int n) {
        return new ao[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.gi(n);
    }
}

