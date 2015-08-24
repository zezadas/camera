/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;
import java.util.List;

public class b
implements Parcelable.Creator<CastDevice> {
    static void a(CastDevice castDevice, Parcel parcel, int n) {
        n = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, castDevice.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, castDevice.getDeviceId(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, castDevice.ES, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, castDevice.getFriendlyName(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, castDevice.getModelName(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, castDevice.getDeviceVersion(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 7, castDevice.getServicePort());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 8, castDevice.getIcons(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 9, castDevice.getCapabilities());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 10, castDevice.getStatus());
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n);
    }

    public CastDevice[] Y(int n) {
        return new CastDevice[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.u(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.Y(n);
    }

    public CastDevice u(Parcel parcel) {
        int n = 0;
        ArrayList<WebImage> arrayList = null;
        int n2 = a.C(parcel);
        int n3 = 0;
        int n4 = 0;
        String string = null;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        int n5 = 0;
        block12 : while (parcel.dataPosition() < n2) {
            int n6 = a.B(parcel);
            switch (a.aD(n6)) {
                default: {
                    a.b(parcel, n6);
                    continue block12;
                }
                case 1: {
                    n5 = a.g(parcel, n6);
                    continue block12;
                }
                case 2: {
                    string5 = a.o(parcel, n6);
                    continue block12;
                }
                case 3: {
                    string4 = a.o(parcel, n6);
                    continue block12;
                }
                case 4: {
                    string3 = a.o(parcel, n6);
                    continue block12;
                }
                case 5: {
                    string2 = a.o(parcel, n6);
                    continue block12;
                }
                case 6: {
                    string = a.o(parcel, n6);
                    continue block12;
                }
                case 7: {
                    n4 = a.g(parcel, n6);
                    continue block12;
                }
                case 8: {
                    arrayList = a.c(parcel, n6, WebImage.CREATOR);
                    continue block12;
                }
                case 9: {
                    n3 = a.g(parcel, n6);
                    continue block12;
                }
                case 10: 
            }
            n = a.g(parcel, n6);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new CastDevice(n5, string5, string4, string3, string2, string, n4, arrayList, n3, n);
    }
}

