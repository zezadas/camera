/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.internal.m;

public class n
implements Parcelable.Creator<m> {
    static void a(m m, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, m.BR);
        b.a(parcel, 2, m.getUri(), n, false);
        b.a(parcel, 4, m.pT(), false);
        b.a(parcel, 5, m.getData(), false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dU(parcel);
    }

    /*
     * Enabled aggressive block sorting
     */
    public m dU(Parcel parcel) {
        void var6_7;
        Object object = null;
        int n = a.C(parcel);
        int n2 = 0;
        Uri uri = null;
        Object var6_6 = null;
        while (parcel.dataPosition() < n) {
            void var6_9;
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    Uri uri2 = uri;
                    uri = var6_7;
                    Uri uri3 = uri2;
                    break;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    void var8_19 = var6_7;
                    Uri uri4 = uri;
                    uri = var8_19;
                    break;
                }
                case 2: {
                    Uri uri5 = a.a(parcel, n3, Uri.CREATOR);
                    Uri uri6 = uri;
                    uri = uri5;
                    break;
                }
                case 4: {
                    Bundle bundle = a.q(parcel, n3);
                    uri = var6_7;
                    Bundle bundle2 = bundle;
                    break;
                }
                case 5: {
                    object = a.r(parcel, n3);
                    void var8_22 = var6_7;
                    Uri uri7 = uri;
                    uri = var8_22;
                }
            }
            Uri uri8 = uri;
            uri = var6_9;
            Uri uri9 = uri8;
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new m(n2, (Uri)var6_7, (Bundle)uri, (byte[])object);
    }

    public m[] fX(int n) {
        return new m[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fX(n);
    }
}

