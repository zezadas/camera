/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.request.f;
import java.util.List;

public class e
implements SafeParcelable {
    public static final Parcelable.Creator<e> CREATOR = new f();
    private final int BR;
    private final DataSet Ts;

    e(int n, DataSet dataSet) {
        this.BR = n;
        this.Ts = dataSet;
    }

    private e(a a) {
        this.BR = 1;
        this.Ts = a.Ts;
    }

    private boolean a(e e) {
        return n.equal(this.Ts, e.Ts);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof e && this.a((e)object)) {
            return true;
        }
        return false;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.Ts);
    }

    public DataSet iW() {
        return this.Ts;
    }

    public String toString() {
        return n.h(this).a("dataSet", this.Ts).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        f.a(this, parcel, n);
    }

    public static class a {
        private DataSet Ts;

        public a b(DataSet dataSet) {
            this.Ts = dataSet;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public e jj() {
            boolean bl = true;
            boolean bl2 = this.Ts != null;
            o.a(bl2, "Must set the data set");
            bl2 = !this.Ts.getDataPoints().isEmpty();
            o.a(bl2, "Cannot use an empty data set");
            bl2 = this.Ts.getDataSource().iM() != null ? bl : false;
            o.a(bl2, "Must set the app package name for the data source");
            return new e(this);
        }
    }

}

