/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.service;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.k;
import com.google.android.gms.fitness.service.SensorEventDispatcher;
import java.util.concurrent.TimeUnit;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FitnessSensorServiceRequest
implements SafeParcelable {
    public static final Parcelable.Creator<FitnessSensorServiceRequest> CREATOR;
    public static final int UNSPECIFIED = -1;
    private final int BR;
    private final DataSource Sq;
    private final k UA;
    private final long Vc;
    private final long Vd;

    static;

    FitnessSensorServiceRequest(int var1, DataSource var2, IBinder var3, long var4, long var6);

    private boolean a(FitnessSensorServiceRequest var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public long getBatchInterval(TimeUnit var1);

    public DataSource getDataSource();

    public SensorEventDispatcher getDispatcher();

    public long getSamplingRate(TimeUnit var1);

    int getVersionCode();

    public int hashCode();

    public long iX();

    public long jN();

    IBinder jw();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

