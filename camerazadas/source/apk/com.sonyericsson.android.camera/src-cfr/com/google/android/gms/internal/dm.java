/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.t;
import com.google.android.gms.internal.x;

@ez
public final class dm
implements SafeParcelable {
    public static final dl CREATOR = new dl();
    public final gt lD;
    public final int orientation;
    public final dj rK;
    public final t rL;
    public final dn rM;
    public final gv rN;
    public final bw rO;
    public final String rP;
    public final boolean rQ;
    public final String rR;
    public final dq rS;
    public final int rT;
    public final bz rU;
    public final String rV;
    public final x rW;
    public final String rq;
    public final int versionCode;

    dm(int n, dj dj, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String string, boolean bl, String string2, IBinder iBinder5, int n2, int n3, String string3, gt gt, IBinder iBinder6, String string4, x x) {
        this.versionCode = n;
        this.rK = dj;
        this.rL = (t)e.f(d.a.am(iBinder));
        this.rM = (dn)e.f(d.a.am(iBinder2));
        this.rN = (gv)e.f(d.a.am(iBinder3));
        this.rO = (bw)e.f(d.a.am(iBinder4));
        this.rP = string;
        this.rQ = bl;
        this.rR = string2;
        this.rS = (dq)e.f(d.a.am(iBinder5));
        this.orientation = n2;
        this.rT = n3;
        this.rq = string3;
        this.lD = gt;
        this.rU = (bz)e.f(d.a.am(iBinder6));
        this.rV = string4;
        this.rW = x;
    }

    public dm(dj dj, t t, dn dn, dq dq, gt gt) {
        this.versionCode = 4;
        this.rK = dj;
        this.rL = t;
        this.rM = dn;
        this.rN = null;
        this.rO = null;
        this.rP = null;
        this.rQ = false;
        this.rR = null;
        this.rS = dq;
        this.orientation = -1;
        this.rT = 4;
        this.rq = null;
        this.lD = gt;
        this.rU = null;
        this.rV = null;
        this.rW = null;
    }

    public dm(t t, dn dn, bw bw, dq dq, gv gv, boolean bl, int n, String string, gt gt, bz bz) {
        this.versionCode = 4;
        this.rK = null;
        this.rL = t;
        this.rM = dn;
        this.rN = gv;
        this.rO = bw;
        this.rP = null;
        this.rQ = bl;
        this.rR = null;
        this.rS = dq;
        this.orientation = n;
        this.rT = 3;
        this.rq = string;
        this.lD = gt;
        this.rU = bz;
        this.rV = null;
        this.rW = null;
    }

    public dm(t t, dn dn, bw bw, dq dq, gv gv, boolean bl, int n, String string, String string2, gt gt, bz bz) {
        this.versionCode = 4;
        this.rK = null;
        this.rL = t;
        this.rM = dn;
        this.rN = gv;
        this.rO = bw;
        this.rP = string2;
        this.rQ = bl;
        this.rR = string;
        this.rS = dq;
        this.orientation = n;
        this.rT = 3;
        this.rq = null;
        this.lD = gt;
        this.rU = bz;
        this.rV = null;
        this.rW = null;
    }

    public dm(t t, dn dn, dq dq, gv gv, int n, gt gt, String string, x x) {
        this.versionCode = 4;
        this.rK = null;
        this.rL = t;
        this.rM = dn;
        this.rN = gv;
        this.rO = null;
        this.rP = null;
        this.rQ = false;
        this.rR = null;
        this.rS = dq;
        this.orientation = n;
        this.rT = 1;
        this.rq = null;
        this.lD = gt;
        this.rU = null;
        this.rV = string;
        this.rW = x;
    }

    public dm(t t, dn dn, dq dq, gv gv, boolean bl, int n, gt gt) {
        this.versionCode = 4;
        this.rK = null;
        this.rL = t;
        this.rM = dn;
        this.rN = gv;
        this.rO = null;
        this.rP = null;
        this.rQ = bl;
        this.rR = null;
        this.rS = dq;
        this.orientation = n;
        this.rT = 2;
        this.rq = null;
        this.lD = gt;
        this.rU = null;
        this.rV = null;
        this.rW = null;
    }

    public static void a(Intent intent, dm dm) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", dm);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static dm b(Intent parcelable) {
        try {
            parcelable = parcelable.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            parcelable.setClassLoader(dm.class.getClassLoader());
            parcelable = (dm)parcelable.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            return parcelable;
        }
        catch (Exception var0_1) {
            return null;
        }
    }

    IBinder cb() {
        return e.k(this.rL).asBinder();
    }

    IBinder cc() {
        return e.k(this.rM).asBinder();
    }

    IBinder cd() {
        return e.k(this.rN).asBinder();
    }

    IBinder ce() {
        return e.k(this.rO).asBinder();
    }

    IBinder cf() {
        return e.k(this.rU).asBinder();
    }

    IBinder cg() {
        return e.k(this.rS).asBinder();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        dl.a(this, parcel, n);
    }
}

