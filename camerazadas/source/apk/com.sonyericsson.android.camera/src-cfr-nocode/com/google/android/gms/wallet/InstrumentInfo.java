/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class InstrumentInfo
implements SafeParcelable {
    public static final Parcelable.Creator<InstrumentInfo> CREATOR;
    private final int BR;
    private String asN;
    private String asO;

    static;

    InstrumentInfo(int var1, String var2, String var3);

    @Override
    public int describeContents();

    public String getInstrumentDetails();

    public String getInstrumentType();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

