/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import java.util.ArrayList;
import java.util.List;

public class ac
implements Parcelable.Creator<StartBleScanRequest> {
    static void a(StartBleScanRequest startBleScanRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, startBleScanRequest.getDataTypes(), false);
        b.c(parcel, 1000, startBleScanRequest.getVersionCode());
        b.a(parcel, 2, startBleScanRequest.jC(), false);
        b.c(parcel, 3, startBleScanRequest.getTimeoutSecs());
        b.H(parcel, n);
    }

    public StartBleScanRequest bQ(Parcel parcel) {
        IBinder iBinder = null;
        int n = 0;
        int n2 = a.C(parcel);
        ArrayList<DataType> arrayList = null;
        int n3 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block6;
                }
                case 1: {
                    arrayList = a.c(parcel, n4, DataType.CREATOR);
                    continue block6;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block6;
                }
                case 2: {
                    iBinder = a.p(parcel, n4);
                    continue block6;
                }
                case 3: 
            }
            n = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new StartBleScanRequest(n3, arrayList, iBinder, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bQ(parcel);
    }

    public StartBleScanRequest[] di(int n) {
        return new StartBleScanRequest[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.di(n);
    }
}

