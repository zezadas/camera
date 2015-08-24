/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.Address;

public class a
implements Parcelable.Creator<Address> {
    static void a(Address address, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, address.getVersionCode());
        b.a(parcel, 2, address.name, false);
        b.a(parcel, 3, address.adN, false);
        b.a(parcel, 4, address.adO, false);
        b.a(parcel, 5, address.adP, false);
        b.a(parcel, 6, address.uW, false);
        b.a(parcel, 7, address.ast, false);
        b.a(parcel, 8, address.asu, false);
        b.a(parcel, 9, address.adU, false);
        b.a(parcel, 10, address.adW, false);
        b.a(parcel, 11, address.adX);
        b.a(parcel, 12, address.adY, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dn(parcel);
    }

    public Address dn(Parcel parcel) {
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        String string6 = null;
        String string7 = null;
        String string8 = null;
        String string9 = null;
        boolean bl = false;
        String string10 = null;
        block14 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block14;
                }
                case 1: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block14;
                }
                case 2: {
                    string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block14;
                }
                case 3: {
                    string2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block14;
                }
                case 4: {
                    string3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block14;
                }
                case 5: {
                    string4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block14;
                }
                case 6: {
                    string5 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block14;
                }
                case 7: {
                    string6 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block14;
                }
                case 8: {
                    string7 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block14;
                }
                case 9: {
                    string8 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block14;
                }
                case 10: {
                    string9 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block14;
                }
                case 11: {
                    bl = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n3);
                    continue block14;
                }
                case 12: 
            }
            string10 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new Address(n2, string, string2, string3, string4, string5, string6, string7, string8, string9, bl, string10);
    }

    public Address[] fo(int n) {
        return new Address[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fo(n);
    }
}

