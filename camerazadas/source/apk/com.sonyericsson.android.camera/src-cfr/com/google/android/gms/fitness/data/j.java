/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.Field;

public class j
implements Parcelable.Creator<Field> {
    static void a(Field field, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, field.getName(), false);
        b.c(parcel, 1000, field.getVersionCode());
        b.c(parcel, 2, field.getFormat());
        b.H(parcel, n);
    }

    public Field bq(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        String string = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    string = a.o(parcel, n4);
                    continue block5;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: 
            }
            n = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new Field(n3, string, n);
    }

    public Field[] cG(int n) {
        return new Field[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bq(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cG(n);
    }
}

