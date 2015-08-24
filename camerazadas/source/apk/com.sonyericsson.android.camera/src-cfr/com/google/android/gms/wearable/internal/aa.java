/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.internal.z;

public class aa
implements Parcelable.Creator<z> {
    static void a(z z, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, z.versionCode);
        b.c(parcel, 2, z.statusCode);
        b.a(parcel, 3, z.avB, n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ea(parcel);
    }

    public z ea(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
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
            parcelFileDescriptor = a.a(parcel, n4, ParcelFileDescriptor.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new z(n3, n, parcelFileDescriptor);
    }

    public z[] gd(int n) {
        return new z[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.gd(n);
    }
}

