/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hj;
import com.google.android.gms.internal.hq;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class hi
implements SafeParcelable {
    public static final hj CREATOR;
    public static final int Cc;
    private static final hq Cd;
    final int BR;
    public final String Ce;
    final hq Cf;
    public final int Cg;
    public final byte[] Ch;

    static;

    hi(int var1, String var2, hq var3, int var4, byte[] var5);

    public hi(String var1, hq var2);

    public hi(String var1, hq var2, String var3);

    public hi(byte[] var1, hq var2);

    @Override
    public int describeContents();

    public String fk();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

