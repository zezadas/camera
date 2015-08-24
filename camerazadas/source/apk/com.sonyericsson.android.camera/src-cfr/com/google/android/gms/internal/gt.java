/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gu;

@ez
public final class gt
implements SafeParcelable {
    public static final gu CREATOR = new gu();
    public final int versionCode;
    public String wD;
    public int wE;
    public int wF;
    public boolean wG;

    /*
     * Enabled aggressive block sorting
     */
    public gt(int n, int n2, boolean bl) {
        StringBuilder stringBuilder = new StringBuilder().append("afma-sdk-a-v").append(n).append(".").append(n2).append(".");
        String string = bl ? "0" : "1";
        this(1, stringBuilder.append(string).toString(), n, n2, bl);
    }

    gt(int n, String string, int n2, int n3, boolean bl) {
        this.versionCode = n;
        this.wD = string;
        this.wE = n2;
        this.wF = n3;
        this.wG = bl;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        gu.a(this, parcel, n);
    }
}

