/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.data.q;
import com.google.android.gms.fitness.result.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class SessionReadResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<SessionReadResult> CREATOR = new f();
    private final int BR;
    private final Status CM;
    private final List<q> UZ;
    private final List<Session> Ul;

    SessionReadResult(int n, List<Session> list, List<q> list2, Status status) {
        this.BR = n;
        this.Ul = list;
        this.UZ = Collections.unmodifiableList(list2);
        this.CM = status;
    }

    public SessionReadResult(List<Session> list, List<q> list2, Status status) {
        this.BR = 3;
        this.Ul = list;
        this.UZ = Collections.unmodifiableList(list2);
        this.CM = status;
    }

    public static SessionReadResult H(Status status) {
        return new SessionReadResult(new ArrayList<Session>(), new ArrayList<q>(), status);
    }

    private boolean b(SessionReadResult sessionReadResult) {
        if (this.CM.equals(sessionReadResult.CM) && n.equal(this.Ul, sessionReadResult.Ul) && n.equal(this.UZ, sessionReadResult.UZ)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof SessionReadResult && this.b((SessionReadResult)object)) {
            return true;
        }
        return false;
    }

    public List<DataSet> getDataSet(Session session) {
        o.b(this.Ul.contains(session), "Attempting to read data for session %s which was not returned", session);
        ArrayList<DataSet> arrayList = new ArrayList<DataSet>();
        for (q q : this.UZ) {
            if (!n.equal(session, q.getSession())) continue;
            arrayList.add(q.iW());
        }
        return arrayList;
    }

    public List<DataSet> getDataSet(Session session, DataType dataType) {
        o.b(this.Ul.contains(session), "Attempting to read data for session %s which was not returned", session);
        ArrayList<DataSet> arrayList = new ArrayList<DataSet>();
        for (q q : this.UZ) {
            if (!n.equal(session, q.getSession()) || !dataType.equals(q.iW().getDataType())) continue;
            arrayList.add(q.iW());
        }
        return arrayList;
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
        return n.hashCode(this.CM, this.Ul, this.UZ);
    }

    public List<q> jL() {
        return this.UZ;
    }

    public String toString() {
        return n.h(this).a("status", this.CM).a("sessions", this.Ul).a("sessionDataSets", this.UZ).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        f.a(this, parcel, n);
    }
}

