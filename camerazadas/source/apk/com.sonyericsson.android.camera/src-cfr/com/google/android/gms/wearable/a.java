/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.Asset;

public class a
implements Parcelable.Creator<Asset> {
    static void a(Asset asset, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, asset.BR);
        b.a(parcel, 2, asset.getData(), false);
        b.a(parcel, 3, asset.getDigest(), false);
        b.a(parcel, 4, asset.auR, n, false);
        b.a(parcel, 5, asset.uri, n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dP(parcel);
    }

    public Asset dP(Parcel parcel) {
        Uri uri = null;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        String string = null;
        Object object = null;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block7;
                }
                case 1: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block7;
                }
                case 2: {
                    object = com.google.android.gms.common.internal.safeparcel.a.r(parcel, n3);
                    continue block7;
                }
                case 3: {
                    string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block7;
                }
                case 4: {
                    parcelFileDescriptor = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, ParcelFileDescriptor.CREATOR);
                    continue block7;
                }
                case 5: 
            }
            uri = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, Uri.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new Asset(n2, (byte[])object, string, parcelFileDescriptor, uri);
    }

    public Asset[] fS(int n) {
        return new Asset[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fS(n);
    }
}

