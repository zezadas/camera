/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class h
implements Parcelable.Creator<MetadataBundle> {
    static void a(MetadataBundle metadataBundle, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, metadataBundle.BR);
        b.a(parcel, 2, metadataBundle.PL, false);
        b.H(parcel, n);
    }

    public MetadataBundle aH(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        Bundle bundle = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block4;
                }
                case 2: 
            }
            bundle = a.q(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new MetadataBundle(n2, bundle);
    }

    public MetadataBundle[] bT(int n) {
        return new MetadataBundle[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aH(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bT(n);
    }
}

