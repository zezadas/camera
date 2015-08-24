/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.ActivityRecognitionResultCreator;
import com.google.android.gms.location.DetectedActivity;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ActivityRecognitionResult
implements SafeParcelable {
    public static final ActivityRecognitionResultCreator CREATOR;
    public static final String EXTRA_ACTIVITY_RESULT = "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT";
    private final int BR;
    List<DetectedActivity> aeb;
    long aec;
    long aed;

    static;

    public ActivityRecognitionResult(int var1, List<DetectedActivity> var2, long var3, long var5);

    public ActivityRecognitionResult(DetectedActivity var1, long var2, long var4);

    public ActivityRecognitionResult(List<DetectedActivity> var1, long var2, long var4);

    public static ActivityRecognitionResult extractResult(Intent var0);

    public static boolean hasResult(Intent var0);

    @Override
    public int describeContents();

    public int getActivityConfidence(int var1);

    public long getElapsedRealtimeMillis();

    public DetectedActivity getMostProbableActivity();

    public List<DetectedActivity> getProbableActivities();

    public long getTime();

    public int getVersionCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

