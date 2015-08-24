/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.SystemClock;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.location.LocationRequest;
import java.util.concurrent.TimeUnit;

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

    private SensorRequest(DataSource dataSource, LocationRequest locationRequest) {
        this.UI = locationRequest;
        this.Tt = TimeUnit.MILLISECONDS.toMicros(locationRequest.getInterval());
        this.UE = TimeUnit.MILLISECONDS.toMicros(locationRequest.getFastestInterval());
        this.UD = this.Tt;
        this.Sp = dataSource.getDataType();
        this.Tu = SensorRequest.a(locationRequest);
        this.Sq = dataSource;
        long l = locationRequest.getExpirationTime();
        if (l == Long.MAX_VALUE) {
            this.UJ = Long.MAX_VALUE;
            return;
        }
        this.UJ = TimeUnit.MILLISECONDS.toMicros(l - SystemClock.elapsedRealtime());
    }

    private SensorRequest(Builder builder) {
        this.Sq = builder.Sq;
        this.Sp = builder.Sp;
        this.Tt = builder.Tt;
        this.UE = builder.UE;
        this.UD = builder.UD;
        this.Tu = builder.Tu;
        this.UI = null;
        this.UJ = builder.UJ;
    }

    private static int a(LocationRequest locationRequest) {
        switch (locationRequest.getPriority()) {
            default: {
                return 2;
            }
            case 100: {
                return 3;
            }
            case 104: 
        }
        return 1;
    }

    private boolean a(SensorRequest sensorRequest) {
        if (n.equal(this.Sq, sensorRequest.Sq) && n.equal(this.Sp, sensorRequest.Sp) && this.Tt == sensorRequest.Tt && this.UE == sensorRequest.UE && this.UD == sensorRequest.UD && this.Tu == sensorRequest.Tu && n.equal(this.UI, sensorRequest.UI) && this.UJ == sensorRequest.UJ) {
            return true;
        }
        return false;
    }

    public static int da(int n) {
        int n2 = n;
        switch (n) {
            default: {
                n2 = 2;
            }
            case 1: 
            case 3: 
        }
        return n2;
    }

    public static SensorRequest fromLocationRequest(DataSource dataSource, LocationRequest locationRequest) {
        return new SensorRequest(dataSource, locationRequest);
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof SensorRequest && this.a((SensorRequest)object)) {
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

    public long getFastestRate(TimeUnit timeUnit) {
        return timeUnit.convert(this.UE, TimeUnit.MICROSECONDS);
    }

    public long getMaxDeliveryLatency(TimeUnit timeUnit) {
        return timeUnit.convert(this.UD, TimeUnit.MICROSECONDS);
    }

    public long getSamplingRate(TimeUnit timeUnit) {
        return timeUnit.convert(this.Tt, TimeUnit.MICROSECONDS);
    }

    public int hashCode() {
        return n.hashCode(this.Sq, this.Sp, this.Tt, this.UE, this.UD, this.Tu, this.UI, this.UJ);
    }

    public long jx() {
        return this.UJ;
    }

    public String toString() {
        return n.h(this).a("dataSource", this.Sq).a("dataType", this.Sp).a("samplingRateMicros", this.Tt).a("deliveryLatencyMicros", this.UD).a("timeOutMicros", this.UJ).toString();
    }

    public static class Builder {
        private DataType Sp;
        private DataSource Sq;
        private long Tt = -1;
        private int Tu = 2;
        private long UD = 0;
        private long UE = 0;
        private long UJ = Long.MAX_VALUE;
        private boolean UK = false;

        /*
         * Enabled aggressive block sorting
         */
        public SensorRequest build() {
            boolean bl;
            block2 : {
                boolean bl2 = false;
                bl = this.Sq != null || this.Sp != null;
                o.a(bl, "Must call setDataSource() or setDataType()");
                if (this.Sp != null && this.Sq != null) {
                    bl = bl2;
                    if (!this.Sp.equals(this.Sq.getDataType())) break block2;
                }
                bl = true;
            }
            o.a(bl, "Specified data type is incompatible with specified data source");
            return new SensorRequest(this);
        }

        public Builder setAccuracyMode(int n) {
            this.Tu = SensorRequest.da(n);
            return this;
        }

        public Builder setDataSource(DataSource dataSource) {
            this.Sq = dataSource;
            return this;
        }

        public Builder setDataType(DataType dataType) {
            this.Sp = dataType;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setFastestRate(int n, TimeUnit timeUnit) {
            boolean bl = n >= 0;
            o.b(bl, (Object)"Cannot use a negative interval");
            this.UK = true;
            this.UE = timeUnit.toMicros(n);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setMaxDeliveryLatency(int n, TimeUnit timeUnit) {
            boolean bl = n >= 0;
            o.b(bl, (Object)"Cannot use a negative delivery interval");
            this.UD = timeUnit.toMicros(n);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setSamplingRate(long l, TimeUnit timeUnit) {
            boolean bl = l >= 0;
            o.b(bl, (Object)"Cannot use a negative sampling interval");
            this.Tt = timeUnit.toMicros(l);
            if (!this.UK) {
                this.UE = this.Tt / 2;
            }
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setTimeout(long l, TimeUnit timeUnit) {
            boolean bl = true;
            boolean bl2 = l > 0;
            o.b(bl2, "Invalid time out value specified: %d", l);
            bl2 = timeUnit != null ? bl : false;
            o.b(bl2, (Object)"Invalid time unit specified");
            this.UJ = timeUnit.toMicros(l);
            return this;
        }
    }

}

