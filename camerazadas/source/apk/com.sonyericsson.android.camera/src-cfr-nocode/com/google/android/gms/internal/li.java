/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class li
implements SafeParcelable {
    public static final Parcelable.Creator<li> CREATOR;
    private final int BR;
    private final DataSource Sq;

    static;

    li(int var1, DataSource var2);

    @Override
    public int describeContents();

    public DataSource getDataSource();

    int getVersionCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

