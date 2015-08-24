/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.ax;
import com.google.android.gms.drive.query.Query;

public class QueryRequest
implements SafeParcelable {
    public static final Parcelable.Creator<QueryRequest> CREATOR = new ax();
    final int BR;
    final Query Py;

    QueryRequest(int n, Query query) {
        this.BR = n;
        this.Py = query;
    }

    public QueryRequest(Query query) {
        this(1, query);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ax.a(this, parcel, n);
    }
}

