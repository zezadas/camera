/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.x;
import java.util.concurrent.TimeUnit;

public class w
implements SafeParcelable {
    public static final Parcelable.Creator<w> CREATOR = new x();
    private final int BR;
    private final Session St;

    w(int n, Session session) {
        this.BR = n;
        this.St = session;
    }

    private w(a a) {
        this.BR = 1;
        this.St = a.St;
    }

    private boolean a(w w) {
        return n.equal(this.St, w.St);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof w && this.a((w)object)) {
            return true;
        }
        return false;
    }

    public Session getSession() {
        return this.St;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.St);
    }

    public String toString() {
        return n.h(this).a("session", this.St).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        x.a(this, parcel, n);
    }

    public static class a {
        private Session St;

        /*
         * Enabled aggressive block sorting
         */
        public a b(Session session) {
            boolean bl = session.getEndTime(TimeUnit.MILLISECONDS) == 0;
            o.b(bl, (Object)"Cannot start a session which has already ended");
            this.St = session;
            return this;
        }

        public w jA() {
            return new w(this);
        }
    }

}

