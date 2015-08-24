/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.service;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.k;
import com.google.android.gms.fitness.service.SensorEventDispatcher;
import com.google.android.gms.fitness.service.a;
import com.google.android.gms.fitness.service.b;
import java.util.concurrent.TimeUnit;

public class FitnessSensorServiceRequest
implements SafeParcelable {
    public static final Parcelable.Creator<FitnessSensorServiceRequest> CREATOR = new a();
    public static final int UNSPECIFIED = -1;
    private final int BR;
    private final DataSource Sq;
    private final k UA;
    private final long Vc;
    private final long Vd;

    FitnessSensorServiceRequest(int n, DataSource dataSource, IBinder iBinder, long l, long l2) {
        this.BR = n;
        this.Sq = dataSource;
        this.UA = k.a.an(iBinder);
        this.Vc = l;
        this.Vd = l2;
    }

    private boolean a(FitnessSensorServiceRequest fitnessSensorServiceRequest) {
        if (n.equal(this.Sq, fitnessSensorServiceRequest.Sq) && this.Vc == fitnessSensorServiceRequest.Vc && this.Vd == fitnessSensorServiceRequest.Vd) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof FitnessSensorServiceRequest && this.a((FitnessSensorServiceRequest)object)) {
            return true;
        }
        return false;
    }

    public long getBatchInterval(TimeUnit timeUnit) {
        return timeUnit.convert(this.Vd, TimeUnit.MICROSECONDS);
    }

    public DataSource getDataSource() {
        return this.Sq;
    }

    public SensorEventDispatcher getDispatcher() {
        return new b(this.UA);
    }

    public long getSamplingRate(TimeUnit timeUnit) {
        if (this.Vc == -1) {
            return -1;
        }
        return timeUnit.convert(this.Vc, TimeUnit.MICROSECONDS);
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.Sq, this.Vc, this.Vd);
    }

    public long iX() {
        return this.Vc;
    }

    public long jN() {
        return this.Vd;
    }

    IBinder jw() {
        return this.UA.asBinder();
    }

    public String toString() {
        return String.format("FitnessSensorServiceRequest{%s}", this.Sq);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }
}

