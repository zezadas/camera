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

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class av
implements SafeParcelable {
    public static final aw CREATOR;
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

    static;

    public av(int var1, long var2, Bundle var4, int var5, List<String> var6, boolean var7, int var8, boolean var9, String var10, bj var11, Location var12, String var13, Bundle var14);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

