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
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class DataDeleteRequest
implements SafeParcelable {
    public static final Parcelable.Creator<DataDeleteRequest> CREATOR = new d();
    private final int BR;
    private final long KS;
    private final List<DataType> SB;
    private final long Sr;
    private final List<DataSource> Uk;
    private final List<Session> Ul;
    private final boolean Um;
    private final boolean Un;

    DataDeleteRequest(int n, long l, long l2, List<DataSource> list, List<DataType> list2, List<Session> list3, boolean bl, boolean bl2) {
        this.BR = n;
        this.KS = l;
        this.Sr = l2;
        this.Uk = Collections.unmodifiableList(list);
        this.SB = Collections.unmodifiableList(list2);
        this.Ul = list3;
        this.Um = bl;
        this.Un = bl2;
    }

    private DataDeleteRequest(Builder builder) {
        this.BR = 1;
        this.KS = builder.KS;
        this.Sr = builder.Sr;
        this.Uk = Collections.unmodifiableList(builder.Uk);
        this.SB = Collections.unmodifiableList(builder.SB);
        this.Ul = Collections.unmodifiableList(builder.Ul);
        this.Um = builder.Um;
        this.Un = builder.Un;
    }

    private boolean a(DataDeleteRequest dataDeleteRequest) {
        if (this.KS == dataDeleteRequest.KS && this.Sr == dataDeleteRequest.Sr && n.equal(this.Uk, dataDeleteRequest.Uk) && n.equal(this.SB, dataDeleteRequest.SB) && n.equal(this.Ul, dataDeleteRequest.Ul) && this.Um == dataDeleteRequest.Um && this.Un == dataDeleteRequest.Un) {
            return true;
        }
        return false;
    }

    public boolean deleteAllData() {
        return this.Um;
    }

    public boolean deleteAllSessions() {
        return this.Un;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof DataDeleteRequest && this.a((DataDeleteRequest)object)) {
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

    public List<Session> getSessions() {
        return this.Ul;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.KS, TimeUnit.MILLISECONDS);
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.KS, this.Sr);
    }

    public long iD() {
        return this.KS;
    }

    public long iE() {
        return this.Sr;
    }

    public boolean jg() {
        return this.Um;
    }

    public boolean jh() {
        return this.Un;
    }

    public String toString() {
        return n.h(this).a("startTimeMillis", this.KS).a("endTimeMillis", this.Sr).a("dataSources", this.Uk).a("dateTypes", this.SB).a("sessions", this.Ul).a("deleteAllData", this.Um).a("deleteAllSessions", this.Un).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        d.a(this, parcel, n);
    }

    public static class Builder {
        private long KS;
        private List<DataType> SB = new ArrayList<DataType>();
        private long Sr;
        private List<DataSource> Uk = new ArrayList<DataSource>();
        private List<Session> Ul = new ArrayList<Session>();
        private boolean Um = false;
        private boolean Un = false;

        /*
         * Enabled aggressive block sorting
         */
        private void ji() {
            if (!this.Ul.isEmpty()) {
                for (Session session : this.Ul) {
                    boolean bl = session.getStartTime(TimeUnit.MILLISECONDS) >= this.KS && session.getEndTime(TimeUnit.MILLISECONDS) <= this.Sr;
                    o.a(bl, "Session %s is outside the time interval [%d, %d]", session, this.KS, this.Sr);
                }
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder addDataSource(DataSource dataSource) {
            boolean bl = true;
            boolean bl2 = !this.Um;
            o.b(bl2, (Object)"All data is already marked for deletion");
            bl2 = dataSource != null ? bl : false;
            o.b(bl2, (Object)"Must specify a valid data source");
            if (!this.Uk.contains(dataSource)) {
                this.Uk.add(dataSource);
            }
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder addDataType(DataType dataType) {
            boolean bl = true;
            boolean bl2 = !this.Um;
            o.b(bl2, (Object)"All data is already marked for deletion");
            bl2 = dataType != null ? bl : false;
            o.b(bl2, (Object)"Must specify a valid data type");
            if (!this.SB.contains(dataType)) {
                this.SB.add(dataType);
            }
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder addSession(Session session) {
            boolean bl = true;
            boolean bl2 = !this.Un;
            o.b(bl2, (Object)"All sessions already marked for deletion");
            bl2 = session != null;
            o.b(bl2, (Object)"Must specify a valid session");
            bl2 = session.getEndTime(TimeUnit.MILLISECONDS) > 0 ? bl : false;
            o.b(bl2, (Object)"Must specify a session that has already ended");
            this.Ul.add(session);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public DataDeleteRequest build() {
            boolean bl;
            block2 : {
                boolean bl2 = false;
                bl = this.KS > 0 && this.Sr > this.KS;
                o.a(bl, "Must specify a valid time interval");
                boolean bl3 = this.Um || !this.Uk.isEmpty() || !this.SB.isEmpty();
                boolean bl4 = this.Un || !this.Ul.isEmpty();
                if (!bl3) {
                    bl = bl2;
                    if (!bl4) break block2;
                }
                bl = true;
            }
            o.a(bl, "No data or session marked for deletion");
            this.ji();
            return new DataDeleteRequest(this);
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder deleteAllData() {
            boolean bl = this.SB.isEmpty() && this.Uk.isEmpty();
            o.b(bl, "Specific data source/type already specified for deletion. DataSources: %s DataTypes: %s", this.Uk, this.SB);
            this.Um = true;
            return this;
        }

        public Builder deleteAllSessions() {
            o.b(this.Ul.isEmpty(), "Specific sessions already added for deletion: %s", this.Ul);
            this.Un = true;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setTimeInterval(long l, long l2, TimeUnit timeUnit) {
            boolean bl = l > 0;
            o.b(bl, "Invalid start time :%d", l);
            bl = l2 > l;
            o.b(bl, "Invalid end time :%d", l2);
            this.KS = timeUnit.toMillis(l);
            this.Sr = timeUnit.toMillis(l2);
            return this;
        }
    }

}

