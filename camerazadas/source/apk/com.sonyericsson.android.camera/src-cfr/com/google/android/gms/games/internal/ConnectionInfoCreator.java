/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.internal.ConnectionInfo;

public class ConnectionInfoCreator
implements Parcelable.Creator<ConnectionInfo> {
    static void a(ConnectionInfo connectionInfo, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, connectionInfo.jX(), false);
        b.c(parcel, 1000, connectionInfo.getVersionCode());
        b.c(parcel, 2, connectionInfo.jY());
        b.H(parcel, n);
    }

    public ConnectionInfo cf(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        String string = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    string = a.o(parcel, n4);
                    continue block5;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: 
            }
            n = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ConnectionInfo(n3, string, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cf(parcel);
    }

    public ConnectionInfo[] dA(int n) {
        return new ConnectionInfo[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dA(n);
    }
}

