/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mu;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class mt
implements SafeParcelable {
    public static final mu CREATOR;
    public static final mt aic;
    public static final mt aid;
    public static final mt aie;
    public static final Set<mt> aif;
    final int BR;
    final int aig;
    final String uO;

    static;

    mt(int var1, String var2, int var3);

    private static mt y(String var0, int var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

