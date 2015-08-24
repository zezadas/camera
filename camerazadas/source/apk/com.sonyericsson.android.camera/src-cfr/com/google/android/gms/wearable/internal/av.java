/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.internal.am;
import com.google.android.gms.wearable.internal.au;
import java.util.ArrayList;
import java.util.List;

public class av
implements Parcelable.Creator<au> {
    static void a(au au, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, au.versionCode);
        b.c(parcel, 2, au.statusCode);
        b.a(parcel, 3, au.avN);
        b.c(parcel, 4, au.avP, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ei(parcel);
    }

    public au ei(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        long l = 0;
        ArrayList<am> arrayList = null;
        int n3 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block6;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block6;
                }
                case 2: {
                    n = a.g(parcel, n4);
                    continue block6;
                }
                case 3: {
                    l = a.i(parcel, n4);
                    continue block6;
                }
                case 4: 
            }
            arrayList = a.c(parcel, n4, am.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new au(n3, n, l, arrayList);
    }

    public au[] gl(int n) {
        return new au[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.gl(n);
    }
}

