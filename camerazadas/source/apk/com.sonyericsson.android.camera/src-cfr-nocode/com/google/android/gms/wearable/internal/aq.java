/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.ae;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class aq
implements SafeParcelable {
    public static final Parcelable.Creator<aq> CREATOR;
    final int BR;
    public final ae avk;

    static;

    aq(int var1, IBinder var2);

    public aq(ae var1);

    @Override
    public int describeContents();

    IBinder pV();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

