/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.ActivityRecognitionResultCreator;
import com.google.android.gms.location.DetectedActivity;
import java.util.Collections;
import java.util.List;

public class ActivityRecognitionResult
implements SafeParcelable {
    public static final ActivityRecognitionResultCreator CREATOR = new ActivityRecognitionResultCreator();
    public static final String EXTRA_ACTIVITY_RESULT = "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT";
    private final int BR;
    List<DetectedActivity> aeb;
    long aec;
    long aed;

    public ActivityRecognitionResult(int n, List<DetectedActivity> list, long l, long l2) {
        this.BR = 1;
        this.aeb = list;
        this.aec = l;
        this.aed = l2;
    }

    public ActivityRecognitionResult(DetectedActivity detectedActivity, long l, long l2) {
        this(Collections.singletonList(detectedActivity), l, l2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public ActivityRecognitionResult(List<DetectedActivity> list, long l, long l2) {
        boolean bl = false;
        boolean bl2 = list != null && list.size() > 0;
        o.b(bl2, (Object)"Must have at least 1 detected activity");
        bl2 = bl;
        if (l > 0) {
            bl2 = bl;
            if (l2 > 0) {
                bl2 = true;
            }
        }
        o.b(bl2, (Object)"Must set times");
        this.BR = 1;
        this.aeb = list;
        this.aec = l;
        this.aed = l2;
    }

    public static ActivityRecognitionResult extractResult(Intent object) {
        if (!ActivityRecognitionResult.hasResult((Intent)object)) {
            return null;
        }
        if ((object = object.getExtras().get("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT")) instanceof byte[]) {
            Parcel parcel = Parcel.obtain();
            parcel.unmarshall((byte[])object, 0, ((byte[])object).length);
            parcel.setDataPosition(0);
            return CREATOR.createFromParcel(parcel);
        }
        if (object instanceof ActivityRecognitionResult) {
            return (ActivityRecognitionResult)object;
        }
        return null;
    }

    public static boolean hasResult(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getActivityConfidence(int n) {
        for (DetectedActivity detectedActivity : this.aeb) {
            if (detectedActivity.getType() != n) continue;
            return detectedActivity.getConfidence();
        }
        return 0;
    }

    public long getElapsedRealtimeMillis() {
        return this.aed;
    }

    public DetectedActivity getMostProbableActivity() {
        return this.aeb.get(0);
    }

    public List<DetectedActivity> getProbableActivities() {
        return this.aeb;
    }

    public long getTime() {
        return this.aec;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public String toString() {
        return "ActivityRecognitionResult [probableActivities=" + this.aeb + ", timeMillis=" + this.aec + ", elapsedRealtimeMillis=" + this.aed + "]";
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ActivityRecognitionResultCreator.a(this, parcel, n);
    }
}

