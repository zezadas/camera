/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Field;
import java.util.ArrayList;
import java.util.List;

public class h
implements Parcelable.Creator<DataType> {
    static void a(DataType dataType, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, dataType.getName(), false);
        b.c(parcel, 1000, dataType.getVersionCode());
        b.c(parcel, 2, dataType.getFields(), false);
        b.H(parcel, n);
    }

    public DataType bo(Parcel parcel) {
        ArrayList<Field> arrayList = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    string = a.o(parcel, n3);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            arrayList = a.c(parcel, n3, Field.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new DataType(n2, string, arrayList);
    }

    public DataType[] cE(int n) {
        return new DataType[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bo(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cE(n);
    }
}

