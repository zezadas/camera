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

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class fi
implements SafeParcelable {
    public static final fj CREATOR;
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

    static;

    fi(int var1, Bundle var2, av var3, ay var4, String var5, ApplicationInfo var6, PackageInfo var7, String var8, String var9, String var10, gt var11, Bundle var12, int var13, List<String> var14, Bundle var15, boolean var16);

    public fi(Bundle var1, av var2, ay var3, String var4, ApplicationInfo var5, PackageInfo var6, String var7, String var8, String var9, gt var10, Bundle var11, int var12, List<String> var13, Bundle var14, boolean var15);

    public fi(a var1, String var2);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
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

        public a(Bundle var1, av var2, ay var3, String var4, ApplicationInfo var5, PackageInfo var6, String var7, String var8, gt var9, Bundle var10, List<String> var11, Bundle var12, boolean var13);
    }

}

