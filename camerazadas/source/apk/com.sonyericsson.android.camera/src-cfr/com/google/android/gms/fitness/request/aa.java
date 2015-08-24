/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.request.ab;

public class aa
implements SafeParcelable {
    public static final Parcelable.Creator<aa> CREATOR = new ab();
    private final int BR;
    private final PendingIntent mPendingIntent;

    aa(int n, PendingIntent pendingIntent) {
        this.BR = n;
        this.mPendingIntent = pendingIntent;
    }

    public aa(PendingIntent pendingIntent) {
        this.BR = 3;
        this.mPendingIntent = pendingIntent;
    }

    private boolean a(aa aa) {
        return n.equal(this.mPendingIntent, aa.mPendingIntent);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof aa && this.a((aa)object)) {
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
        ab.a(this, parcel, n);
    }
}

