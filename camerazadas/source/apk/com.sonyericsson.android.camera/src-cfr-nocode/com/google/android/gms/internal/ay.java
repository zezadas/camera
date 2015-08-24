/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.az;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class ay
implements SafeParcelable {
    public static final az CREATOR;
    public final int height;
    public final int heightPixels;
    public final String of;
    public final boolean og;
    public final ay[] oh;
    public final int versionCode;
    public final int width;
    public final int widthPixels;

    static;

    public ay();

    ay(int var1, String var2, int var3, int var4, boolean var5, int var6, int var7, ay[] var8);

    public ay(Context var1, AdSize var2);

    public ay(Context var1, AdSize[] var2);

    public ay(ay var1, ay[] var2);

    public static int a(DisplayMetrics var0);

    public static int b(DisplayMetrics var0);

    private static int c(DisplayMetrics var0);

    public AdSize bc();

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

