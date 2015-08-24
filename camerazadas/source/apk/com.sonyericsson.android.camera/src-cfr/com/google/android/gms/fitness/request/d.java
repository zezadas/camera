/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import java.util.ArrayList;
import java.util.List;

public class d
implements Parcelable.Creator<DataDeleteRequest> {
    static void a(DataDeleteRequest dataDeleteRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, dataDeleteRequest.iD());
        b.c(parcel, 1000, dataDeleteRequest.getVersionCode());
        b.a(parcel, 2, dataDeleteRequest.iE());
        b.c(parcel, 3, dataDeleteRequest.getDataSources(), false);
        b.c(parcel, 4, dataDeleteRequest.getDataTypes(), false);
        b.c(parcel, 5, dataDeleteRequest.getSessions(), false);
        b.a(parcel, 6, dataDeleteRequest.jg());
        b.a(parcel, 7, dataDeleteRequest.jh());
        b.H(parcel, n);
    }

    public DataDeleteRequest bB(Parcel parcel) {
        long l = 0;
        ArrayList<Session> arrayList = null;
        boolean bl = false;
        int n = a.C(parcel);
        boolean bl2 = false;
        ArrayList<DataType> arrayList2 = null;
        ArrayList<DataSource> arrayList3 = null;
        long l2 = 0;
        int n2 = 0;
        block10 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block10;
                }
                case 1: {
                    l2 = a.i(parcel, n3);
                    continue block10;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block10;
                }
                case 2: {
                    l = a.i(parcel, n3);
                    continue block10;
                }
                case 3: {
                    arrayList3 = a.c(parcel, n3, DataSource.CREATOR);
                    continue block10;
                }
                case 4: {
                    arrayList2 = a.c(parcel, n3, DataType.CREATOR);
                    continue block10;
                }
                case 5: {
                    arrayList = a.c(parcel, n3, Session.CREATOR);
                    continue block10;
                }
                case 6: {
                    bl2 = a.c(parcel, n3);
                    continue block10;
                }
                case 7: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new DataDeleteRequest(n2, l2, l, arrayList3, arrayList2, arrayList, bl2, bl);
    }

    public DataDeleteRequest[] cS(int n) {
        return new DataDeleteRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bB(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cS(n);
    }
}

