/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.ActivityRecognitionResult;

/*
 * Exception performing whole class analysis ignored.
 */
public class ActivityRecognitionResultCreator
implements Parcelable.Creator<ActivityRecognitionResult> {
    public static final int CONTENT_DESCRIPTION = 0;

    public ActivityRecognitionResultCreator();

    static void a(ActivityRecognitionResult var0, Parcel var1, int var2);

    @Override
    public ActivityRecognitionResult createFromParcel(Parcel var1);

    public ActivityRecognitionResult[] newArray(int var1);
}

