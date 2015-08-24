/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.query.Query;
import com.google.android.gms.drive.query.SortOrder;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import java.util.ArrayList;
import java.util.List;

public class a
implements Parcelable.Creator<Query> {
    static void a(Query query, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1000, query.BR);
        b.a(parcel, 1, query.QB, n, false);
        b.a(parcel, 3, query.QC, false);
        b.a(parcel, 4, query.QD, n, false);
        b.b(parcel, 5, query.QE, false);
        b.H(parcel, n2);
    }

    public Query aI(Parcel parcel) {
        ArrayList<String> arrayList = null;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        SortOrder sortOrder = null;
        String string = null;
        LogicalFilter logicalFilter = null;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block7;
                }
                case 1000: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block7;
                }
                case 1: {
                    logicalFilter = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, LogicalFilter.CREATOR);
                    continue block7;
                }
                case 3: {
                    string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block7;
                }
                case 4: {
                    sortOrder = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, SortOrder.CREATOR);
                    continue block7;
                }
                case 5: 
            }
            arrayList = com.google.android.gms.common.internal.safeparcel.a.C(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new Query(n2, logicalFilter, string, sortOrder, arrayList);
    }

    public Query[] bU(int n) {
        return new Query[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aI(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bU(n);
    }
}

