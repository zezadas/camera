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
import com.google.android.gms.fitness.request.SessionReadRequest;
import java.util.ArrayList;
import java.util.List;

public class t
implements Parcelable.Creator<SessionReadRequest> {
    static void a(SessionReadRequest sessionReadRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, sessionReadRequest.getSessionName(), false);
        b.c(parcel, 1000, sessionReadRequest.getVersionCode());
        b.a(parcel, 2, sessionReadRequest.getSessionId(), false);
        b.a(parcel, 3, sessionReadRequest.iD());
        b.a(parcel, 4, sessionReadRequest.iE());
        b.c(parcel, 5, sessionReadRequest.getDataTypes(), false);
        b.c(parcel, 6, sessionReadRequest.getDataSources(), false);
        b.a(parcel, 7, sessionReadRequest.jz());
        b.a(parcel, 8, sessionReadRequest.jl());
        b.b(parcel, 9, sessionReadRequest.getExcludedPackages(), false);
        b.H(parcel, n);
    }

    public SessionReadRequest bL(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        long l = 0;
        long l2 = 0;
        ArrayList<DataType> arrayList = null;
        ArrayList<DataSource> arrayList2 = null;
        boolean bl = false;
        boolean bl2 = false;
        ArrayList<String> arrayList3 = null;
        block12 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block12;
                }
                case 1: {
                    string = a.o(parcel, n3);
                    continue block12;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block12;
                }
                case 2: {
                    string2 = a.o(parcel, n3);
                    continue block12;
                }
                case 3: {
                    l = a.i(parcel, n3);
                    continue block12;
                }
                case 4: {
                    l2 = a.i(parcel, n3);
                    continue block12;
                }
                case 5: {
                    arrayList = a.c(parcel, n3, DataType.CREATOR);
                    continue block12;
                }
                case 6: {
                    arrayList2 = a.c(parcel, n3, DataSource.CREATOR);
                    continue block12;
                }
                case 7: {
                    bl = a.c(parcel, n3);
                    continue block12;
                }
                case 8: {
                    bl2 = a.c(parcel, n3);
                    continue block12;
                }
                case 9: 
            }
            arrayList3 = a.C(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new SessionReadRequest(n2, string, string2, l, l2, arrayList, arrayList2, bl, bl2, arrayList3);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bL(parcel);
    }

    public SessionReadRequest[] dd(int n) {
        return new SessionReadRequest[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dd(n);
    }
}

