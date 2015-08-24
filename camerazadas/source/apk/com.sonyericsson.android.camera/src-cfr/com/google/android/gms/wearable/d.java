/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.c;

public class d
implements Parcelable.Creator<c> {
    static void a(c c, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, c.BR);
        b.a(parcel, 2, c.getName(), false);
        b.a(parcel, 3, c.getAddress(), false);
        b.c(parcel, 4, c.getType());
        b.c(parcel, 5, c.getRole());
        b.a(parcel, 6, c.isEnabled());
        b.a(parcel, 7, c.isConnected());
        b.a(parcel, 8, c.pS(), false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dQ(parcel);
    }

    public c dQ(Parcel parcel) {
        String string = null;
        boolean bl = false;
        int n = a.C(parcel);
        boolean bl2 = false;
        int n2 = 0;
        int n3 = 0;
        String string2 = null;
        String string3 = null;
        int n4 = 0;
        block10 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block10;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block10;
                }
                case 2: {
                    string3 = a.o(parcel, n5);
                    continue block10;
                }
                case 3: {
                    string2 = a.o(parcel, n5);
                    continue block10;
                }
                case 4: {
                    n3 = a.g(parcel, n5);
                    continue block10;
                }
                case 5: {
                    n2 = a.g(parcel, n5);
                    continue block10;
                }
                case 6: {
                    bl2 = a.c(parcel, n5);
                    continue block10;
                }
                case 7: {
                    bl = a.c(parcel, n5);
                    continue block10;
                }
                case 8: 
            }
            string = a.o(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new c(n4, string3, string2, n3, n2, bl2, bl, string);
    }

    public c[] fT(int n) {
        return new c[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fT(n);
    }
}

