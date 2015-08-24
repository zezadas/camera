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
public class aa
implements SafeParcelable {
    public static final Parcelable.Creator<aa> CREATOR;
    private final int BR;
    private final PendingIntent mPendingIntent;

    static;

    aa(int var1, PendingIntent var2);

    public aa(PendingIntent var1);

    private boolean a(aa var1);

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

