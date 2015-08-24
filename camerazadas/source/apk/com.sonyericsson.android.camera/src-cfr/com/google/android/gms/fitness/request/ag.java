/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.fitness.request.af;

public class ag
implements Parcelable.Creator<af> {
    static void a(af af, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, af.jD(), n, false);
        b.c(parcel, 1000, af.getVersionCode());
        b.a(parcel, 2, af.jE());
        b.H(parcel, n2);
    }

    public af bS(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        Subscription subscription = null;
        int n2 = 0;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    subscription = a.a(parcel, n3, Subscription.CREATOR);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new af(n2, subscription, bl);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bS(parcel);
    }

    public af[] dk(int n) {
        return new af[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dk(n);
    }
}

