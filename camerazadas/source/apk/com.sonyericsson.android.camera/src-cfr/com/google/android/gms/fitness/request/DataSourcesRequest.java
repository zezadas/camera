/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.h;
import com.google.android.gms.internal.jr;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class DataSourcesRequest
implements SafeParcelable {
    public static final Parcelable.Creator<DataSourcesRequest> CREATOR = new h();
    private final int BR;
    private final List<DataType> SB;
    private final List<Integer> Uw;
    private final boolean Ux;

    DataSourcesRequest(int n, List<DataType> list, List<Integer> list2, boolean bl) {
        this.BR = n;
        this.SB = list;
        this.Uw = list2;
        this.Ux = bl;
    }

    private DataSourcesRequest(Builder builder) {
        this.BR = 2;
        this.SB = jr.b(builder.Uy);
        this.Uw = Arrays.asList(jr.a(builder.Uz));
        this.Ux = builder.Ux;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public List<DataType> getDataTypes() {
        return Collections.unmodifiableList(this.SB);
    }

    int getVersionCode() {
        return this.BR;
    }

    public boolean jo() {
        return this.Ux;
    }

    List<Integer> jp() {
        return this.Uw;
    }

    public String toString() {
        n.a a = n.h(this).a("dataTypes", this.SB).a("sourceTypes", this.Uw);
        if (this.Ux) {
            a.a("includeDbOnlySources", "true");
        }
        return a.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        h.a(this, parcel, n);
    }

    public static class Builder {
        private boolean Ux = false;
        private DataType[] Uy = new DataType[0];
        private int[] Uz = new int[]{0, 1};

        /*
         * Enabled aggressive block sorting
         */
        public DataSourcesRequest build() {
            boolean bl = true;
            boolean bl2 = this.Uy.length > 0;
            o.a(bl2, "Must add at least one data type");
            bl2 = this.Uz.length > 0 ? bl : false;
            o.a(bl2, "Must add at least one data source type");
            return new DataSourcesRequest(this);
        }

        public /* varargs */ Builder setDataSourceTypes(int ... arrn) {
            this.Uz = arrn;
            return this;
        }

        public /* varargs */ Builder setDataTypes(DataType ... arrdataType) {
            this.Uy = arrdataType;
            return this;
        }
    }

}

