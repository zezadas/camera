/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class u
implements SafeParcelable {
    public static final Parcelable.Creator<u> CREATOR;
    private final int BR;
    private final PendingIntent mPendingIntent;

    static;

    u(int var1, PendingIntent var2);

    public u(PendingIntent var1);

    private boolean a(u var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    int getVersionCode();

    public int hashCode();

    public PendingIntent jr();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

