/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.FitnessActivities;
import com.google.android.gms.fitness.data.a;
import com.google.android.gms.fitness.data.p;
import java.util.concurrent.TimeUnit;

public class Session
implements SafeParcelable {
    public static final Parcelable.Creator<Session> CREATOR = new p();
    public static final String EXTRA_SESSION = "vnd.google.fitness.session";
    public static final String MIME_TYPE_PREFIX = "vnd.google.fitness.session/";
    private final int BR;
    private final long KS;
    private final int SC;
    private final a SP;
    private final long Sr;
    private final String Tq;
    private final String Tr;
    private final String mName;

    Session(int n, long l, long l2, String string, String string2, String string3, int n2, a a) {
        this.BR = n;
        this.KS = l;
        this.Sr = l2;
        this.mName = string;
        this.Tq = string2;
        this.Tr = string3;
        this.SC = n2;
        this.SP = a;
    }

    private Session(Builder builder) {
        this.BR = 2;
        this.KS = builder.KS;
        this.Sr = builder.Sr;
        this.mName = builder.mName;
        this.Tq = builder.Tq;
        this.Tr = builder.Tr;
        this.SC = builder.SC;
        this.SP = builder.SP;
    }

    private boolean a(Session session) {
        if (this.KS == session.KS && this.Sr == session.Sr && n.equal(this.mName, session.mName) && n.equal(this.Tq, session.Tq) && n.equal(this.Tr, session.Tr) && n.equal(this.SP, session.SP) && this.SC == session.SC) {
            return true;
        }
        return false;
    }

    public static Session extract(Intent intent) {
        if (intent == null) {
            return null;
        }
        return c.a(intent, "vnd.google.fitness.session", CREATOR);
    }

    public static String getMimeType(String string) {
        return "vnd.google.fitness.session/" + string;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof Session && this.a((Session)object)) {
            return true;
        }
        return false;
    }

    public String getActivity() {
        return FitnessActivities.getName(this.SC);
    }

    public String getAppPackageName() {
        if (this.SP == null) {
            return null;
        }
        return this.SP.getPackageName();
    }

    public String getDescription() {
        return this.Tr;
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.Sr, TimeUnit.MILLISECONDS);
    }

    public String getIdentifier() {
        return this.Tq;
    }

    public String getName() {
        return this.mName;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.KS, TimeUnit.MILLISECONDS);
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.KS, this.Sr, this.Tq);
    }

    public int iB() {
        return this.SC;
    }

    public long iD() {
        return this.KS;
    }

    public long iE() {
        return this.Sr;
    }

    public a iM() {
        return this.SP;
    }

    public boolean isOngoing() {
        if (this.Sr == 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        return n.h(this).a("startTime", this.KS).a("endTime", this.Sr).a("name", this.mName).a("identifier", this.Tq).a("description", this.Tr).a("activity", this.SC).a("application", this.SP).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        p.a(this, parcel, n);
    }

    public static class Builder {
        private long KS = 0;
        private int SC = 4;
        private a SP;
        private long Sr = 0;
        private String Tq;
        private String Tr;
        private String mName = null;

        /*
         * Enabled aggressive block sorting
         */
        public Session build() {
            boolean bl;
            block3 : {
                boolean bl2 = false;
                bl = this.KS > 0;
                o.a(bl, "Start time should be specified.");
                if (this.Sr != 0) {
                    bl = bl2;
                    if (this.Sr <= this.KS) break block3;
                }
                bl = true;
            }
            o.a(bl, "End time should be later than start time.");
            if (this.Tq == null) {
                StringBuilder stringBuilder = new StringBuilder();
                String string = this.mName == null ? "" : this.mName;
                this.Tq = stringBuilder.append(string).append(this.KS).toString();
            }
            return new Session(this);
        }

        public Builder cK(int n) {
            this.SC = n;
            return this;
        }

        public Builder setActivity(String string) {
            return this.cK(FitnessActivities.bp(string));
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setDescription(String string) {
            boolean bl = string.length() <= 1000;
            o.b(bl, "Session description cannot exceed %d characters", 1000);
            this.Tr = string;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setEndTime(long l, TimeUnit timeUnit) {
            boolean bl = l >= 0;
            o.a(bl, "End time should be positive.");
            this.Sr = timeUnit.toMillis(l);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setIdentifier(String string) {
            boolean bl = string != null && TextUtils.getTrimmedLength((CharSequence)string) > 0;
            o.K(bl);
            this.Tq = string;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setName(String string) {
            boolean bl = string.length() <= 100;
            o.b(bl, "Session name cannot exceed %d characters", 100);
            this.mName = string;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setStartTime(long l, TimeUnit timeUnit) {
            boolean bl = l > 0;
            o.a(bl, "Start time should be positive.");
            this.KS = timeUnit.toMillis(l);
            return this;
        }
    }

}

