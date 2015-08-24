/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;

/*
 * Exception performing whole class analysis.
 */
public abstract class Task
implements Parcelable {
    private final String adB;
    private final boolean adC;
    private final boolean adD;
    private final String mTag;

    Task();

    @Override
    public int describeContents();

    public String getServiceName();

    public String getTag();

    public boolean isPersisted();

    public boolean isUpdateCurrent();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

