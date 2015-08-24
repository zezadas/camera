/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.result.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class DataSourcesResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<DataSourcesResult> CREATOR = new c();
    private final int BR;
    private final Status CM;
    private final List<DataSource> Uk;

    DataSourcesResult(int n, List<DataSource> list, Status status) {
        this.BR = n;
        this.Uk = Collections.unmodifiableList(list);
        this.CM = status;
    }

    public DataSourcesResult(List<DataSource> list, Status status) {
        this.BR = 3;
        this.Uk = Collections.unmodifiableList(list);
        this.CM = status;
    }

    public static DataSourcesResult E(Status status) {
        return new DataSourcesResult(Collections.<DataSource>emptyList(), status);
    }

    private boolean b(DataSourcesResult dataSourcesResult) {
        if (this.CM.equals(dataSourcesResult.CM) && n.equal(this.Uk, dataSourcesResult.Uk)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof DataSourcesResult && this.b((DataSourcesResult)object)) {
            return true;
        }
        return false;
    }

    public List<DataSource> getDataSources() {
        return this.Uk;
    }

    public List<DataSource> getDataSources(DataType dataType) {
        ArrayList<DataSource> arrayList = new ArrayList<DataSource>();
        for (DataSource dataSource : this.Uk) {
            if (!dataSource.getDataType().equals(dataType)) continue;
            arrayList.add(dataSource);
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.CM, this.Uk);
    }

    public String toString() {
        return n.h(this).a("status", this.CM).a("dataSets", this.Uk).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }
}

