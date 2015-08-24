/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class Task
implements Parcelable {
    private final String adB = null;
    private final boolean adC = false;
    private final boolean adD = false;
    private final String mTag = null;

    Task() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getServiceName() {
        return this.adB;
    }

    public String getTag() {
        return this.mTag;
    }

    public boolean isPersisted() {
        return this.adD;
    }

    public boolean isUpdateCurrent() {
        return this.adC;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void writeToParcel(Parcel parcel, int n) {
        int n2 = 1;
        parcel.writeString(this.adB);
        parcel.writeString(this.mTag);
        n = this.adC ? 1 : 0;
        parcel.writeInt(n);
        n = this.adD ? n2 : 0;
        parcel.writeInt(n);
    }
}

