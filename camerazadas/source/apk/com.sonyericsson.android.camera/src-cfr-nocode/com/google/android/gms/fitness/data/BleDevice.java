/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class BleDevice
implements SafeParcelable {
    public static final Parcelable.Creator<BleDevice> CREATOR;
    private final int BR;
    private final List<String> SA;
    private final List<DataType> SB;
    private final String Sz;
    private final String mName;

    static;

    BleDevice(int var1, String var2, String var3, List<String> var4, List<DataType> var5);

    private boolean a(BleDevice var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getAddress();

    public List<DataType> getDataTypes();

    public String getName();

    public List<String> getSupportedProfiles();

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

