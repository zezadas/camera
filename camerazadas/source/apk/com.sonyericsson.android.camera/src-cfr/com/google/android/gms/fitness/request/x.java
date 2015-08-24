/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.w;

public class x
implements Parcelable.Creator<w> {
    static void a(w w, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, w.getSession(), n, false);
        b.c(parcel, 1000, w.getVersionCode());
        b.H(parcel, n2);
    }

    public w bN(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        Session session = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    session = a.a(parcel, n3, Session.CREATOR);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new w(n2, session);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bN(parcel);
    }

    public w[] df(int n) {
        return new w[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.df(n);
    }
}

