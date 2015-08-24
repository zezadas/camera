/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mj;
import com.google.android.gms.internal.mo;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class mn
implements SafeParcelable {
    public static final mo CREATOR;
    static final long afA;
    final int BR;
    private final long aes;
    private final mj afB;
    private final int mPriority;

    static;

    public mn(int var1, mj var2, long var3, int var5);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public long getInterval();

    public int getPriority();

    public int hashCode();

    public mj mh();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

