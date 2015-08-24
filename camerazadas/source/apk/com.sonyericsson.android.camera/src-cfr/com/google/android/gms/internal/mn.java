/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mj;
import com.google.android.gms.internal.mo;
import java.util.concurrent.TimeUnit;

public final class mn
implements SafeParcelable {
    public static final mo CREATOR = new mo();
    static final long afA = TimeUnit.HOURS.toMillis(1);
    final int BR;
    private final long aes;
    private final mj afB;
    private final int mPriority;

    public mn(int n, mj mj, long l, int n2) {
        this.BR = n;
        this.afB = mj;
        this.aes = l;
        this.mPriority = n2;
    }

    @Override
    public int describeContents() {
        mo mo = CREATOR;
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof mn)) {
            return false;
        }
        object = (mn)object;
        if (!n.equal(this.afB, object.afB)) return false;
        if (this.aes != object.aes) return false;
        if (this.mPriority == object.mPriority) return true;
        return false;
    }

    public long getInterval() {
        return this.aes;
    }

    public int getPriority() {
        return this.mPriority;
    }

    public int hashCode() {
        return n.hashCode(this.afB, this.aes, this.mPriority);
    }

    public mj mh() {
        return this.afB;
    }

    public String toString() {
        return n.h(this).a("filter", this.afB).a("interval", this.aes).a("priority", this.mPriority).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        mo mo = CREATOR;
        mo.a(this, parcel, n);
    }
}

