/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.RawDataPoint;
import com.google.android.gms.fitness.data.Value;

public class n
implements Parcelable.Creator<RawDataPoint> {
    static void a(RawDataPoint rawDataPoint, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, rawDataPoint.SG);
        b.c(parcel, 1000, rawDataPoint.BR);
        b.a(parcel, 2, rawDataPoint.SH);
        b.a((Parcel)parcel, (int)3, (Parcelable[])rawDataPoint.SI, (int)n, (boolean)false);
        b.c(parcel, 4, rawDataPoint.Tm);
        b.c(parcel, 5, rawDataPoint.Tn);
        b.a(parcel, 6, rawDataPoint.SK);
        b.a(parcel, 7, rawDataPoint.SL);
        b.H(parcel, n2);
    }

    public RawDataPoint bs(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        long l = 0;
        long l2 = 0;
        Value[] arrvalue = null;
        int n3 = 0;
        int n4 = 0;
        long l3 = 0;
        long l4 = 0;
        block10 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block10;
                }
                case 1: {
                    l = a.i(parcel, n5);
                    continue block10;
                }
                case 1000: {
                    n2 = a.g(parcel, n5);
                    continue block10;
                }
                case 2: {
                    l2 = a.i(parcel, n5);
                    continue block10;
                }
                case 3: {
                    arrvalue = a.b(parcel, n5, Value.CREATOR);
                    continue block10;
                }
                case 4: {
                    n3 = a.g(parcel, n5);
                    continue block10;
                }
                case 5: {
                    n4 = a.g(parcel, n5);
                    continue block10;
                }
                case 6: {
                    l3 = a.i(parcel, n5);
                    continue block10;
                }
                case 7: 
            }
            l4 = a.i(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new RawDataPoint(n2, l, l2, arrvalue, n3, n4, l3, l4);
    }

    public RawDataPoint[] cI(int n) {
        return new RawDataPoint[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bs(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cI(n);
    }
}

