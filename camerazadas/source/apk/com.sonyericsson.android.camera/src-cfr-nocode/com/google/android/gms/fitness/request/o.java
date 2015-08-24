/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.k;
import com.google.android.gms.fitness.request.SensorRequest;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class o
implements SafeParcelable {
    public static final Parcelable.Creator<o> CREATOR;
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

    static;

    o(int var1, DataSource var2, DataType var3, IBinder var4, int var5, int var6, long var7, long var9, PendingIntent var11, long var12, int var14, List<LocationRequest> var15, long var16);

    private o(DataSource var1, DataType var2, k var3, PendingIntent var4, long var5, long var7, long var9, int var11, List var12, List var13, long var14);

    public o(SensorRequest var1, k var2, PendingIntent var3);

    private boolean a(o var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int getAccuracyMode();

    public DataSource getDataSource();

    public DataType getDataType();

    int getVersionCode();

    public int hashCode();

    public long iX();

    public PendingIntent jr();

    public long js();

    public long jt();

    public List<LocationRequest> ju();

    public long jv();

    IBinder jw();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

