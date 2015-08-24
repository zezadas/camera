/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mk;
import com.google.android.gms.internal.mp;
import com.google.android.gms.internal.mt;
import java.util.List;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class mj
implements SafeParcelable {
    public static final mk CREATOR;
    final int BR;
    final List<mp> afr;
    private final String afs;
    private final boolean aft;
    final List<mt> afu;
    final List<String> afv;
    private final Set<mp> afw;
    private final Set<mt> afx;
    private final Set<String> afy;

    static;

    mj(int var1, List<mp> var2, String var3, boolean var4, List<mt> var5, List<String> var6);

    private static <E> Set<E> f(List<E> var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int hashCode();

    @Deprecated
    public String mi();

    public boolean mj();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

