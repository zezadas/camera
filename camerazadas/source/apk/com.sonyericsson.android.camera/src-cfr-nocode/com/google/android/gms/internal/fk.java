/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fl;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class fk
implements SafeParcelable {
    public static final fl CREATOR;
    public final int errorCode;
    public final int orientation;
    public final List<String> qf;
    public final List<String> qg;
    public final long qj;
    public final String rP;
    public final boolean tF;
    public final String tG;
    public final long tH;
    public final boolean tI;
    public final long tJ;
    public final List<String> tK;
    public final String tL;
    public final long tM;
    public final String tN;
    public final boolean tO;
    public final String tP;
    public final String tQ;
    public final boolean tR;
    public final boolean tS;
    public final boolean tT;
    public final int versionCode;

    static;

    public fk(int var1);

    public fk(int var1, long var2);

    fk(int var1, String var2, String var3, List<String> var4, int var5, List<String> var6, long var7, boolean var9, long var10, List<String> var12, long var13, int var15, String var16, long var17, String var19, boolean var20, String var21, String var22, boolean var23, boolean var24, boolean var25, boolean var26);

    public fk(String var1, String var2, List<String> var3, List<String> var4, long var5, boolean var7, long var8, List<String> var10, long var11, int var13, String var14, long var15, String var17, String var18, boolean var19, boolean var20, boolean var21, boolean var22);

    public fk(String var1, String var2, List<String> var3, List<String> var4, long var5, boolean var7, long var8, List<String> var10, long var11, int var13, String var14, long var15, String var17, boolean var18, String var19, String var20, boolean var21, boolean var22, boolean var23, boolean var24);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

