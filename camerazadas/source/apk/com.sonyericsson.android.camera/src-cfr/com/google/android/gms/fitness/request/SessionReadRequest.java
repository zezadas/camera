/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class SessionReadRequest
implements SafeParcelable {
    public static final Parcelable.Creator<SessionReadRequest> CREATOR = new t();
    private final int BR;
    private final long KS;
    private final List<DataType> SB;
    private final long Sr;
    private final String UN;
    private boolean UO;
    private final List<String> UP;
    private final List<DataSource> Uk;
    private final boolean Uv;
    private final String vL;

    SessionReadRequest(int n, String string, String string2, long l, long l2, List<DataType> list, List<DataSource> list2, boolean bl, boolean bl2, List<String> list3) {
        this.BR = n;
        this.UN = string;
        this.vL = string2;
        this.KS = l;
        this.Sr = l2;
        this.SB = Collections.unmodifiableList(list);
        this.Uk = Collections.unmodifiableList(list2);
        this.UO = bl;
        this.Uv = bl2;
        this.UP = list3;
    }

    private SessionReadRequest(Builder builder) {
        this.BR = 3;
        this.UN = builder.UN;
        this.vL = builder.vL;
        this.KS = builder.KS;
        this.Sr = builder.Sr;
        this.SB = Collections.unmodifiableList(builder.SB);
        this.Uk = Collections.unmodifiableList(builder.Uk);
        this.UO = builder.UO;
        this.Uv = builder.Uv;
        this.UP = Collections.unmodifiableList(builder.UP);
    }

    private boolean a(SessionReadRequest sessionReadRequest) {
        if (n.equal(this.UN, sessionReadRequest.UN) && this.vL.equals(sessionReadRequest.vL) && this.KS == sessionReadRequest.KS && this.Sr == sessionReadRequest.Sr && n.equal(this.SB, sessionReadRequest.SB) && n.equal(this.Uk, sessionReadRequest.Uk) && this.UO == sessionReadRequest.UO && this.UP.equals(sessionReadRequest.UP) && this.Uv == sessionReadRequest.Uv) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof SessionReadRequest && this.a((SessionReadRequest)object)) {
            return true;
        }
        return false;
    }

    public List<DataSource> getDataSources() {
        return this.Uk;
    }

    public List<DataType> getDataTypes() {
        return this.SB;
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.Sr, TimeUnit.MILLISECONDS);
    }

    public List<String> getExcludedPackages() {
        return this.UP;
    }

    public String getSessionId() {
        return this.vL;
    }

    public String getSessionName() {
        return this.UN;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.KS, TimeUnit.MILLISECONDS);
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.UN, this.vL, this.KS, this.Sr);
    }

    public long iD() {
        return this.KS;
    }

    public long iE() {
        return this.Sr;
    }

    public boolean includeSessionsFromAllApps() {
        return this.UO;
    }

    public boolean jl() {
        return this.Uv;
    }

    public boolean jz() {
        return this.UO;
    }

    public String toString() {
        return n.h(this).a("sessionName", this.UN).a("sessionId", this.vL).a("startTimeMillis", this.KS).a("endTimeMillis", this.Sr).a("dataTypes", this.SB).a("dataSources", this.Uk).a("sessionsFromAllApps", this.UO).a("excludedPackages", this.UP).a("useServer", this.Uv).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        t.a(this, parcel, n);
    }

    public static class Builder {
        private long KS = 0;
        private List<DataType> SB = new ArrayList<DataType>();
        private long Sr = 0;
        private String UN;
        private boolean UO = false;
        private List<String> UP = new ArrayList<String>();
        private List<DataSource> Uk = new ArrayList<DataSource>();
        private boolean Uv = false;
        private String vL;

        /*
         * Enabled aggressive block sorting
         */
        public SessionReadRequest build() {
            boolean bl = this.KS > 0;
            o.b(bl, "Invalid start time: %s", this.KS);
            bl = this.Sr > 0 && this.Sr > this.KS;
            o.b(bl, "Invalid end time: %s", this.Sr);
            return new SessionReadRequest(this);
        }

        public Builder enableServerQueries() {
            this.Uv = true;
            return this;
        }

        public Builder excludePackage(String string) {
            o.b(string, (Object)"Attempting to use a null package name");
            if (!this.UP.contains(string)) {
                this.UP.add(string);
            }
            return this;
        }

        public Builder read(DataSource dataSource) {
            o.b(dataSource, (Object)"Attempting to add a null data source");
            if (!this.Uk.contains(dataSource)) {
                this.Uk.add(dataSource);
            }
            return this;
        }

        public Builder read(DataType dataType) {
            o.b(dataType, (Object)"Attempting to use a null data type");
            if (!this.SB.contains(dataType)) {
                this.SB.add(dataType);
            }
            return this;
        }

        public Builder readSessionsFromAllApps() {
            this.UO = true;
            return this;
        }

        public Builder setSessionId(String string) {
            this.vL = string;
            return this;
        }

        public Builder setSessionName(String string) {
            this.UN = string;
            return this;
        }

        public Builder setTimeInterval(long l, long l2, TimeUnit timeUnit) {
            this.KS = timeUnit.toMillis(l);
            this.Sr = timeUnit.toMillis(l2);
            return this;
        }
    }

}

