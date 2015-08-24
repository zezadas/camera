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
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.result.g;
import java.util.Collections;
import java.util.List;

public class SessionStopResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<SessionStopResult> CREATOR = new g();
    private final int BR;
    private final Status CM;
    private final List<Session> Ul;

    SessionStopResult(int n, Status status, List<Session> list) {
        this.BR = n;
        this.CM = status;
        this.Ul = Collections.unmodifiableList(list);
    }

    public SessionStopResult(Status status, List<Session> list) {
        this.BR = 3;
        this.CM = status;
        this.Ul = Collections.unmodifiableList(list);
    }

    public static SessionStopResult I(Status status) {
        return new SessionStopResult(status, Collections.<Session>emptyList());
    }

    private boolean b(SessionStopResult sessionStopResult) {
        if (this.CM.equals(sessionStopResult.CM) && n.equal(this.Ul, sessionStopResult.Ul)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof SessionStopResult && this.b((SessionStopResult)object)) {
            return true;
        }
        return false;
    }

    public List<Session> getSessions() {
        return this.Ul;
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.CM, this.Ul);
    }

    public String toString() {
        return n.h(this).a("status", this.CM).a("sessions", this.Ul).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        g.a(this, parcel, n);
    }
}

