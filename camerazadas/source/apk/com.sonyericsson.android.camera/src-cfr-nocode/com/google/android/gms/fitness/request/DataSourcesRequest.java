/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DataSourcesRequest
implements SafeParcelable {
    public static final Parcelable.Creator<DataSourcesRequest> CREATOR;
    private final int BR;
    private final List<DataType> SB;
    private final List<Integer> Uw;
    private final boolean Ux;

    static;

    DataSourcesRequest(int var1, List<DataType> var2, List<Integer> var3, boolean var4);

    private DataSourcesRequest(Builder var1);

    /* synthetic */ DataSourcesRequest(Builder var1,  var2);

    @Override
    public int describeContents();

    public List<DataType> getDataTypes();

    int getVersionCode();

    public boolean jo();

    List<Integer> jp();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private boolean Ux;
        private DataType[] Uy;
        private int[] Uz;

        public Builder();

        static /* synthetic */ DataType[] a(Builder var0);

        static /* synthetic */ int[] b(Builder var0);

        static /* synthetic */ boolean c(Builder var0);

        public DataSourcesRequest build();

        public /* varargs */ Builder setDataSourceTypes(int ... var1);

        public /* varargs */ Builder setDataTypes(DataType ... var1);
    }

}

