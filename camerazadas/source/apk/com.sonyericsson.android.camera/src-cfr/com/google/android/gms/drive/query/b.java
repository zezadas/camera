/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.drive.query.SortOrder;
import com.google.android.gms.drive.query.internal.FieldWithSortOrder;
import com.google.android.gms.drive.query.internal.c;
import java.util.ArrayList;
import java.util.List;

public class b
implements Parcelable.Creator<SortOrder> {
    static void a(SortOrder sortOrder, Parcel parcel, int n) {
        n = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1000, sortOrder.BR);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, sortOrder.QI, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, sortOrder.QJ);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n);
    }

    public SortOrder aJ(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        ArrayList arrayList = null;
        int n2 = 0;
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
                    arrayList = a.c(parcel, n3, FieldWithSortOrder.CREATOR);
                    continue block5;
                }
                case 2: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new SortOrder(n2, arrayList, bl);
    }

    public SortOrder[] bV(int n) {
        return new SortOrder[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aJ(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bV(n);
    }
}

