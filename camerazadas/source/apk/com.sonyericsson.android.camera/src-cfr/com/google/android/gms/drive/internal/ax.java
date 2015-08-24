/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.internal.QueryRequest;
import com.google.android.gms.drive.query.Query;

public class ax
implements Parcelable.Creator<QueryRequest> {
    static void a(QueryRequest queryRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, queryRequest.BR);
        b.a(parcel, 2, queryRequest.Py, n, false);
        b.H(parcel, n2);
    }

    public QueryRequest ay(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        Query query = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block4;
                }
                case 2: 
            }
            query = a.a(parcel, n3, Query.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new QueryRequest(n2, query);
    }

    public QueryRequest[] bK(int n) {
        return new QueryRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ay(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bK(n);
    }
}

