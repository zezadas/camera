/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.l;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StartBleScanRequest
implements SafeParcelable {
    public static final Parcelable.Creator<StartBleScanRequest> CREATOR;
    private final int BR;
    private final List<DataType> SB;
    private final l UQ;
    private final int UR;

    static;

    StartBleScanRequest(int var1, List<DataType> var2, IBinder var3, int var4);

    private StartBleScanRequest(Builder var1);

    /* synthetic */ StartBleScanRequest(Builder var1,  var2);

    @Override
    public int describeContents();

    public List<DataType> getDataTypes();

    public int getTimeoutSecs();

    int getVersionCode();

    public IBinder jC();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private l UQ;
        private int UR;
        private DataType[] Uy;

        public Builder();

        static /* synthetic */ DataType[] a(Builder var0);

        static /* synthetic */ l b(Builder var0);

        static /* synthetic */ int c(Builder var0);

        public Builder a(l var1);

        public StartBleScanRequest build();

        public Builder setBleScanCallback(BleScanCallback var1);

        public /* varargs */ Builder setDataTypes(DataType ... var1);

        public Builder setTimeoutSecs(int var1);
    }

}

