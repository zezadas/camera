/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.internal.ak;
import com.google.android.gms.wearable.internal.v;
import java.util.ArrayList;
import java.util.List;

public class w
implements Parcelable.Creator<v> {
    static void a(v v, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, v.versionCode);
        b.c(parcel, 2, v.statusCode);
        b.c(parcel, 3, v.avz, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dY(parcel);
    }

    public v dY(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        ArrayList<ak> arrayList = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: {
                    n = a.g(parcel, n4);
                    continue block5;
                }
                case 3: 
            }
            arrayList = a.c(parcel, n4, ak.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new v(n3, n, arrayList);
    }

    public v[] gb(int n) {
        return new v[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.gb(n);
    }
}

