/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.Session;
import java.util.ArrayList;
import java.util.List;

public class d
implements Parcelable.Creator<Bucket> {
    static void a(Bucket bucket, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, bucket.iD());
        b.c(parcel, 1000, bucket.getVersionCode());
        b.a(parcel, 2, bucket.iE());
        b.a(parcel, 3, bucket.getSession(), n, false);
        b.c(parcel, 4, bucket.iB());
        b.c(parcel, 5, bucket.getDataSets(), false);
        b.c(parcel, 6, bucket.getBucketType());
        b.a(parcel, 7, bucket.iC());
        b.H(parcel, n2);
    }

    public Bucket bk(Parcel parcel) {
        long l = 0;
        ArrayList<DataSet> arrayList = null;
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
                    arrayList = a.c(parcel, n5, DataSet.CREATOR);
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
        return new Bucket(n4, l2, l, session, n3, arrayList, n2, bl);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bk(parcel);
    }

    public Bucket[] cz(int n) {
        return new Bucket[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cz(n);
    }
}

