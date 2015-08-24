/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.hm;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.ht;
import java.util.ArrayList;
import java.util.List;

public class ho
implements Parcelable.Creator<hm.b> {
    static void a(hm.b b, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1000, b.BR);
        b.a(parcel, 1, b.Ck, n, false);
        b.c(parcel, 2, b.Cl, false);
        b.H(parcel, n2);
    }

    public hm.b[] N(int n) {
        return new hm.b[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.q(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.N(n);
    }

    public hm.b q(Parcel parcel) {
        ArrayList arrayList = null;
        int n = a.C(parcel);
        int n2 = 0;
        Status status = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 1: {
                    status = (Status)a.a(parcel, n3, Status.CREATOR);
                    continue block5;
                }
                case 2: 
            }
            arrayList = a.c(parcel, n3, hs.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new hm.b(n2, status, arrayList);
    }
}

