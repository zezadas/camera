/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.internal.FieldOnlyFilter;

public class b
implements Parcelable.Creator<FieldOnlyFilter> {
    static void a(FieldOnlyFilter fieldOnlyFilter, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1000, fieldOnlyFilter.BR);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, fieldOnlyFilter.QL, n, false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    public FieldOnlyFilter aL(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        MetadataBundle metadataBundle = null;
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
            metadataBundle = a.a(parcel, n3, MetadataBundle.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new FieldOnlyFilter(n2, metadataBundle);
    }

    public FieldOnlyFilter[] bX(int n) {
        return new FieldOnlyFilter[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aL(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bX(n);
    }
}

