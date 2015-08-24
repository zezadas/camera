/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.c;

public class b
implements SafeParcelable {
    public static final Parcelable.Creator<b> CREATOR = new c();
    private final int BR;
    private final String Ui;
    private final BleDevice Uj;

    b(int n, String string, BleDevice bleDevice) {
        this.BR = n;
        this.Ui = string;
        this.Uj = bleDevice;
    }

    public b(BleDevice bleDevice) {
        this(2, bleDevice.getAddress(), bleDevice);
    }

    public b(String string) {
        this(2, string, null);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getDeviceAddress() {
        return this.Ui;
    }

    int getVersionCode() {
        return this.BR;
    }

    public BleDevice jf() {
        return this.Uj;
    }

    public String toString() {
        return String.format("ClaimBleDeviceRequest{%s %s}", this.Ui, this.Uj);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }
}

