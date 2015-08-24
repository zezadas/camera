/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.gt;
import java.util.List;

@ez
public final class fi
implements SafeParcelable {
    public static final fj CREATOR = new fj();
    public final ApplicationInfo applicationInfo;
    public final String lA;
    public final gt lD;
    public final ay lH;
    public final List<String> lS;
    public final String tA;
    public final String tB;
    public final Bundle tC;
    public final int tD;
    public final Bundle tE;
    public final boolean tF;
    public final Bundle tw;
    public final av tx;
    public final PackageInfo ty;
    public final String tz;
    public final int versionCode;

    fi(int n, Bundle bundle, av av, ay ay, String string, ApplicationInfo applicationInfo, PackageInfo packageInfo, String string2, String string3, String string4, gt gt, Bundle bundle2, int n2, List<String> list, Bundle bundle3, boolean bl) {
        this.versionCode = n;
        this.tw = bundle;
        this.tx = av;
        this.lH = ay;
        this.lA = string;
        this.applicationInfo = applicationInfo;
        this.ty = packageInfo;
        this.tz = string2;
        this.tA = string3;
        this.tB = string4;
        this.lD = gt;
        this.tC = bundle2;
        this.tD = n2;
        this.lS = list;
        this.tE = bundle3;
        this.tF = bl;
    }

    public fi(Bundle bundle, av av, ay ay, String string, ApplicationInfo applicationInfo, PackageInfo packageInfo, String string2, String string3, String string4, gt gt, Bundle bundle2, int n, List<String> list, Bundle bundle3, boolean bl) {
        this(4, bundle, av, ay, string, applicationInfo, packageInfo, string2, string3, string4, gt, bundle2, n, list, bundle3, bl);
    }

    public fi(a a, String string) {
        this(a.tw, a.tx, a.lH, a.lA, a.applicationInfo, a.ty, string, a.tA, a.tB, a.lD, a.tC, a.tD, a.lS, a.tE, a.tF);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        fj.a(this, parcel, n);
    }

    @ez
    public static final class a {
        public final ApplicationInfo applicationInfo;
        public final String lA;
        public final gt lD;
        public final ay lH;
        public final List<String> lS;
        public final String tA;
        public final String tB;
        public final Bundle tC;
        public final int tD;
        public final Bundle tE;
        public final boolean tF;
        public final Bundle tw;
        public final av tx;
        public final PackageInfo ty;

        /*
         * Enabled aggressive block sorting
         */
        public a(Bundle bundle, av av, ay ay, String string, ApplicationInfo applicationInfo, PackageInfo packageInfo, String string2, String string3, gt gt, Bundle bundle2, List<String> list, Bundle bundle3, boolean bl) {
            this.tw = bundle;
            this.tx = av;
            this.lH = ay;
            this.lA = string;
            this.applicationInfo = applicationInfo;
            this.ty = packageInfo;
            this.tA = string2;
            this.tB = string3;
            this.lD = gt;
            this.tC = bundle2;
            this.tF = bl;
            if (list != null && list.size() > 0) {
                this.tD = 2;
                this.lS = list;
            } else {
                this.tD = 0;
                this.lS = null;
            }
            this.tE = bundle3;
        }
    }

}

