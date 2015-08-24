/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import java.util.ArrayList;
import java.util.List;

public class s
implements Parcelable.Creator<SessionInsertRequest> {
    static void a(SessionInsertRequest sessionInsertRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, sessionInsertRequest.getSession(), n, false);
        b.c(parcel, 1000, sessionInsertRequest.getVersionCode());
        b.c(parcel, 2, sessionInsertRequest.getDataSets(), false);
        b.c(parcel, 3, sessionInsertRequest.getAggregateDataPoints(), false);
        b.H(parcel, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public SessionInsertRequest bK(Parcel parcel) {
        ArrayList<DataPoint> arrayList = null;
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList<DataSet> arrayList2 = null;
        ArrayList<DataSet> arrayList3 = null;
        while (parcel.dataPosition() < n) {
            ArrayList<DataSet> arrayList4;
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    arrayList4 = arrayList2;
                    arrayList2 = arrayList3;
                    arrayList3 = arrayList4;
                    break;
                }
                case 1: {
                    arrayList4 = a.a(parcel, n3, Session.CREATOR);
                    arrayList3 = arrayList2;
                    arrayList2 = arrayList4;
                    break;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    arrayList4 = arrayList3;
                    arrayList3 = arrayList2;
                    arrayList2 = arrayList4;
                    break;
                }
                case 2: {
                    arrayList4 = a.c(parcel, n3, DataSet.CREATOR);
                    arrayList2 = arrayList3;
                    arrayList3 = arrayList4;
                    break;
                }
                case 3: {
                    arrayList = a.c(parcel, n3, DataPoint.CREATOR);
                    arrayList4 = arrayList3;
                    arrayList3 = arrayList2;
                    arrayList2 = arrayList4;
                }
            }
            arrayList4 = arrayList2;
            arrayList2 = arrayList3;
            arrayList3 = arrayList4;
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new SessionInsertRequest(n2, (Session)arrayList3, arrayList2, arrayList);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bK(parcel);
    }

    public SessionInsertRequest[] dc(int n) {
        return new SessionInsertRequest[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dc(n);
    }
}

