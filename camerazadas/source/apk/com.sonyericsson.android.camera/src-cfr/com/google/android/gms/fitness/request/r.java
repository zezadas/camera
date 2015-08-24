/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.request.q;

public class r
implements Parcelable.Creator<q> {
    static void a(q q, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, q.jw(), false);
        b.c(parcel, 1000, q.getVersionCode());
        b.a(parcel, 2, q.jr(), n, false);
        b.H(parcel, n2);
    }

    public q bJ(Parcel parcel) {
        PendingIntent pendingIntent = null;
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
                    iBinder = a.p(parcel, n3);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            pendingIntent = a.a(parcel, n3, PendingIntent.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new q(n2, iBinder, pendingIntent);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bJ(parcel);
    }

    public q[] db(int n) {
        return new q[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.db(n);
    }
}

