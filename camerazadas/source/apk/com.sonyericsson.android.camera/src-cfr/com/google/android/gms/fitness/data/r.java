/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.data.q;

public class r
implements Parcelable.Creator<q> {
    static void a(q q, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, q.getSession(), n, false);
        b.c(parcel, 1000, q.BR);
        b.a(parcel, 2, q.iW(), n, false);
        b.H(parcel, n2);
    }

    public q bv(Parcel parcel) {
        DataSet dataSet = null;
        int n = a.C(parcel);
        int n2 = 0;
        Session session = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    session = a.a(parcel, n3, Session.CREATOR);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            dataSet = a.a(parcel, n3, DataSet.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new q(n2, session, dataSet);
    }

    public q[] cM(int n) {
        return new q[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bv(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cM(n);
    }
}

