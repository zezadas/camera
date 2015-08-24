/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.l;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ad
implements SafeParcelable {
    public static final Parcelable.Creator<ad> CREATOR;
    private final int BR;
    private final l UQ;

    static;

    ad(int var1, IBinder var2);

    public ad(BleScanCallback var1);

    @Override
    public int describeContents();

    int getVersionCode();

    public IBinder jC();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

