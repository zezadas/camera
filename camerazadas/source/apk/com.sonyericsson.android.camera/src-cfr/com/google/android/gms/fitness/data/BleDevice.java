/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.c;
import com.google.android.gms.internal.ki;
import java.util.Collections;
import java.util.List;

public class BleDevice
implements SafeParcelable {
    public static final Parcelable.Creator<BleDevice> CREATOR = new c();
    private final int BR;
    private final List<String> SA;
    private final List<DataType> SB;
    private final String Sz;
    private final String mName;

    BleDevice(int n, String string, String string2, List<String> list, List<DataType> list2) {
        this.BR = n;
        this.Sz = string;
        this.mName = string2;
        this.SA = Collections.unmodifiableList(list);
        this.SB = Collections.unmodifiableList(list2);
    }

    private boolean a(BleDevice bleDevice) {
        if (this.mName.equals(bleDevice.mName) && this.Sz.equals(bleDevice.Sz) && ki.a(bleDevice.SA, this.SA) && ki.a(this.SB, bleDevice.SB)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof BleDevice && this.a((BleDevice)object)) {
            return true;
        }
        return false;
    }

    public String getAddress() {
        return this.Sz;
    }

    public List<DataType> getDataTypes() {
        return this.SB;
    }

    public String getName() {
        return this.mName;
    }

    public List<String> getSupportedProfiles() {
        return this.SA;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.mName, this.Sz, this.SA, this.SB);
    }

    public String toString() {
        return n.h(this).a("name", this.mName).a("address", this.Sz).a("dataTypes", this.SB).a("supportedProfiles", this.SA).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }
}

