/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Query;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class QueryRequest
implements SafeParcelable {
    public static final Parcelable.Creator<QueryRequest> CREATOR;
    final int BR;
    final Query Py;

    static;

    QueryRequest(int var1, Query var2);

    public QueryRequest(Query var1);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

