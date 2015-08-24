/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nz;
import java.util.HashSet;
import java.util.Set;

public class oh
implements Parcelable.Creator<nz.f> {
    static void a(nz.f f, Parcel parcel, int n) {
        n = b.D(parcel);
        Set<Integer> set = f.amc;
        if (set.contains(1)) {
            b.c(parcel, 1, f.BR);
        }
        if (set.contains(2)) {
            b.a(parcel, 2, f.anE, true);
        }
        if (set.contains(3)) {
            b.a(parcel, 3, f.Tr, true);
        }
        if (set.contains(4)) {
            b.a(parcel, 4, f.amz, true);
        }
        if (set.contains(5)) {
            b.a(parcel, 5, f.anF, true);
        }
        if (set.contains(6)) {
            b.a(parcel, 6, f.mName, true);
        }
        if (set.contains(7)) {
            b.a(parcel, 7, f.anG);
        }
        if (set.contains(8)) {
            b.a(parcel, 8, f.amP, true);
        }
        if (set.contains(9)) {
            b.a(parcel, 9, f.Nw, true);
        }
        if (set.contains(10)) {
            b.c(parcel, 10, f.FD);
        }
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dk(parcel);
    }

    public nz.f dk(Parcel parcel) {
        int n = 0;
        String string = null;
        int n2 = a.C(parcel);
        HashSet<Integer> hashSet = new HashSet<Integer>();
        String string2 = null;
        boolean bl = false;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        String string6 = null;
        String string7 = null;
        int n3 = 0;
        block12 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block12;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    hashSet.add(1);
                    continue block12;
                }
                case 2: {
                    string7 = a.o(parcel, n4);
                    hashSet.add(2);
                    continue block12;
                }
                case 3: {
                    string6 = a.o(parcel, n4);
                    hashSet.add(3);
                    continue block12;
                }
                case 4: {
                    string5 = a.o(parcel, n4);
                    hashSet.add(4);
                    continue block12;
                }
                case 5: {
                    string4 = a.o(parcel, n4);
                    hashSet.add(5);
                    continue block12;
                }
                case 6: {
                    string3 = a.o(parcel, n4);
                    hashSet.add(6);
                    continue block12;
                }
                case 7: {
                    bl = a.c(parcel, n4);
                    hashSet.add(7);
                    continue block12;
                }
                case 8: {
                    string2 = a.o(parcel, n4);
                    hashSet.add(8);
                    continue block12;
                }
                case 9: {
                    string = a.o(parcel, n4);
                    hashSet.add(9);
                    continue block12;
                }
                case 10: 
            }
            n = a.g(parcel, n4);
            hashSet.add(10);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new nz.f(hashSet, n3, string7, string6, string5, string4, string3, bl, string2, string, n);
    }

    public nz.f[] fc(int n) {
        return new nz.f[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fc(n);
    }
}

