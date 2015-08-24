/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ls;
import com.google.android.gms.internal.mb;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

public class ma
implements SafeParcelable {
    public static final mb CREATOR;
    static final List<ls> afh;
    private final int BR;
    LocationRequest UI;
    boolean afi;
    boolean afj;
    boolean afk;
    List<ls> afl;
    final String mTag;

    static {
        afh = Collections.emptyList();
        CREATOR = new mb();
    }

    ma(int n, LocationRequest locationRequest, boolean bl, boolean bl2, boolean bl3, List<ls> list, String string) {
        this.BR = n;
        this.UI = locationRequest;
        this.afi = bl;
        this.afj = bl2;
        this.afk = bl3;
        this.afl = list;
        this.mTag = string;
    }

    private ma(String string, LocationRequest locationRequest) {
        this(1, locationRequest, false, true, true, afh, string);
    }

    public static ma a(String string, LocationRequest locationRequest) {
        return new ma(string, locationRequest);
    }

    public static ma b(LocationRequest locationRequest) {
        return ma.a(null, locationRequest);
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
        if (!(object instanceof ma)) {
            return false;
        }
        object = (ma)object;
        if (!n.equal(this.UI, object.UI)) return false;
        if (this.afi != object.afi) return false;
        if (this.afj != object.afj) return false;
        if (this.afk != object.afk) return false;
        if (!n.equal(this.afl, object.afl)) return false;
        return true;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return this.UI.hashCode();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.UI.toString());
        stringBuilder.append(" requestNlpDebugInfo=");
        stringBuilder.append(this.afi);
        stringBuilder.append(" restorePendingIntentListeners=");
        stringBuilder.append(this.afj);
        stringBuilder.append(" triggerUpdate=");
        stringBuilder.append(this.afk);
        stringBuilder.append(" clients=");
        stringBuilder.append(this.afl);
        if (this.mTag != null) {
            stringBuilder.append(" tag=");
            stringBuilder.append(this.mTag);
        }
        return stringBuilder.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        mb.a(this, parcel, n);
    }
}

