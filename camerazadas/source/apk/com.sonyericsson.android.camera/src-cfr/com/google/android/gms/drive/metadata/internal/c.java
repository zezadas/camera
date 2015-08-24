/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.internal.CustomProperty;

public class c
implements Parcelable.Creator<CustomProperty> {
    static void a(CustomProperty customProperty, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, customProperty.BR);
        b.a(parcel, 2, customProperty.PJ, n, false);
        b.a(parcel, 3, customProperty.mValue, false);
        b.H(parcel, n2);
    }

    public CustomProperty aG(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        CustomPropertyKey customPropertyKey = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: {
                    customPropertyKey = a.a(parcel, n3, CustomPropertyKey.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new CustomProperty(n2, customPropertyKey, string);
    }

    public CustomProperty[] bS(int n) {
        return new CustomProperty[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aG(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bS(n);
    }
}

