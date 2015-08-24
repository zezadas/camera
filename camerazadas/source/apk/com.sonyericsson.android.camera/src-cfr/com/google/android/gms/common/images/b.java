/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.a;

public class b
implements Parcelable.Creator<WebImage> {
    static void a(WebImage webImage, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, webImage.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, webImage.getUrl(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 3, webImage.getWidth());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 4, webImage.getHeight());
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    public WebImage A(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        Uri uri = null;
        int n3 = 0;
        int n4 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block6;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block6;
                }
                case 2: {
                    uri = a.a(parcel, n5, Uri.CREATOR);
                    continue block6;
                }
                case 3: {
                    n3 = a.g(parcel, n5);
                    continue block6;
                }
                case 4: 
            }
            n = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new WebImage(n4, uri, n3, n);
    }

    public WebImage[] ax(int n) {
        return new WebImage[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.A(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ax(n);
    }
}

