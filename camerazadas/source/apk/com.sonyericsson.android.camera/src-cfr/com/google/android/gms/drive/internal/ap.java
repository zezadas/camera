/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.internal.OnMetadataResponse;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class ap
implements Parcelable.Creator<OnMetadataResponse> {
    static void a(OnMetadataResponse onMetadataResponse, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, onMetadataResponse.BR);
        b.a(parcel, 2, onMetadataResponse.Ol, n, false);
        b.H(parcel, n2);
    }

    public OnMetadataResponse ar(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        MetadataBundle metadataBundle = null;
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
            metadataBundle = a.a(parcel, n3, MetadataBundle.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new OnMetadataResponse(n2, metadataBundle);
    }

    public OnMetadataResponse[] bD(int n) {
        return new OnMetadataResponse[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ar(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bD(n);
    }
}

