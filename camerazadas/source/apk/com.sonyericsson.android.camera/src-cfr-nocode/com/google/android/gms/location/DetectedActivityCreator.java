/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.DetectedActivity;

/*
 * Exception performing whole class analysis ignored.
 */
public class DetectedActivityCreator
implements Parcelable.Creator<DetectedActivity> {
    public static final int CONTENT_DESCRIPTION = 0;

    public DetectedActivityCreator();

    static void a(DetectedActivity var0, Parcel var1, int var2);

    @Override
    public DetectedActivity createFromParcel(Parcel var1);

    public DetectedActivity[] newArray(int var1);
}

