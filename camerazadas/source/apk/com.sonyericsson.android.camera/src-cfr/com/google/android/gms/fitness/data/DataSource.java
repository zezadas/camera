/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Device;
import com.google.android.gms.fitness.data.a;
import com.google.android.gms.fitness.data.g;
import com.google.android.gms.internal.kw;

public class DataSource
implements SafeParcelable {
    public static final Parcelable.Creator<DataSource> CREATOR = new g();
    public static final String EXTRA_DATA_SOURCE = "vnd.google.fitness.data_source";
    public static final int TYPE_DERIVED = 1;
    public static final int TYPE_RAW = 0;
    private final int BR;
    private final int FD;
    private final Device SO;
    private final a SP;
    private final String SQ;
    private final boolean SR;
    private final String SS;
    private final DataType Sp;
    private final String mName;

    DataSource(int n, DataType dataType, String string, int n2, Device device, a a, String string2, boolean bl) {
        this.BR = n;
        this.Sp = dataType;
        this.FD = n2;
        this.mName = string;
        this.SO = device;
        this.SP = a;
        this.SQ = string2;
        this.SR = bl;
        this.SS = this.iN();
    }

    private DataSource(Builder builder) {
        this.BR = 3;
        this.Sp = builder.Sp;
        this.FD = builder.FD;
        this.mName = builder.mName;
        this.SO = builder.SO;
        this.SP = builder.SP;
        this.SQ = builder.SQ;
        this.SR = builder.SR;
        this.SS = this.iN();
    }

    private boolean a(DataSource dataSource) {
        return this.SS.equals(dataSource.SS);
    }

    public static DataSource extract(Intent intent) {
        if (intent == null) {
            return null;
        }
        return c.a(intent, "vnd.google.fitness.data_source", CREATOR);
    }

    private String getTypeString() {
        switch (this.FD) {
            default: {
                throw new IllegalArgumentException("invalid type value");
            }
            case 0: {
                return "raw";
            }
            case 1: 
        }
        return "derived";
    }

    private String iN() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.getTypeString());
        stringBuilder.append(":").append(this.Sp.getName());
        if (this.SP != null) {
            stringBuilder.append(":").append(this.SP.getPackageName());
        }
        if (this.SO != null) {
            stringBuilder.append(":").append(this.SO.getStreamIdentifier());
        }
        if (this.SQ != null) {
            stringBuilder.append(":").append(this.SQ);
        }
        return stringBuilder.toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof DataSource && this.a((DataSource)object)) {
            return true;
        }
        return false;
    }

    public String getAppPackageName() {
        if (this.SP == null) {
            return null;
        }
        return this.SP.getPackageName();
    }

    public DataType getDataType() {
        return this.Sp;
    }

    public Device getDevice() {
        return this.SO;
    }

    public String getName() {
        return this.mName;
    }

    public String getStreamIdentifier() {
        return this.SS;
    }

    public String getStreamName() {
        return this.SQ;
    }

    public int getType() {
        return this.FD;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return this.SS.hashCode();
    }

    public a iM() {
        return this.SP;
    }

    public boolean iO() {
        return this.SR;
    }

    /*
     * Enabled aggressive block sorting
     */
    public DataSource iP() {
        a a;
        Device device = this.SO == null ? null : this.SO.iT();
        if (this.SP == null) {
            a = null;
            return new DataSource(3, this.Sp, this.mName, this.FD, device, a, kw.bt(this.SQ), this.SR);
        }
        a = this.SP.iA();
        return new DataSource(3, this.Sp, this.mName, this.FD, device, a, kw.bt(this.SQ), this.SR);
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toDebugString() {
        StringBuilder stringBuilder = new StringBuilder();
        String string = this.FD == 0 ? "r" : "d";
        stringBuilder = stringBuilder.append(string).append(":").append(this.Sp.iQ());
        string = this.SP == null ? "" : (this.SP.equals(a.Sw) ? ":gms" : ":" + this.SP.getPackageName());
        stringBuilder = stringBuilder.append(string);
        string = this.SO != null ? ":" + this.SO.getModel() + ":" + this.SO.getUid() : "";
        stringBuilder = stringBuilder.append(string);
        if (this.SQ != null) {
            string = ":" + this.SQ;
            return stringBuilder.append(string).toString();
        }
        string = "";
        return stringBuilder.append(string).toString();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("DataSource{");
        stringBuilder.append(this.getTypeString());
        if (this.mName != null) {
            stringBuilder.append(":").append(this.mName);
        }
        if (this.SP != null) {
            stringBuilder.append(":").append(this.SP);
        }
        if (this.SO != null) {
            stringBuilder.append(":").append(this.SO);
        }
        if (this.SQ != null) {
            stringBuilder.append(":").append(this.SQ);
        }
        stringBuilder.append(":").append(this.Sp);
        return stringBuilder.append("}").toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        g.a(kw.c(this), parcel, n);
    }

    public static final class Builder {
        private int FD = -1;
        private Device SO;
        private a SP;
        private String SQ = "";
        private boolean SR = false;
        private DataType Sp;
        private String mName;

        /*
         * Enabled aggressive block sorting
         */
        public DataSource build() {
            boolean bl = true;
            boolean bl2 = this.Sp != null;
            o.a(bl2, "Must set data type");
            bl2 = this.FD >= 0 ? bl : false;
            o.a(bl2, "Must set data source type");
            return new DataSource(this);
        }

        public Builder setAppPackageName(Context context) {
            return this.setAppPackageName(context.getPackageName());
        }

        public Builder setAppPackageName(String string) {
            this.SP = new a(string, null, null);
            return this;
        }

        public Builder setDataType(DataType dataType) {
            this.Sp = dataType;
            return this;
        }

        public Builder setDevice(Device device) {
            this.SO = device;
            return this;
        }

        public Builder setName(String string) {
            this.mName = string;
            return this;
        }

        public Builder setObfuscated(boolean bl) {
            this.SR = bl;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setStreamName(String string) {
            boolean bl = string != null;
            o.b(bl, (Object)"Must specify a valid stream name");
            this.SQ = string;
            return this;
        }

        public Builder setType(int n) {
            this.FD = n;
            return this;
        }
    }

}

