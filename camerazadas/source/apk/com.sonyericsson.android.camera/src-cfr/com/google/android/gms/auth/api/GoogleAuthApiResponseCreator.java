/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.GoogleAuthApiResponse;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class GoogleAuthApiResponseCreator
implements Parcelable.Creator<GoogleAuthApiResponse> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(GoogleAuthApiResponse googleAuthApiResponse, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, googleAuthApiResponse.responseCode);
        b.c(parcel, 1000, googleAuthApiResponse.versionCode);
        b.a(parcel, 2, googleAuthApiResponse.Dz, false);
        b.a(parcel, 3, googleAuthApiResponse.DA, false);
        b.H(parcel, n);
    }

    @Override
    public GoogleAuthApiResponse createFromParcel(Parcel parcel) {
        Object object = null;
        int n = 0;
        int n2 = a.C(parcel);
        Bundle bundle = null;
        int n3 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block6;
                }
                case 1: {
                    n = a.g(parcel, n4);
                    continue block6;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block6;
                }
                case 2: {
                    bundle = a.q(parcel, n4);
                    continue block6;
                }
                case 3: 
            }
            object = a.r(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new GoogleAuthApiResponse(n3, n, bundle, (byte[])object);
    }

    public GoogleAuthApiResponse[] newArray(int n) {
        return new GoogleAuthApiResponse[n];
    }
}

