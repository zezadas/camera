/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.lt;

public class ls
implements SafeParcelable {
    public static final lt CREATOR = new lt();
    private final int BR;
    public final String packageName;
    public final int uid;

    ls(int n, int n2, String string) {
        this.BR = n;
        this.uid = n2;
        this.packageName = string;
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
        if (!(object instanceof ls)) {
            return false;
        }
        object = (ls)object;
        if (object.uid != this.uid) return false;
        if (!n.equal(object.packageName, this.packageName)) return false;
        return true;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return this.uid;
    }

    public String toString() {
        return String.format("%d:%s", this.uid, this.packageName);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        lt.a(this, parcel, n);
    }
}

