/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ah
implements SafeParcelable {
    public static final Parcelable.Creator<ah> CREATOR;
    private final int BR;
    private final String Ui;

    static;

    ah(int var1, String var2);

    public ah(String var1);

    @Override
    public int describeContents();

    public String getDeviceAddress();

    int getVersionCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

