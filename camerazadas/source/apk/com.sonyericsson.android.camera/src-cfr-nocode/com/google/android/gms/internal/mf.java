/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mg;
import com.google.android.gms.internal.mp;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class mf
implements SafeParcelable {
    public static final mg CREATOR;
    final int BR;
    private final boolean afn;
    private final List<mp> afo;

    static;

    mf(int var1, boolean var2, List<mp> var3);

    @Override
    public int describeContents();

    public boolean me();

    public List<mp> mf();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

