/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gu;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class gt
implements SafeParcelable {
    public static final gu CREATOR;
    public final int versionCode;
    public String wD;
    public int wE;
    public int wF;
    public boolean wG;

    static;

    public gt(int var1, int var2, boolean var3);

    gt(int var1, String var2, int var3, int var4, boolean var5);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

