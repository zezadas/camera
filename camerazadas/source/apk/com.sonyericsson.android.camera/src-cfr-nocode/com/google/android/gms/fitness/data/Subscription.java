/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Subscription
implements SafeParcelable {
    public static final Parcelable.Creator<Subscription> CREATOR;
    private final int BR;
    private final DataType Sp;
    private final DataSource Sq;
    private final long Tt;
    private final int Tu;

    static;

    Subscription(int var1, DataSource var2, DataType var3, long var4, int var6);

    private Subscription(a var1);

    /* synthetic */ Subscription(a var1,  var2);

    private boolean a(Subscription var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int getAccuracyMode();

    public DataSource getDataSource();

    public DataType getDataType();

    int getVersionCode();

    public int hashCode();

    public long iX();

    public DataType iY();

    public String toDebugString();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private DataType Sp;
        private DataSource Sq;
        private long Tt;
        private int Tu;

        public a();

        static /* synthetic */ DataType a(a var0);

        static /* synthetic */ DataSource b(a var0);

        static /* synthetic */ long c(a var0);

        static /* synthetic */ int d(a var0);

        public a b(DataSource var1);

        public a b(DataType var1);

        public Subscription iZ();
    }

}

