/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Field;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DataTypeCreateRequest
implements SafeParcelable {
    public static final Parcelable.Creator<DataTypeCreateRequest> CREATOR;
    private final int BR;
    private final List<Field> SY;
    private final String mName;

    static;

    DataTypeCreateRequest(int var1, String var2, List<Field> var3);

    private DataTypeCreateRequest(Builder var1);

    /* synthetic */ DataTypeCreateRequest(Builder var1,  var2);

    private boolean a(DataTypeCreateRequest var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public List<Field> getFields();

    public String getName();

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private List<Field> SY;
        private String mName;

        public Builder();

        static /* synthetic */ String a(Builder var0);

        static /* synthetic */ List b(Builder var0);

        public Builder addField(Field var1);

        public Builder addField(String var1, int var2);

        public DataTypeCreateRequest build();

        public Builder setName(String var1);
    }

}

