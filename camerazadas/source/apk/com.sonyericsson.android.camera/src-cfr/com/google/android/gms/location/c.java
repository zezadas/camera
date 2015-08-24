/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.d;

public class c
implements SafeParcelable {
    public static final d CREATOR = new d();
    private final int BR;
    int aex;
    int aey;
    long aez;

    c(int n, int n2, int n3, long l) {
        this.BR = n;
        this.aex = n2;
        this.aey = n3;
        this.aez = l;
    }

    private String ee(int n) {
        switch (n) {
            default: {
                return "STATUS_UNKNOWN";
            }
            case 0: {
                return "STATUS_SUCCESSFUL";
            }
            case 2: {
                return "STATUS_TIMED_OUT_ON_SCAN";
            }
            case 3: {
                return "STATUS_NO_INFO_IN_DATABASE";
            }
            case 4: {
                return "STATUS_INVALID_SCAN";
            }
            case 5: {
                return "STATUS_UNABLE_TO_QUERY_DATABASE";
            }
            case 6: {
                return "STATUS_SCANS_DISABLED_IN_SETTINGS";
            }
            case 7: {
                return "STATUS_LOCATION_DISABLED_IN_SETTINGS";
            }
            case 8: 
        }
        return "STATUS_IN_PROGRESS";
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
        if (!(object instanceof c)) {
            return false;
        }
        object = (c)object;
        if (this.aex != object.aex) return false;
        if (this.aey != object.aey) return false;
        if (this.aez != object.aez) return false;
        return true;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.aex, this.aey, this.aez);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("LocationStatus[cell status: ").append(this.ee(this.aex));
        stringBuilder.append(", wifi status: ").append(this.ee(this.aey));
        stringBuilder.append(", elapsed realtime ns: ").append(this.aez);
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        d.a(this, parcel, n);
    }
}

