/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.bj;
import com.google.android.gms.internal.ez;
import java.util.List;

@ez
public final class av
implements SafeParcelable {
    public static final aw CREATOR = new aw();
    public final Bundle extras;
    public final long nT;
    public final int nU;
    public final List<String> nV;
    public final boolean nW;
    public final int nX;
    public final boolean nY;
    public final String nZ;
    public final bj oa;
    public final Location ob;
    public final String oc;
    public final Bundle od;
    public final int versionCode;

    public av(int n, long l, Bundle bundle, int n2, List<String> list, boolean bl, int n3, boolean bl2, String string, bj bj, Location location, String string2, Bundle bundle2) {
        this.versionCode = n;
        this.nT = l;
        this.extras = bundle;
        this.nU = n2;
        this.nV = list;
        this.nW = bl;
        this.nX = n3;
        this.nY = bl2;
        this.nZ = string;
        this.oa = bj;
        this.ob = location;
        this.oc = string2;
        this.od = bundle2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        aw.a(this, parcel, n);
    }
}

