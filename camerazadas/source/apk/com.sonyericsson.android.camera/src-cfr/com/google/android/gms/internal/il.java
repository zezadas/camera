/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.im;

public class il
implements SafeParcelable {
    public static final Parcelable.Creator<il> CREATOR = new im();
    private final int BR;
    private double FA;
    private boolean FB;
    private int GB;
    private int GC;
    private ApplicationMetadata GN;

    public il() {
        this(3, NaN, false, -1, null, -1);
    }

    il(int n, double d, boolean bl, int n2, ApplicationMetadata applicationMetadata, int n3) {
        this.BR = n;
        this.FA = d;
        this.FB = bl;
        this.GB = n2;
        this.GN = applicationMetadata;
        this.GC = n3;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof il)) {
            return false;
        }
        object = (il)object;
        if (this.FA != object.FA) return false;
        if (this.FB != object.FB) return false;
        if (this.GB != object.GB) return false;
        if (!ik.a(this.GN, object.GN)) return false;
        if (this.GC == object.GC) return true;
        return false;
    }

    public double fE() {
        return this.FA;
    }

    public boolean fM() {
        return this.FB;
    }

    public int fN() {
        return this.GB;
    }

    public int fO() {
        return this.GC;
    }

    public ApplicationMetadata getApplicationMetadata() {
        return this.GN;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.FA, this.FB, this.GB, this.GN, this.GC);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        im.a(this, parcel, n);
    }
}

