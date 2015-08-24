/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.k;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class q
implements SafeParcelable {
    public static final Parcelable.Creator<q> CREATOR;
    private final int BR;
    private final k UA;
    private final PendingIntent mPendingIntent;

    static;

    q(int var1, IBinder var2, PendingIntent var3);

    public q(k var1, PendingIntent var2);

    @Override
    public int describeContents();

    int getVersionCode();

    public PendingIntent jr();

    IBinder jw();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

