/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class f
implements Parcelable.Creator<DataHolder> {
    static void a(DataHolder dataHolder, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, dataHolder.gB(), false);
        b.c(parcel, 1000, dataHolder.getVersionCode());
        b.a((Parcel)parcel, (int)2, (Parcelable[])dataHolder.gC(), (int)n, (boolean)false);
        b.c(parcel, 3, dataHolder.getStatusCode());
        b.a(parcel, 4, dataHolder.gy(), false);
        b.H(parcel, n2);
    }

    public DataHolder[] at(int n) {
        return new DataHolder[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.z(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.at(n);
    }

    public DataHolder z(Parcel object) {
        int n = 0;
        Bundle bundle = null;
        int n2 = a.C((Parcel)object);
        CursorWindow[] arrcursorWindow = null;
        String[] arrstring = null;
        int n3 = 0;
        block7 : while (object.dataPosition() < n2) {
            int n4 = a.B((Parcel)object);
            switch (a.aD(n4)) {
                default: {
                    a.b((Parcel)object, n4);
                    continue block7;
                }
                case 1: {
                    arrstring = a.A((Parcel)object, n4);
                    continue block7;
                }
                case 1000: {
                    n3 = a.g((Parcel)object, n4);
                    continue block7;
                }
                case 2: {
                    arrcursorWindow = a.b((Parcel)object, n4, CursorWindow.CREATOR);
                    continue block7;
                }
                case 3: {
                    n = a.g((Parcel)object, n4);
                    continue block7;
                }
                case 4: 
            }
            bundle = a.q((Parcel)object, n4);
        }
        if (object.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, (Parcel)object);
        }
        object = new DataHolder(n3, arrstring, arrcursorWindow, n, bundle);
        object.gA();
        return object;
    }
}

