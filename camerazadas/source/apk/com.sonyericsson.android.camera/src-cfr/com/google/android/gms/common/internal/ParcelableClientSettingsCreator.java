/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;
import java.util.List;

public class ParcelableClientSettingsCreator
implements Parcelable.Creator<ClientSettings.ParcelableClientSettings> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(ClientSettings.ParcelableClientSettings parcelableClientSettings, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, parcelableClientSettings.getAccountName(), false);
        b.c(parcel, 1000, parcelableClientSettings.getVersionCode());
        b.b(parcel, 2, parcelableClientSettings.getScopes(), false);
        b.c(parcel, 3, parcelableClientSettings.getGravityForPopups());
        b.a(parcel, 4, parcelableClientSettings.getRealClientPackageName(), false);
        b.H(parcel, n);
    }

    @Override
    public ClientSettings.ParcelableClientSettings createFromParcel(Parcel parcel) {
        int n = 0;
        String string = null;
        int n2 = a.C(parcel);
        ArrayList<String> arrayList = null;
        String string2 = null;
        int n3 = 0;
        block7 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block7;
                }
                case 1: {
                    string2 = a.o(parcel, n4);
                    continue block7;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block7;
                }
                case 2: {
                    arrayList = a.C(parcel, n4);
                    continue block7;
                }
                case 3: {
                    n = a.g(parcel, n4);
                    continue block7;
                }
                case 4: 
            }
            string = a.o(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ClientSettings.ParcelableClientSettings(n3, string2, arrayList, n, string);
    }

    public ClientSettings.ParcelableClientSettings[] newArray(int n) {
        return new ClientSettings.ParcelableClientSettings[n];
    }
}

