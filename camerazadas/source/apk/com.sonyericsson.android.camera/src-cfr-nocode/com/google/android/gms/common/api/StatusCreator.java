/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/*
 * Exception performing whole class analysis ignored.
 */
public class StatusCreator
implements Parcelable.Creator<Status> {
    public static final int CONTENT_DESCRIPTION = 0;

    public StatusCreator();

    static void a(Status var0, Parcel var1, int var2);

    @Override
    public Status createFromParcel(Parcel var1);

    public Status[] newArray(int var1);
}

