/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.query.internal.FilterHolder;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.Operator;
import java.util.ArrayList;
import java.util.List;

public class i
implements Parcelable.Creator<LogicalFilter> {
    static void a(LogicalFilter logicalFilter, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1000, logicalFilter.BR);
        b.a(parcel, 1, logicalFilter.QK, n, false);
        b.c(parcel, 2, logicalFilter.QX, false);
        b.H(parcel, n2);
    }

    public LogicalFilter aQ(Parcel parcel) {
        ArrayList<FilterHolder> arrayList = null;
        int n = a.C(parcel);
        int n2 = 0;
        Operator operator = null;
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
                    operator = a.a(parcel, n3, Operator.CREATOR);
                    continue block5;
                }
                case 2: 
            }
            arrayList = a.c(parcel, n3, FilterHolder.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new LogicalFilter(n2, operator, arrayList);
    }

    public LogicalFilter[] cc(int n) {
        return new LogicalFilter[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aQ(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cc(n);
    }
}

