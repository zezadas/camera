/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class m
implements SafeParcelable {
    public static final Parcelable.Creator<m> CREATOR;
    private final int BR;
    private final DataType Sp;

    static;

    m(int var1, DataType var2);

    private m(a var1);

    /* synthetic */ m(a var1,  var2);

    @Override
    public int describeContents();

    public DataType getDataType();

    int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private DataType Sp;

        public a();

        static /* synthetic */ DataType a(a var0);

        public a c(DataType var1);

        public m jq();
    }

}

