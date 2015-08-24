/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class dj
implements SafeParcelable {
    public static final di CREATOR;
    public final String mimeType;
    public final String packageName;
    public final String rp;
    public final String rq;
    public final String rr;
    public final String rs;
    public final String rt;
    public final int versionCode;

    static;

    public dj(int var1, String var2, String var3, String var4, String var5, String var6, String var7, String var8);

    public dj(String var1, String var2, String var3, String var4, String var5, String var6, String var7);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

