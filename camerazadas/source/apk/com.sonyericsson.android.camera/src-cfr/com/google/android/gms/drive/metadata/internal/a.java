/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.drive.metadata.internal.CustomProperty;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class a
implements Parcelable.Creator<AppVisibleCustomProperties> {
    static void a(AppVisibleCustomProperties appVisibleCustomProperties, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, appVisibleCustomProperties.BR);
        b.c(parcel, 2, appVisibleCustomProperties.PH, false);
        b.H(parcel, n);
    }

    public AppVisibleCustomProperties aF(Parcel parcel) {
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        ArrayList<CustomProperty> arrayList = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block4;
                }
                case 2: 
            }
            arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n3, CustomProperty.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new AppVisibleCustomProperties(n2, arrayList);
    }

    public AppVisibleCustomProperties[] bR(int n) {
        return new AppVisibleCustomProperties[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aF(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bR(n);
    }
}

