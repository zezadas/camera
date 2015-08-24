/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;
import java.util.List;

public class c
implements Parcelable.Creator<BleDevice> {
    static void a(BleDevice bleDevice, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, bleDevice.getAddress(), false);
        b.c(parcel, 1000, bleDevice.getVersionCode());
        b.a(parcel, 2, bleDevice.getName(), false);
        b.b(parcel, 3, bleDevice.getSupportedProfiles(), false);
        b.c(parcel, 4, bleDevice.getDataTypes(), false);
        b.H(parcel, n);
    }

    public BleDevice bj(Parcel parcel) {
        ArrayList<DataType> arrayList = null;
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList<String> arrayList2 = null;
        String string = null;
        String string2 = null;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block7;
                }
                case 1: {
                    string2 = a.o(parcel, n3);
                    continue block7;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block7;
                }
                case 2: {
                    string = a.o(parcel, n3);
                    continue block7;
                }
                case 3: {
                    arrayList2 = a.C(parcel, n3);
                    continue block7;
                }
                case 4: 
            }
            arrayList = a.c(parcel, n3, DataType.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new BleDevice(n2, string2, string, arrayList2, arrayList);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bj(parcel);
    }

    public BleDevice[] cx(int n) {
        return new BleDevice[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cx(n);
    }
}

