/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.request.v;

public class u
implements SafeParcelable {
    public static final Parcelable.Creator<u> CREATOR = new v();
    private final int BR;
    private final PendingIntent mPendingIntent;

    u(int n, PendingIntent pendingIntent) {
        this.BR = n;
        this.mPendingIntent = pendingIntent;
    }

    public u(PendingIntent pendingIntent) {
        this.BR = 3;
        this.mPendingIntent = pendingIntent;
    }

    private boolean a(u u) {
        return n.equal(this.mPendingIntent, u.mPendingIntent);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof u && this.a((u)object)) {
            return true;
        }
        return false;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.mPendingIntent);
    }

    public PendingIntent jr() {
        return this.mPendingIntent;
    }

    public String toString() {
        return n.h(this).a("pendingIntent", this.mPendingIntent).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        v.a(this, parcel, n);
    }
}

