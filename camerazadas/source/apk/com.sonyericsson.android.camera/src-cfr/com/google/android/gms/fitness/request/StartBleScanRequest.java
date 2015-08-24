/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.a;
import com.google.android.gms.fitness.request.ac;
import com.google.android.gms.fitness.request.l;
import com.google.android.gms.internal.jr;
import java.util.Collections;
import java.util.List;

public class StartBleScanRequest
implements SafeParcelable {
    public static final Parcelable.Creator<StartBleScanRequest> CREATOR = new ac();
    private final int BR;
    private final List<DataType> SB;
    private final l UQ;
    private final int UR;

    StartBleScanRequest(int n, List<DataType> list, IBinder iBinder, int n2) {
        this.BR = n;
        this.SB = list;
        this.UQ = l.a.ay(iBinder);
        this.UR = n2;
    }

    private StartBleScanRequest(Builder builder) {
        this.BR = 2;
        this.SB = jr.b(builder.Uy);
        this.UQ = builder.UQ;
        this.UR = builder.UR;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public List<DataType> getDataTypes() {
        return Collections.unmodifiableList(this.SB);
    }

    public int getTimeoutSecs() {
        return this.UR;
    }

    int getVersionCode() {
        return this.BR;
    }

    public IBinder jC() {
        return this.UQ.asBinder();
    }

    public String toString() {
        return n.h(this).a("dataTypes", this.SB).a("timeoutSecs", this.UR).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ac.a(this, parcel, n);
    }

    public static class Builder {
        private l UQ;
        private int UR = 10;
        private DataType[] Uy = new DataType[0];

        public Builder a(l l) {
            this.UQ = l;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public StartBleScanRequest build() {
            boolean bl = this.UQ != null;
            o.a(bl, "Must set BleScanCallback");
            return new StartBleScanRequest(this);
        }

        public Builder setBleScanCallback(BleScanCallback bleScanCallback) {
            this.a(a.a.je().a(bleScanCallback));
            return this;
        }

        public /* varargs */ Builder setDataTypes(DataType ... arrdataType) {
            this.Uy = arrdataType;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setTimeoutSecs(int n) {
            boolean bl = true;
            boolean bl2 = n > 0;
            o.b(bl2, (Object)"Stop time must be greater than zero");
            bl2 = n <= 60 ? bl : false;
            o.b(bl2, (Object)"Stop time must be less than 1 minute");
            this.UR = n;
            return this;
        }
    }

}

