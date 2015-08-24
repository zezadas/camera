/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hh;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class hg
implements SafeParcelable {
    public static final hh CREATOR;
    final int BR;
    final String BZ;
    final String Ca;
    final String Cb;

    static;

    hg(int var1, String var2, String var3, String var4);

    public hg(String var1, String var2, String var3);

    @Override
    public int describeContents();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

