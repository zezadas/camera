/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.data.DataType;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class BleDevicesResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<BleDevicesResult> CREATOR;
    private final int BR;
    private final Status CM;
    private final List<BleDevice> UU;

    static;

    BleDevicesResult(int var1, List<BleDevice> var2, Status var3);

    public BleDevicesResult(List<BleDevice> var1, Status var2);

    public static BleDevicesResult D(Status var0);

    private boolean b(BleDevicesResult var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public List<BleDevice> getClaimedBleDevices();

    public List<BleDevice> getClaimedBleDevices(DataType var1);

    @Override
    public Status getStatus();

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

