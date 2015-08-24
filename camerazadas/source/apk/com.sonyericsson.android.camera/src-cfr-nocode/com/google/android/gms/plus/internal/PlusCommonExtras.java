/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.internal.f;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class PlusCommonExtras
implements SafeParcelable {
    public static final f CREATOR;
    public static String TAG;
    private final int BR;
    private String alA;
    private String alB;

    static;

    public PlusCommonExtras();

    PlusCommonExtras(int var1, String var2, String var3);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int getVersionCode();

    public int hashCode();

    public String ne();

    public String nf();

    public void o(Bundle var1);

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

