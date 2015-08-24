/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.y;

@ez
public final class x
implements SafeParcelable {
    public static final y CREATOR = new y();
    public final boolean lX;
    public final boolean mh;
    public final int versionCode;

    x(int n, boolean bl, boolean bl2) {
        this.versionCode = n;
        this.lX = bl;
        this.mh = bl2;
    }

    public x(boolean bl, boolean bl2) {
        this.versionCode = 1;
        this.lX = bl;
        this.mh = bl2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        y.a(this, parcel, n);
    }
}

