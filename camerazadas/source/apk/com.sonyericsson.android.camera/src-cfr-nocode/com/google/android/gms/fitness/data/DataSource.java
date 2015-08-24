/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Device;
import com.google.android.gms.fitness.data.a;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DataSource
implements SafeParcelable {
    public static final Parcelable.Creator<DataSource> CREATOR;
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

    static;

    DataSource(int var1, DataType var2, String var3, int var4, Device var5, a var6, String var7, boolean var8);

    private DataSource(Builder var1);

    /* synthetic */ DataSource(Builder var1,  var2);

    private boolean a(DataSource var1);

    public static DataSource extract(Intent var0);

    private String getTypeString();

    private String iN();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getAppPackageName();

    public DataType getDataType();

    public Device getDevice();

    public String getName();

    public String getStreamIdentifier();

    public String getStreamName();

    public int getType();

    int getVersionCode();

    public int hashCode();

    public a iM();

    public boolean iO();

    public DataSource iP();

    public String toDebugString();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private int FD;
        private Device SO;
        private a SP;
        private String SQ;
        private boolean SR;
        private DataType Sp;
        private String mName;

        public Builder();

        static /* synthetic */ DataType a(Builder var0);

        static /* synthetic */ int b(Builder var0);

        static /* synthetic */ String c(Builder var0);

        static /* synthetic */ Device d(Builder var0);

        static /* synthetic */ a e(Builder var0);

        static /* synthetic */ String f(Builder var0);

        static /* synthetic */ boolean g(Builder var0);

        public DataSource build();

        public Builder setAppPackageName(Context var1);

        public Builder setAppPackageName(String var1);

        public Builder setDataType(DataType var1);

        public Builder setDevice(Device var1);

        public Builder setName(String var1);

        public Builder setObfuscated(boolean var1);

        public Builder setStreamName(String var1);

        public Builder setType(int var1);
    }

}

