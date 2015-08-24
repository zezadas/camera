/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.internal.ah;

public class ai
implements Parcelable.Creator<ah> {
    static void a(ah ah, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, ah.BR);
        b.c(parcel, 2, ah.getRequestId());
        b.a(parcel, 3, ah.getPath(), false);
        b.a(parcel, 4, ah.getData(), false);
        b.a(parcel, 5, ah.getSourceNodeId(), false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ec(parcel);
    }

    public ah ec(Parcel parcel) {
        int n = 0;
        String string = null;
        int n2 = a.C(parcel);
        Object object = null;
        String string2 = null;
        int n3 = 0;
        block7 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block7;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block7;
                }
                case 2: {
                    n = a.g(parcel, n4);
                    continue block7;
                }
                case 3: {
                    string2 = a.o(parcel, n4);
                    continue block7;
                }
                case 4: {
                    object = a.r(parcel, n4);
                    continue block7;
                }
                case 5: 
            }
            string = a.o(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ah(n3, n, string2, (byte[])object, string);
    }

    public ah[] gf(int n) {
        return new ah[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.gf(n);
    }
}

