/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.du;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.ez;

@ez
public final class dv
implements SafeParcelable {
    public static final du CREATOR = new du();
    public final el lM;
    public final ee lT;
    public final eg si;
    public final Context sj;
    public final int versionCode;

    dv(int n, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4) {
        this.versionCode = n;
        this.lM = (el)e.f(d.a.am(iBinder));
        this.lT = (ee)e.f(d.a.am(iBinder2));
        this.si = (eg)e.f(d.a.am(iBinder3));
        this.sj = (Context)e.f(d.a.am(iBinder4));
    }

    public dv(eg eg, el el, ee ee, Context context) {
        this.versionCode = 1;
        this.si = eg;
        this.lM = el;
        this.lT = ee;
        this.sj = context;
    }

    public static void a(Intent intent, dv dv) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", dv);
        intent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", bundle);
    }

    public static dv c(Intent parcelable) {
        try {
            parcelable = parcelable.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
            parcelable.setClassLoader(dv.class.getClassLoader());
            parcelable = (dv)parcelable.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
            return parcelable;
        }
        catch (Exception var0_1) {
            return null;
        }
    }

    IBinder ck() {
        return e.k(this.lM).asBinder();
    }

    IBinder cl() {
        return e.k(this.lT).asBinder();
    }

    IBinder cm() {
        return e.k(this.si).asBinder();
    }

    IBinder cn() {
        return e.k(this.sj).asBinder();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        du.a(this, parcel, n);
    }
}

