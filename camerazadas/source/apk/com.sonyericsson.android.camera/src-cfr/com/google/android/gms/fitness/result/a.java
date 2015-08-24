/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.result.BleDevicesResult;
import java.util.ArrayList;
import java.util.List;

public class a
implements Parcelable.Creator<BleDevicesResult> {
    static void a(BleDevicesResult bleDevicesResult, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, bleDevicesResult.getClaimedBleDevices(), false);
        b.c(parcel, 1000, bleDevicesResult.getVersionCode());
        b.a(parcel, 2, bleDevicesResult.getStatus(), n, false);
        b.H(parcel, n2);
    }

    public BleDevicesResult bV(Parcel parcel) {
        Status status = null;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        ArrayList<BleDevice> arrayList = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n3, BleDevice.CREATOR);
                    continue block5;
                }
                case 1000: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            status = (Status)com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, Status.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new BleDevicesResult(n2, arrayList, status);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bV(parcel);
    }

    public BleDevicesResult[] dn(int n) {
        return new BleDevicesResult[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dn(n);
    }
}

