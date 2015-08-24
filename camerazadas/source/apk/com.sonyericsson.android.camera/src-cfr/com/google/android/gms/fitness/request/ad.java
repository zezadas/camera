/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.a;
import com.google.android.gms.fitness.request.ae;
import com.google.android.gms.fitness.request.l;

public class ad
implements SafeParcelable {
    public static final Parcelable.Creator<ad> CREATOR = new ae();
    private final int BR;
    private final l UQ;

    ad(int n, IBinder iBinder) {
        this.BR = n;
        this.UQ = l.a.ay(iBinder);
    }

    public ad(BleScanCallback bleScanCallback) {
        this.BR = 1;
        this.UQ = a.a.je().b(bleScanCallback);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    int getVersionCode() {
        return this.BR;
    }

    public IBinder jC() {
        return this.UQ.asBinder();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ae.a(this, parcel, n);
    }
}

