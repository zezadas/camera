/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.identity.intents.model.UserAddress;

public class b
implements Parcelable.Creator<UserAddress> {
    static void a(UserAddress userAddress, Parcel parcel, int n) {
        n = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, userAddress.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, userAddress.name, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, userAddress.adN, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, userAddress.adO, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, userAddress.adP, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, userAddress.adQ, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, userAddress.adR, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, userAddress.adS, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, userAddress.adT, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, userAddress.uW, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, userAddress.adU, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, userAddress.adV, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, userAddress.adW, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, userAddress.adX);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, userAddress.adY, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, userAddress.adZ, false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n);
    }

    public UserAddress cr(Parcel parcel) {
        int n = a.C(parcel);
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
        String string10 = null;
        String string11 = null;
        String string12 = null;
        boolean bl = false;
        String string13 = null;
        String string14 = null;
        block18 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block18;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block18;
                }
                case 2: {
                    string = a.o(parcel, n3);
                    continue block18;
                }
                case 3: {
                    string2 = a.o(parcel, n3);
                    continue block18;
                }
                case 4: {
                    string3 = a.o(parcel, n3);
                    continue block18;
                }
                case 5: {
                    string4 = a.o(parcel, n3);
                    continue block18;
                }
                case 6: {
                    string5 = a.o(parcel, n3);
                    continue block18;
                }
                case 7: {
                    string6 = a.o(parcel, n3);
                    continue block18;
                }
                case 8: {
                    string7 = a.o(parcel, n3);
                    continue block18;
                }
                case 9: {
                    string8 = a.o(parcel, n3);
                    continue block18;
                }
                case 10: {
                    string9 = a.o(parcel, n3);
                    continue block18;
                }
                case 11: {
                    string10 = a.o(parcel, n3);
                    continue block18;
                }
                case 12: {
                    string11 = a.o(parcel, n3);
                    continue block18;
                }
                case 13: {
                    string12 = a.o(parcel, n3);
                    continue block18;
                }
                case 14: {
                    bl = a.c(parcel, n3);
                    continue block18;
                }
                case 15: {
                    string13 = a.o(parcel, n3);
                    continue block18;
                }
                case 16: 
            }
            string14 = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new UserAddress(n2, string, string2, string3, string4, string5, string6, string7, string8, string9, string10, string11, string12, bl, string13, string14);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cr(parcel);
    }

    public UserAddress[] dZ(int n) {
        return new UserAddress[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dZ(n);
    }
}

