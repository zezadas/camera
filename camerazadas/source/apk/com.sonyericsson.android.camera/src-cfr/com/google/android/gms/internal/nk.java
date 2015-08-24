/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ni;

public class nk
implements Parcelable.Creator<ni> {
    static void a(ni ni, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, ni.versionCode);
        b.a(parcel, 2, ni.akH);
        b.a(parcel, 3, ni.tag, false);
        b.a(parcel, 4, ni.akI, false);
        b.a(parcel, 5, ni.akJ, false);
        b.H(parcel, n);
    }

    public ni cX(Parcel parcel) {
        Bundle bundle = null;
        int n = a.C(parcel);
        int n2 = 0;
        long l = 0;
        Object object = null;
        String string = null;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block7;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block7;
                }
                case 2: {
                    l = a.i(parcel, n3);
                    continue block7;
                }
                case 3: {
                    string = a.o(parcel, n3);
                    continue block7;
                }
                case 4: {
                    object = a.r(parcel, n3);
                    continue block7;
                }
                case 5: 
            }
            bundle = a.q(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ni(n2, l, string, (byte[])object, bundle);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cX(parcel);
    }

    public ni[] eO(int n) {
        return new ni[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eO(n);
    }
}

