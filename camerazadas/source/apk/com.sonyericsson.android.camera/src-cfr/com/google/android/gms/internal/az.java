/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ay;

public class az
implements Parcelable.Creator<ay> {
    static void a(ay ay, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, ay.versionCode);
        b.a(parcel, 2, ay.of, false);
        b.c(parcel, 3, ay.height);
        b.c(parcel, 4, ay.heightPixels);
        b.a(parcel, 5, ay.og);
        b.c(parcel, 6, ay.width);
        b.c(parcel, 7, ay.widthPixels);
        b.a((Parcel)parcel, (int)8, (Parcelable[])ay.oh, (int)n, (boolean)false);
        b.H(parcel, n2);
    }

    public ay c(Parcel parcel) {
        ay[] array = null;
        int n = 0;
        int n2 = a.C(parcel);
        int n3 = 0;
        boolean bl = false;
        int n4 = 0;
        int n5 = 0;
        String string = null;
        int n6 = 0;
        block10 : while (parcel.dataPosition() < n2) {
            int n7 = a.B(parcel);
            switch (a.aD(n7)) {
                default: {
                    a.b(parcel, n7);
                    continue block10;
                }
                case 1: {
                    n6 = a.g(parcel, n7);
                    continue block10;
                }
                case 2: {
                    string = a.o(parcel, n7);
                    continue block10;
                }
                case 3: {
                    n5 = a.g(parcel, n7);
                    continue block10;
                }
                case 4: {
                    n4 = a.g(parcel, n7);
                    continue block10;
                }
                case 5: {
                    bl = a.c(parcel, n7);
                    continue block10;
                }
                case 6: {
                    n3 = a.g(parcel, n7);
                    continue block10;
                }
                case 7: {
                    n = a.g(parcel, n7);
                    continue block10;
                }
                case 8: 
            }
            array = (ay[])a.b(parcel, n7, ay.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ay(n6, string, n5, n4, bl, n3, n, array);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.c(parcel);
    }

    public ay[] f(int n) {
        return new ay[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.f(n);
    }
}

