/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.k;
import com.google.android.gms.fitness.request.SensorRequest;
import com.google.android.gms.fitness.request.p;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class o
implements SafeParcelable {
    public static final Parcelable.Creator<o> CREATOR = new p();
    private final int BR;
    private final DataType Sp;
    private final DataSource Sq;
    private final long Tt;
    private final int Tu;
    private k UA;
    int UB;
    int UC;
    private final long UD;
    private final long UE;
    private final List<LocationRequest> UF;
    private final long UG;
    private final List UH;
    private final PendingIntent mPendingIntent;

    /*
     * Enabled aggressive block sorting
     */
    o(int n, DataSource object, DataType dataType, IBinder iBinder, int n2, int n3, long l, long l2, PendingIntent pendingIntent, long l3, int n4, List<LocationRequest> list, long l4) {
        this.BR = n;
        this.Sq = object;
        this.Sp = dataType;
        object = iBinder == null ? null : k.a.an(iBinder);
        this.UA = object;
        long l5 = l;
        if (l == 0) {
            l5 = n2;
        }
        this.Tt = l5;
        this.UE = l3;
        l = l2;
        if (l2 == 0) {
            l = n3;
        }
        this.UD = l;
        this.UF = list;
        this.mPendingIntent = pendingIntent;
        this.Tu = n4;
        this.UH = Collections.emptyList();
        this.UG = l4;
    }

    private o(DataSource dataSource, DataType dataType, k k, PendingIntent pendingIntent, long l, long l2, long l3, int n, List list, List list2, long l4) {
        this.BR = 4;
        this.Sq = dataSource;
        this.Sp = dataType;
        this.UA = k;
        this.mPendingIntent = pendingIntent;
        this.Tt = l;
        this.UE = l2;
        this.UD = l3;
        this.Tu = n;
        this.UF = list;
        this.UH = list2;
        this.UG = l4;
    }

    public o(SensorRequest sensorRequest, k k, PendingIntent pendingIntent) {
        this(sensorRequest.getDataSource(), sensorRequest.getDataType(), k, pendingIntent, sensorRequest.getSamplingRate(TimeUnit.MICROSECONDS), sensorRequest.getFastestRate(TimeUnit.MICROSECONDS), sensorRequest.getMaxDeliveryLatency(TimeUnit.MICROSECONDS), sensorRequest.getAccuracyMode(), null, Collections.emptyList(), sensorRequest.jx());
    }

    private boolean a(o o) {
        if (n.equal(this.Sq, o.Sq) && n.equal(this.Sp, o.Sp) && this.Tt == o.Tt && this.UE == o.UE && this.UD == o.UD && this.Tu == o.Tu && n.equal(this.UF, o.UF)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof o && this.a((o)object)) {
            return true;
        }
        return false;
    }

    public int getAccuracyMode() {
        return this.Tu;
    }

    public DataSource getDataSource() {
        return this.Sq;
    }

    public DataType getDataType() {
        return this.Sp;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.Sq, this.Sp, this.UA, this.Tt, this.UE, this.UD, this.Tu, this.UF);
    }

    public long iX() {
        return this.Tt;
    }

    public PendingIntent jr() {
        return this.mPendingIntent;
    }

    public long js() {
        return this.UE;
    }

    public long jt() {
        return this.UD;
    }

    public List<LocationRequest> ju() {
        return this.UF;
    }

    public long jv() {
        return this.UG;
    }

    IBinder jw() {
        if (this.UA == null) {
            return null;
        }
        return this.UA.asBinder();
    }

    public String toString() {
        return String.format("SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}", this.Sp, this.Sq, this.Tt, this.UE, this.UD);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        p.a(this, parcel, n);
    }
}

