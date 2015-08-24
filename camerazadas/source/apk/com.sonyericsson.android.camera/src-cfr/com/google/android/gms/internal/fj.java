/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.az;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gu;
import java.util.ArrayList;
import java.util.List;

public class fj
implements Parcelable.Creator<fi> {
    static void a(fi fi, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, fi.versionCode);
        b.a(parcel, 2, fi.tw, false);
        b.a(parcel, 3, fi.tx, n, false);
        b.a(parcel, 4, fi.lH, n, false);
        b.a(parcel, 5, fi.lA, false);
        b.a(parcel, 6, fi.applicationInfo, n, false);
        b.a(parcel, 7, fi.ty, n, false);
        b.a(parcel, 8, fi.tz, false);
        b.a(parcel, 9, fi.tA, false);
        b.a(parcel, 10, fi.tB, false);
        b.a(parcel, 11, fi.lD, n, false);
        b.a(parcel, 12, fi.tC, false);
        b.c(parcel, 13, fi.tD);
        b.b(parcel, 14, fi.lS, false);
        b.a(parcel, 15, fi.tE, false);
        b.a(parcel, 16, fi.tF);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.h(parcel);
    }

    public fi h(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        Bundle bundle = null;
        av av = null;
        ay ay = null;
        String string = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        gt gt = null;
        Bundle bundle2 = null;
        int n3 = 0;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        boolean bl = false;
        block18 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block18;
                }
                case 1: {
                    n2 = a.g(parcel, n4);
                    continue block18;
                }
                case 2: {
                    bundle = a.q(parcel, n4);
                    continue block18;
                }
                case 3: {
                    av = (av)a.a(parcel, n4, av.CREATOR);
                    continue block18;
                }
                case 4: {
                    ay = (ay)a.a(parcel, n4, ay.CREATOR);
                    continue block18;
                }
                case 5: {
                    string = a.o(parcel, n4);
                    continue block18;
                }
                case 6: {
                    applicationInfo = a.a(parcel, n4, ApplicationInfo.CREATOR);
                    continue block18;
                }
                case 7: {
                    packageInfo = a.a(parcel, n4, PackageInfo.CREATOR);
                    continue block18;
                }
                case 8: {
                    string2 = a.o(parcel, n4);
                    continue block18;
                }
                case 9: {
                    string3 = a.o(parcel, n4);
                    continue block18;
                }
                case 10: {
                    string4 = a.o(parcel, n4);
                    continue block18;
                }
                case 11: {
                    gt = (gt)a.a(parcel, n4, gt.CREATOR);
                    continue block18;
                }
                case 12: {
                    bundle2 = a.q(parcel, n4);
                    continue block18;
                }
                case 13: {
                    n3 = a.g(parcel, n4);
                    continue block18;
                }
                case 14: {
                    arrayList = a.C(parcel, n4);
                    continue block18;
                }
                case 15: {
                    bundle3 = a.q(parcel, n4);
                    continue block18;
                }
                case 16: 
            }
            bl = a.c(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new fi(n2, bundle, av, ay, string, applicationInfo, packageInfo, string2, string3, string4, gt, bundle2, n3, arrayList, bundle3, bl);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.p(n);
    }

    public fi[] p(int n) {
        return new fi[n];
    }
}

