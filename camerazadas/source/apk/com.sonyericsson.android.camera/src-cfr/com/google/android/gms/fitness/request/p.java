/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.o;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.b;
import java.util.ArrayList;
import java.util.List;

public class p
implements Parcelable.Creator<o> {
    static void a(o o, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, o.getDataSource(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1000, o.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, o.getDataType(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, o.jw(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 4, o.UB);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 5, o.UC);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, o.iX());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, o.jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, o.jr(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, o.js());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 10, o.getAccuracyMode());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 11, o.ju(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, o.jv());
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    public o bI(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        DataSource dataSource = null;
        DataType dataType = null;
        IBinder iBinder = null;
        int n3 = 0;
        int n4 = 0;
        long l = 0;
        long l2 = 0;
        PendingIntent pendingIntent = null;
        long l3 = 0;
        int n5 = 0;
        ArrayList<LocationRequest> arrayList = null;
        long l4 = 0;
        block15 : while (parcel.dataPosition() < n) {
            int n6 = a.B(parcel);
            switch (a.aD(n6)) {
                default: {
                    a.b(parcel, n6);
                    continue block15;
                }
                case 1: {
                    dataSource = a.a(parcel, n6, DataSource.CREATOR);
                    continue block15;
                }
                case 1000: {
                    n2 = a.g(parcel, n6);
                    continue block15;
                }
                case 2: {
                    dataType = a.a(parcel, n6, DataType.CREATOR);
                    continue block15;
                }
                case 3: {
                    iBinder = a.p(parcel, n6);
                    continue block15;
                }
                case 4: {
                    n3 = a.g(parcel, n6);
                    continue block15;
                }
                case 5: {
                    n4 = a.g(parcel, n6);
                    continue block15;
                }
                case 6: {
                    l = a.i(parcel, n6);
                    continue block15;
                }
                case 7: {
                    l2 = a.i(parcel, n6);
                    continue block15;
                }
                case 8: {
                    pendingIntent = a.a(parcel, n6, PendingIntent.CREATOR);
                    continue block15;
                }
                case 9: {
                    l3 = a.i(parcel, n6);
                    continue block15;
                }
                case 10: {
                    n5 = a.g(parcel, n6);
                    continue block15;
                }
                case 11: {
                    arrayList = a.c(parcel, n6, LocationRequest.CREATOR);
                    continue block15;
                }
                case 12: 
            }
            l4 = a.i(parcel, n6);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new o(n2, dataSource, dataType, iBinder, n3, n4, l, l2, pendingIntent, l3, n5, arrayList, l4);
    }

    public o[] cZ(int n) {
        return new o[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bI(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cZ(n);
    }
}

