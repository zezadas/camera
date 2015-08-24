/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mi;
import com.google.android.gms.internal.mj;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class mh
implements SafeParcelable {
    public static final mi CREATOR;
    private final int BR;
    private final int aeh;
    private final int afp;
    private final mj afq;

    static;

    mh(int var1, int var2, int var3, mj var4);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int getVersionCode();

    public int hashCode();

    public int mc();

    public int mg();

    public mj mh();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

