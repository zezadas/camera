/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gu;
import com.google.android.gms.internal.x;
import com.google.android.gms.internal.y;

public class dl
implements Parcelable.Creator<dm> {
    static void a(dm dm, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, dm.versionCode);
        b.a(parcel, 2, dm.rK, n, false);
        b.a(parcel, 3, dm.cb(), false);
        b.a(parcel, 4, dm.cc(), false);
        b.a(parcel, 5, dm.cd(), false);
        b.a(parcel, 6, dm.ce(), false);
        b.a(parcel, 7, dm.rP, false);
        b.a(parcel, 8, dm.rQ);
        b.a(parcel, 9, dm.rR, false);
        b.a(parcel, 10, dm.cg(), false);
        b.c(parcel, 11, dm.orientation);
        b.c(parcel, 12, dm.rT);
        b.a(parcel, 13, dm.rq, false);
        b.a(parcel, 14, dm.lD, n, false);
        b.a(parcel, 15, dm.cf(), false);
        b.a(parcel, 17, dm.rW, n, false);
        b.a(parcel, 16, dm.rV, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.f(parcel);
    }

    public dm f(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        dj dj = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String string = null;
        boolean bl = false;
        String string2 = null;
        IBinder iBinder5 = null;
        int n3 = 0;
        int n4 = 0;
        String string3 = null;
        gt gt = null;
        IBinder iBinder6 = null;
        String string4 = null;
        x x = null;
        block19 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block19;
                }
                case 1: {
                    n2 = a.g(parcel, n5);
                    continue block19;
                }
                case 2: {
                    dj = (dj)a.a(parcel, n5, dj.CREATOR);
                    continue block19;
                }
                case 3: {
                    iBinder = a.p(parcel, n5);
                    continue block19;
                }
                case 4: {
                    iBinder2 = a.p(parcel, n5);
                    continue block19;
                }
                case 5: {
                    iBinder3 = a.p(parcel, n5);
                    continue block19;
                }
                case 6: {
                    iBinder4 = a.p(parcel, n5);
                    continue block19;
                }
                case 7: {
                    string = a.o(parcel, n5);
                    continue block19;
                }
                case 8: {
                    bl = a.c(parcel, n5);
                    continue block19;
                }
                case 9: {
                    string2 = a.o(parcel, n5);
                    continue block19;
                }
                case 10: {
                    iBinder5 = a.p(parcel, n5);
                    continue block19;
                }
                case 11: {
                    n3 = a.g(parcel, n5);
                    continue block19;
                }
                case 12: {
                    n4 = a.g(parcel, n5);
                    continue block19;
                }
                case 13: {
                    string3 = a.o(parcel, n5);
                    continue block19;
                }
                case 14: {
                    gt = (gt)a.a(parcel, n5, gt.CREATOR);
                    continue block19;
                }
                case 15: {
                    iBinder6 = a.p(parcel, n5);
                    continue block19;
                }
                case 17: {
                    x = (x)a.a(parcel, n5, x.CREATOR);
                    continue block19;
                }
                case 16: 
            }
            string4 = a.o(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new dm(n2, dj, iBinder, iBinder2, iBinder3, iBinder4, string, bl, string2, iBinder5, n3, n4, string3, gt, iBinder6, string4, x);
    }

    public dm[] m(int n) {
        return new dm[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.m(n);
    }
}

