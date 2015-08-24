/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.nn;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class nm
implements SafeParcelable {
    public static final nn CREATOR;
    public final int akR;
    public final int akS;
    public final String akT;
    public final String akU;
    public final boolean akV;
    public final String packageName;
    public final int versionCode;

    static;

    public nm(int var1, String var2, int var3, int var4, String var5, String var6, boolean var7);

    public nm(String var1, int var2, int var3, String var4, String var5, boolean var6);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

