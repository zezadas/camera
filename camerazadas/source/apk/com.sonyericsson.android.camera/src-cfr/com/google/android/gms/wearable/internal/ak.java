/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.internal.al;

public class ak
implements SafeParcelable,
Node {
    public static final Parcelable.Creator<ak> CREATOR = new al();
    private final String BL;
    final int BR;
    private final String NH;

    ak(int n, String string, String string2) {
        this.BR = n;
        this.BL = string;
        this.NH = string2;
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
        if (!(object instanceof ak)) {
            return false;
        }
        object = (ak)object;
        if (!object.BL.equals(this.BL)) return false;
        if (!object.NH.equals(this.NH)) return false;
        return true;
    }

    @Override
    public String getDisplayName() {
        return this.NH;
    }

    @Override
    public String getId() {
        return this.BL;
    }

    public int hashCode() {
        return (this.BL.hashCode() + 629) * 37 + this.NH.hashCode();
    }

    public String toString() {
        return "NodeParcelable{" + this.BL + "," + this.NH + "}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        al.a(this, parcel, n);
    }
}

