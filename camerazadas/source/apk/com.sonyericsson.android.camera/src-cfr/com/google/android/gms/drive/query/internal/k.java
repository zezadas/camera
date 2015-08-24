/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.query.internal.FilterHolder;
import com.google.android.gms.drive.query.internal.NotFilter;

public class k
implements Parcelable.Creator<NotFilter> {
    static void a(NotFilter notFilter, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1000, notFilter.BR);
        b.a(parcel, 1, notFilter.QY, n, false);
        b.H(parcel, n2);
    }

    public NotFilter aS(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        FilterHolder filterHolder = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block4;
                }
                case 1: 
            }
            filterHolder = a.a(parcel, n3, FilterHolder.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new NotFilter(n2, filterHolder);
    }

    public NotFilter[] ce(int n) {
        return new NotFilter[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aS(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ce(n);
    }
}

