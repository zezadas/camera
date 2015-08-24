/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.location.LocationRequest;
import java.util.concurrent.TimeUnit;

/*
 * Exception performing whole class analysis.
 */
public class SensorRequest {
    public static final int ACCURACY_MODE_DEFAULT = 2;
    public static final int ACCURACY_MODE_HIGH = 3;
    public static final int ACCURACY_MODE_LOW = 1;
    private final DataType Sp;
    private final DataSource Sq;
    private final long Tt;
    private final int Tu;
    private final long UD;
    private final long UE;
    private final LocationRequest UI;
    private final long UJ;

    private SensorRequest(DataSource var1, LocationRequest var2);

    private SensorRequest(Builder var1);

    /* synthetic */ SensorRequest(Builder var1,  var2);

    private static int a(LocationRequest var0);

    private boolean a(SensorRequest var1);

    public static int da(int var0);

    public static SensorRequest fromLocationRequest(DataSource var0, LocationRequest var1);

    public boolean equals(Object var1);

    public int getAccuracyMode();

    public DataSource getDataSource();

    public DataType getDataType();

    public long getFastestRate(TimeUnit var1);

    public long getMaxDeliveryLatency(TimeUnit var1);

    public long getSamplingRate(TimeUnit var1);

    public int hashCode();

    public long jx();

    public String toString();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private DataType Sp;
        private DataSource Sq;
        private long Tt;
        private int Tu;
        private long UD;
        private long UE;
        private long UJ;
        private boolean UK;

        public Builder();

        static /* synthetic */ DataSource a(Builder var0);

        static /* synthetic */ DataType b(Builder var0);

        static /* synthetic */ long c(Builder var0);

        static /* synthetic */ long d(Builder var0);

        static /* synthetic */ long e(Builder var0);

        static /* synthetic */ int f(Builder var0);

        static /* synthetic */ long g(Builder var0);

        public SensorRequest build();

        public Builder setAccuracyMode(int var1);

        public Builder setDataSource(DataSource var1);

        public Builder setDataType(DataType var1);

        public Builder setFastestRate(int var1, TimeUnit var2);

        public Builder setMaxDeliveryLatency(int var1, TimeUnit var2);

        public Builder setSamplingRate(long var1, TimeUnit var3);

        public Builder setTimeout(long var1, TimeUnit var3);
    }

}

