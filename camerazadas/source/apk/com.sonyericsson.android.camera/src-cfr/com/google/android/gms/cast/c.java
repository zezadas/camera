/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class c
implements Parcelable.Creator<LaunchOptions> {
    static void a(LaunchOptions launchOptions, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, launchOptions.getVersionCode());
        b.a(parcel, 2, launchOptions.getRelaunchIfRunning());
        b.a(parcel, 3, launchOptions.getLanguage(), false);
        b.H(parcel, n);
    }

    public LaunchOptions[] Z(int n) {
        return new LaunchOptions[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.v(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.Z(n);
    }

    public LaunchOptions v(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        String string = null;
        int n2 = 0;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: {
                    bl = a.c(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new LaunchOptions(n2, bl, string);
    }
}

