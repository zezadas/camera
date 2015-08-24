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
import com.google.android.gms.fitness.request.r;

public class q
implements SafeParcelable {
    public static final Parcelable.Creator<q> CREATOR = new r();
    private final int BR;
    private final k UA;
    private final PendingIntent mPendingIntent;

    /*
     * Enabled aggressive block sorting
     */
    q(int n, IBinder object, PendingIntent pendingIntent) {
        this.BR = n;
        object = object == null ? null : k.a.an((IBinder)object);
        this.UA = object;
        this.mPendingIntent = pendingIntent;
    }

    public q(k k, PendingIntent pendingIntent) {
        this.BR = 2;
        this.UA = k;
        this.mPendingIntent = pendingIntent;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    int getVersionCode() {
        return this.BR;
    }

    public PendingIntent jr() {
        return this.mPendingIntent;
    }

    IBinder jw() {
        if (this.UA == null) {
            return null;
        }
        return this.UA.asBinder();
    }

    public String toString() {
        return String.format("SensorUnregistrationRequest{%s}", this.UA);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        r.a(this, parcel, n);
    }
}

