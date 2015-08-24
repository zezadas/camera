/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.Session;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class q
implements SafeParcelable {
    public static final Parcelable.Creator<q> CREATOR;
    final int BR;
    private final Session St;
    private final DataSet Ts;

    static;

    q(int var1, Session var2, DataSet var3);

    private boolean a(q var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public Session getSession();

    public int hashCode();

    public DataSet iW();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

