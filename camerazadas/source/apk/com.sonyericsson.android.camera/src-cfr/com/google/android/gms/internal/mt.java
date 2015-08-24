/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mu;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class mt
implements SafeParcelable {
    public static final mu CREATOR;
    public static final mt aic;
    public static final mt aid;
    public static final mt aie;
    public static final Set<mt> aif;
    final int BR;
    final int aig;
    final String uO;

    static {
        aic = mt.y("test_type", 1);
        aid = mt.y("trellis_store", 2);
        aie = mt.y("labeled_place", 6);
        aif = Collections.unmodifiableSet(new HashSet<mt>(Arrays.asList(aic, aid, aie)));
        CREATOR = new mu();
    }

    mt(int n, String string, int n2) {
        o.aZ(string);
        this.BR = n;
        this.uO = string;
        this.aig = n2;
    }

    private static mt y(String string, int n) {
        return new mt(0, string, n);
    }

    @Override
    public int describeContents() {
        mu mu = CREATOR;
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
        if (!(object instanceof mt)) {
            return false;
        }
        object = (mt)object;
        if (!this.uO.equals(object.uO)) return false;
        if (this.aig == object.aig) return true;
        return false;
    }

    public int hashCode() {
        return this.uO.hashCode();
    }

    public String toString() {
        return this.uO;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        mu mu = CREATOR;
        mu.a(this, parcel, n);
    }
}

