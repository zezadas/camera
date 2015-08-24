/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.ae;
import com.google.android.gms.wearable.internal.ax;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class b
implements SafeParcelable {
    public static final Parcelable.Creator<b> CREATOR;
    final int BR;
    public final ae avk;
    public final IntentFilter[] avl;

    static;

    b(int var1, IBinder var2, IntentFilter[] var3);

    public b(ax var1);

    @Override
    public int describeContents();

    IBinder pV();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

