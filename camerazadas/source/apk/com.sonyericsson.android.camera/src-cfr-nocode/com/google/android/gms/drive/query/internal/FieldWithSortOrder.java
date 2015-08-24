/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.internal.c;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FieldWithSortOrder
implements SafeParcelable {
    public static final c CREATOR;
    final int BR;
    final String PB;
    final boolean QN;

    static;

    FieldWithSortOrder(int var1, String var2, boolean var3);

    public FieldWithSortOrder(String var1, boolean var2);

    @Override
    public int describeContents();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

