/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class aj
implements SafeParcelable {
    public static final Parcelable.Creator<aj> CREATOR;
    private final int BR;
    private final DataType Sp;
    private final DataSource Sq;

    static;

    aj(int var1, DataType var2, DataSource var3);

    private aj(a var1);

    /* synthetic */ aj(a var1,  var2);

    private boolean a(aj var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public DataSource getDataSource();

    public DataType getDataType();

    int getVersionCode();

    public int hashCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private DataType Sp;
        private DataSource Sq;

        public a();

        static /* synthetic */ DataType a(a var0);

        static /* synthetic */ DataSource b(a var0);

        public a d(DataSource var1);

        public a d(DataType var1);

        public aj jG();
    }

}

