/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.metadata.CustomPropertyKey;

public class c
implements Parcelable.Creator<CustomPropertyKey> {
    static void a(CustomPropertyKey customPropertyKey, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, customPropertyKey.BR);
        b.a(parcel, 2, customPropertyKey.JO, false);
        b.c(parcel, 3, customPropertyKey.mVisibility);
        b.H(parcel, n);
    }

    public CustomPropertyKey aE(Parcel parcel) {
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
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: {
                    string = a.o(parcel, n4);
                    continue block5;
                }
                case 3: 
            }
            n = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new CustomPropertyKey(n3, string, n);
    }

    public CustomPropertyKey[] bQ(int n) {
        return new CustomPropertyKey[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aE(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bQ(n);
    }
}
