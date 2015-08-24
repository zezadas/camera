/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.GoogleAuthApiRequest;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;
import java.util.List;

public class GoogleAuthApiRequestCreator
implements Parcelable.Creator<GoogleAuthApiRequest> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(GoogleAuthApiRequest googleAuthApiRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, googleAuthApiRequest.name, false);
        b.c(parcel, 1000, googleAuthApiRequest.versionCode);
        b.a(parcel, 2, googleAuthApiRequest.version, false);
        b.a(parcel, 3, googleAuthApiRequest.Dt, false);
        b.a(parcel, 4, googleAuthApiRequest.yR, false);
        b.a(parcel, 5, googleAuthApiRequest.Du, false);
        b.a(parcel, 6, googleAuthApiRequest.Dv, false);
        b.b(parcel, 7, googleAuthApiRequest.Dw, false);
        b.a(parcel, 8, googleAuthApiRequest.Dx, false);
        b.c(parcel, 9, googleAuthApiRequest.Dy);
        b.a(parcel, 10, googleAuthApiRequest.Dz, false);
        b.a(parcel, 11, googleAuthApiRequest.DA, false);
        b.a(parcel, 12, googleAuthApiRequest.DB);
        b.H(parcel, n);
    }

    @Override
    public GoogleAuthApiRequest createFromParcel(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        Bundle bundle = null;
        String string5 = null;
        ArrayList<String> arrayList = null;
        String string6 = null;
        int n3 = 0;
        Bundle bundle2 = null;
        Object object = null;
        long l = 0;
        block15 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block15;
                }
                case 1: {
                    string = a.o(parcel, n4);
                    continue block15;
                }
                case 1000: {
                    n2 = a.g(parcel, n4);
                    continue block15;
                }
                case 2: {
                    string2 = a.o(parcel, n4);
                    continue block15;
                }
                case 3: {
                    string3 = a.o(parcel, n4);
                    continue block15;
                }
                case 4: {
                    string4 = a.o(parcel, n4);
                    continue block15;
                }
                case 5: {
                    bundle = a.q(parcel, n4);
                    continue block15;
                }
                case 6: {
                    string5 = a.o(parcel, n4);
                    continue block15;
                }
                case 7: {
                    arrayList = a.C(parcel, n4);
                    continue block15;
                }
                case 8: {
                    string6 = a.o(parcel, n4);
                    continue block15;
                }
                case 9: {
                    n3 = a.g(parcel, n4);
                    continue block15;
                }
                case 10: {
                    bundle2 = a.q(parcel, n4);
                    continue block15;
                }
                case 11: {
                    object = a.r(parcel, n4);
                    continue block15;
                }
                case 12: 
            }
            l = a.i(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new GoogleAuthApiRequest(n2, string, string2, string3, string4, bundle, string5, arrayList, string6, n3, bundle2, (byte[])object, l);
    }

    public GoogleAuthApiRequest[] newArray(int n) {
        return new GoogleAuthApiRequest[n];
    }
}

