/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.data.r;

public class q
implements SafeParcelable {
    public static final Parcelable.Creator<q> CREATOR = new r();
    final int BR;
    private final Session St;
    private final DataSet Ts;

    q(int n, Session session, DataSet dataSet) {
        this.BR = n;
        this.St = session;
        this.Ts = dataSet;
    }

    private boolean a(q q) {
        if (n.equal(this.St, q.St) && n.equal(this.Ts, q.Ts)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof q && this.a((q)object)) {
            return true;
        }
        return false;
    }

    public Session getSession() {
        return this.St;
    }

    public int hashCode() {
        return n.hashCode(this.St, this.Ts);
    }

    public DataSet iW() {
        return this.Ts;
    }

    public String toString() {
        return n.h(this).a("session", this.St).a("dataSet", this.Ts).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        r.a(this, parcel, n);
    }
}

