/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.RawBucket;
import com.google.android.gms.fitness.data.RawDataSet;
import com.google.android.gms.fitness.data.Session;
import java.util.ArrayList;
import java.util.List;

public class m
implements Parcelable.Creator<RawBucket> {
    static void a(RawBucket rawBucket, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, rawBucket.KS);
        b.c(parcel, 1000, rawBucket.BR);
        b.a(parcel, 2, rawBucket.Sr);
        b.a(parcel, 3, rawBucket.St, n, false);
        b.c(parcel, 4, rawBucket.Tl);
        b.c(parcel, 5, rawBucket.SD, false);
        b.c(parcel, 6, rawBucket.SE);
        b.a(parcel, 7, rawBucket.SF);
        b.H(parcel, n2);
    }

    public RawBucket br(Parcel parcel) {
        long l = 0;
        ArrayList<RawDataSet> arrayList = null;
        boolean bl = false;
        int n = a.C(parcel);
        int n2 = 0;
        int n3 = 0;
        Session session = null;
        long l2 = 0;
        int n4 = 0;
        block10 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block10;
                }
                case 1: {
                    l2 = a.i(parcel, n5);
                    continue block10;
                }
                case 1000: {
                    n4 = a.g(parcel, n5);
                    continue block10;
                }
                case 2: {
                    l = a.i(parcel, n5);
                    continue block10;
                }
                case 3: {
                    session = a.a(parcel, n5, Session.CREATOR);
                    continue block10;
                }
                case 4: {
                    n3 = a.g(parcel, n5);
                    continue block10;
                }
                case 5: {
                    arrayList = a.c(parcel, n5, RawDataSet.CREATOR);
                    continue block10;
                }
                case 6: {
                    n2 = a.g(parcel, n5);
                    continue block10;
                }
                case 7: 
            }
            bl = a.c(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new RawBucket(n4, l2, l, session, n3, arrayList, n2, bl);
    }

    public RawBucket[] cH(int n) {
        return new RawBucket[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.br(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cH(n);
    }
}

