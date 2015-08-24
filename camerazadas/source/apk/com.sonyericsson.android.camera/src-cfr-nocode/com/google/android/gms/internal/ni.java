/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.nk;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ni
implements SafeParcelable {
    public static final nk CREATOR;
    public final long akH;
    public final byte[] akI;
    public final Bundle akJ;
    public final String tag;
    public final int versionCode;

    static;

    ni(int var1, long var2, String var4, byte[] var5, Bundle var6);

    public /* varargs */ ni(long var1, String var3, byte[] var4, String ... var5);

    private static /* varargs */ Bundle f(String ... var0);

    @Override
    public int describeContents();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

