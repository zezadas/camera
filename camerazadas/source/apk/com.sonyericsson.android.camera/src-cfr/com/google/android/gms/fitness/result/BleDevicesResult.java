/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.result.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class BleDevicesResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<BleDevicesResult> CREATOR = new a();
    private final int BR;
    private final Status CM;
    private final List<BleDevice> UU;

    BleDevicesResult(int n, List<BleDevice> list, Status status) {
        this.BR = n;
        this.UU = Collections.unmodifiableList(list);
        this.CM = status;
    }

    public BleDevicesResult(List<BleDevice> list, Status status) {
        this.BR = 3;
        this.UU = Collections.unmodifiableList(list);
        this.CM = status;
    }

    public static BleDevicesResult D(Status status) {
        return new BleDevicesResult(Collections.<BleDevice>emptyList(), status);
    }

    private boolean b(BleDevicesResult bleDevicesResult) {
        if (this.CM.equals(bleDevicesResult.CM) && n.equal(this.UU, bleDevicesResult.UU)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof BleDevicesResult && this.b((BleDevicesResult)object)) {
            return true;
        }
        return false;
    }

    public List<BleDevice> getClaimedBleDevices() {
        return this.UU;
    }

    public List<BleDevice> getClaimedBleDevices(DataType dataType) {
        ArrayList<BleDevice> arrayList = new ArrayList<BleDevice>();
        for (BleDevice bleDevice : this.UU) {
            if (!bleDevice.getDataTypes().contains(dataType)) continue;
            arrayList.add(bleDevice);
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.CM, this.UU);
    }

    public String toString() {
        return n.h(this).a("status", this.CM).a("bleDevices", this.UU).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }
}

