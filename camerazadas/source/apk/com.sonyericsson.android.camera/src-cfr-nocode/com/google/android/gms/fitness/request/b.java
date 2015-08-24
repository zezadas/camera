/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.BleDevice;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class b
implements SafeParcelable {
    public static final Parcelable.Creator<b> CREATOR;
    private final int BR;
    private final String Ui;
    private final BleDevice Uj;

    static;

    b(int var1, String var2, BleDevice var3);

    public b(BleDevice var1);

    public b(String var1);

    @Override
    public int describeContents();

    public String getDeviceAddress();

    int getVersionCode();

    public BleDevice jf();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

