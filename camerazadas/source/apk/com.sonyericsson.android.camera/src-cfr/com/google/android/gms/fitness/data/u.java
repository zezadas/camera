/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.Value;

public class u
implements Parcelable.Creator<Value> {
    static void a(Value value, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, value.getFormat());
        b.c(parcel, 1000, value.getVersionCode());
        b.a(parcel, 2, value.isSet());
        b.a(parcel, 3, value.ja());
        b.H(parcel, n);
    }

    public Value bx(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        float f = 0.0f;
        int n2 = 0;
        int n3 = 0;
        block6 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block6;
                }
                case 1: {
                    n2 = a.g(parcel, n4);
                    continue block6;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block6;
                }
                case 2: {
                    bl = a.c(parcel, n4);
                    continue block6;
                }
                case 3: 
            }
            f = a.l(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new Value(n3, n2, bl, f);
    }

    public Value[] cO(int n) {
        return new Value[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bx(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cO(n);
    }
}

