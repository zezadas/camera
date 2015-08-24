/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.y;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class x
implements SafeParcelable {
    public static final y CREATOR;
    public final boolean lX;
    public final boolean mh;
    public final int versionCode;

    static;

    x(int var1, boolean var2, boolean var3);

    public x(boolean var1, boolean var2);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

