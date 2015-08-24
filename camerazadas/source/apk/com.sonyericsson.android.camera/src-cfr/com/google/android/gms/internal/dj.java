/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.ez;

@ez
public final class dj
implements SafeParcelable {
    public static final di CREATOR = new di();
    public final String mimeType;
    public final String packageName;
    public final String rp;
    public final String rq;
    public final String rr;
    public final String rs;
    public final String rt;
    public final int versionCode;

    public dj(int n, String string, String string2, String string3, String string4, String string5, String string6, String string7) {
        this.versionCode = n;
        this.rp = string;
        this.rq = string2;
        this.mimeType = string3;
        this.packageName = string4;
        this.rr = string5;
        this.rs = string6;
        this.rt = string7;
    }

    public dj(String string, String string2, String string3, String string4, String string5, String string6, String string7) {
        this(1, string, string2, string3, string4, string5, string6, string7);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        di.a(this, parcel, n);
    }
}

