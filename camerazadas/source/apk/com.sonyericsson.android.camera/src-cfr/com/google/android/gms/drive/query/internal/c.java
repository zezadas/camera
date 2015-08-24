/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.query.internal.FieldWithSortOrder;

public class c
implements Parcelable.Creator<FieldWithSortOrder> {
    static void a(FieldWithSortOrder fieldWithSortOrder, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1000, fieldWithSortOrder.BR);
        b.a(parcel, 1, fieldWithSortOrder.PB, false);
        b.a(parcel, 2, fieldWithSortOrder.QN);
        b.H(parcel, n);
    }

    public FieldWithSortOrder aM(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        String string = null;
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
                    string = a.o(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new FieldWithSortOrder(n2, string, bl);
    }

    public FieldWithSortOrder[] bY(int n) {
        return new FieldWithSortOrder[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aM(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bY(n);
    }
}

