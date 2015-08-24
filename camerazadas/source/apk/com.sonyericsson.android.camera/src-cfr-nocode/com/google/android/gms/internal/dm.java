/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
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

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class dm
implements SafeParcelable {
    public static final dl CREATOR;
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

    static;

    dm(int var1, dj var2, IBinder var3, IBinder var4, IBinder var5, IBinder var6, String var7, boolean var8, String var9, IBinder var10, int var11, int var12, String var13, gt var14, IBinder var15, String var16, x var17);

    public dm(dj var1, t var2, dn var3, dq var4, gt var5);

    public dm(t var1, dn var2, bw var3, dq var4, gv var5, boolean var6, int var7, String var8, gt var9, bz var10);

    public dm(t var1, dn var2, bw var3, dq var4, gv var5, boolean var6, int var7, String var8, String var9, gt var10, bz var11);

    public dm(t var1, dn var2, dq var3, gv var4, int var5, gt var6, String var7, x var8);

    public dm(t var1, dn var2, dq var3, gv var4, boolean var5, int var6, gt var7);

    public static void a(Intent var0, dm var1);

    public static dm b(Intent var0);

    IBinder cb();

    IBinder cc();

    IBinder cd();

    IBinder ce();

    IBinder cf();

    IBinder cg();

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

