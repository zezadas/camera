/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.internal.ComparisonFilter;
import com.google.android.gms.drive.query.internal.Operator;

public class a
implements Parcelable.Creator<ComparisonFilter> {
    static void a(ComparisonFilter comparisonFilter, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1000, comparisonFilter.BR);
        b.a(parcel, 1, comparisonFilter.QK, n, false);
        b.a(parcel, 2, comparisonFilter.QL, n, false);
        b.H(parcel, n2);
    }

    public ComparisonFilter aK(Parcel parcel) {
        MetadataBundle metadataBundle = null;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        Operator operator = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block5;
                }
                case 1000: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block5;
                }
                case 1: {
                    operator = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, Operator.CREATOR);
                    continue block5;
                }
                case 2: 
            }
            metadataBundle = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, MetadataBundle.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ComparisonFilter(n2, operator, metadataBundle);
    }

    public ComparisonFilter[] bW(int n) {
        return new ComparisonFilter[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aK(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bW(n);
    }
}

