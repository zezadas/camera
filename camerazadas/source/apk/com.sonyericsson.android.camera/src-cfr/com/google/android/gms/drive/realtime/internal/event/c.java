/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.realtime.internal.event.ParcelableEvent;
import com.google.android.gms.drive.realtime.internal.event.ParcelableEventList;
import java.util.ArrayList;
import java.util.List;

public class c
implements Parcelable.Creator<ParcelableEventList> {
    static void a(ParcelableEventList parcelableEventList, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, parcelableEventList.BR);
        b.c(parcel, 2, parcelableEventList.me, false);
        b.a(parcel, 3, parcelableEventList.RE, n, false);
        b.a(parcel, 4, parcelableEventList.RF);
        b.b(parcel, 5, parcelableEventList.RG, false);
        b.H(parcel, n2);
    }

    public ParcelableEventList ba(Parcel parcel) {
        boolean bl = false;
        ArrayList<String> arrayList = null;
        int n = a.C(parcel);
        DataHolder dataHolder = null;
        ArrayList<ParcelableEvent> arrayList2 = null;
        int n2 = 0;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block7;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block7;
                }
                case 2: {
                    arrayList2 = a.c(parcel, n3, ParcelableEvent.CREATOR);
                    continue block7;
                }
                case 3: {
                    dataHolder = (DataHolder)a.a(parcel, n3, DataHolder.CREATOR);
                    continue block7;
                }
                case 4: {
                    bl = a.c(parcel, n3);
                    continue block7;
                }
                case 5: 
            }
            arrayList = a.C(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ParcelableEventList(n2, arrayList2, dataHolder, bl, arrayList);
    }

    public ParcelableEventList[] cn(int n) {
        return new ParcelableEventList[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ba(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cn(n);
    }
}

