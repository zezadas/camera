/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.du;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class dv
implements SafeParcelable {
    public static final du CREATOR;
    public final el lM;
    public final ee lT;
    public final eg si;
    public final Context sj;
    public final int versionCode;

    static;

    dv(int var1, IBinder var2, IBinder var3, IBinder var4, IBinder var5);

    public dv(eg var1, el var2, ee var3, Context var4);

    public static void a(Intent var0, dv var1);

    public static dv c(Intent var0);

    IBinder ck();

    IBinder cl();

    IBinder cm();

    IBinder cn();

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

