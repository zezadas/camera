/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.query.internal.ComparisonFilter;
import com.google.android.gms.drive.query.internal.FieldOnlyFilter;
import com.google.android.gms.drive.query.internal.FilterHolder;
import com.google.android.gms.drive.query.internal.HasFilter;
import com.google.android.gms.drive.query.internal.InFilter;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.MatchAllFilter;
import com.google.android.gms.drive.query.internal.NotFilter;
import com.google.android.gms.drive.query.internal.a;
import com.google.android.gms.drive.query.internal.g;
import com.google.android.gms.drive.query.internal.h;
import com.google.android.gms.drive.query.internal.j;

public class d
implements Parcelable.Creator<FilterHolder> {
    static void a(FilterHolder filterHolder, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, filterHolder.QO, n, false);
        b.c(parcel, 1000, filterHolder.BR);
        b.a(parcel, 2, filterHolder.QP, n, false);
        b.a(parcel, 3, filterHolder.QQ, n, false);
        b.a(parcel, 4, filterHolder.QR, n, false);
        b.a(parcel, 5, filterHolder.QS, n, false);
        b.a(parcel, 6, filterHolder.QT, n, false);
        b.a(parcel, 7, filterHolder.QU, n, false);
        b.H(parcel, n2);
    }

    public FilterHolder aN(Parcel parcel) {
        HasFilter hasFilter = null;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        MatchAllFilter matchAllFilter = null;
        InFilter inFilter = null;
        NotFilter notFilter = null;
        LogicalFilter logicalFilter = null;
        FieldOnlyFilter fieldOnlyFilter = null;
        ComparisonFilter comparisonFilter = null;
        block10 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block10;
                }
                case 1: {
                    comparisonFilter = (ComparisonFilter)com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, ComparisonFilter.CREATOR);
                    continue block10;
                }
                case 1000: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block10;
                }
                case 2: {
                    fieldOnlyFilter = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, FieldOnlyFilter.CREATOR);
                    continue block10;
                }
                case 3: {
                    logicalFilter = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, LogicalFilter.CREATOR);
                    continue block10;
                }
                case 4: {
                    notFilter = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, NotFilter.CREATOR);
                    continue block10;
                }
                case 5: {
                    inFilter = (InFilter)com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, InFilter.CREATOR);
                    continue block10;
                }
                case 6: {
                    matchAllFilter = (MatchAllFilter)com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, MatchAllFilter.CREATOR);
                    continue block10;
                }
                case 7: 
            }
            hasFilter = (HasFilter)com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, HasFilter.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new FilterHolder(n2, comparisonFilter, fieldOnlyFilter, logicalFilter, notFilter, inFilter, matchAllFilter, hasFilter);
    }

    public FilterHolder[] bZ(int n) {
        return new FilterHolder[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aN(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bZ(n);
    }
}

