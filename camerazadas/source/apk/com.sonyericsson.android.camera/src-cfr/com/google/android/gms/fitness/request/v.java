/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.request.u;

public class v
implements Parcelable.Creator<u> {
    static void a(u u, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, u.jr(), n, false);
        b.c(parcel, 1000, u.getVersionCode());
        b.H(parcel, n2);
    }

    public u bM(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        PendingIntent pendingIntent = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    pendingIntent = a.a(parcel, n3, PendingIntent.CREATOR);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new u(n2, pendingIntent);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bM(parcel);
    }

    public u[] de(int n) {
        return new u[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.de(n);
    }
}

