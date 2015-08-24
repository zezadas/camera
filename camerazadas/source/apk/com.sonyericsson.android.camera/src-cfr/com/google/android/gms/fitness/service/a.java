/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.service;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.service.FitnessSensorServiceRequest;

public class a
implements Parcelable.Creator<FitnessSensorServiceRequest> {
    static void a(FitnessSensorServiceRequest fitnessSensorServiceRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, fitnessSensorServiceRequest.getDataSource(), n, false);
        b.c(parcel, 1000, fitnessSensorServiceRequest.getVersionCode());
        b.a(parcel, 2, fitnessSensorServiceRequest.jw(), false);
        b.a(parcel, 3, fitnessSensorServiceRequest.iX());
        b.a(parcel, 4, fitnessSensorServiceRequest.jN());
        b.H(parcel, n2);
    }

    public FitnessSensorServiceRequest cc(Parcel parcel) {
        long l = 0;
        IBinder iBinder = null;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        long l2 = 0;
        DataSource dataSource = null;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block7;
                }
                case 1: {
                    dataSource = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, DataSource.CREATOR);
                    continue block7;
                }
                case 1000: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block7;
                }
                case 2: {
                    iBinder = com.google.android.gms.common.internal.safeparcel.a.p(parcel, n3);
                    continue block7;
                }
                case 3: {
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, n3);
                    continue block7;
                }
                case 4: 
            }
            l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new FitnessSensorServiceRequest(n2, dataSource, iBinder, l2, l);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cc(parcel);
    }

    public FitnessSensorServiceRequest[] du(int n) {
        return new FitnessSensorServiceRequest[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.du(n);
    }
}

