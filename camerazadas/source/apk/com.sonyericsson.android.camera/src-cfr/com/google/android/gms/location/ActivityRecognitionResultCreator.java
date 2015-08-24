/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.DetectedActivity;
import com.google.android.gms.location.DetectedActivityCreator;
import java.util.ArrayList;
import java.util.List;

public class ActivityRecognitionResultCreator
implements Parcelable.Creator<ActivityRecognitionResult> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(ActivityRecognitionResult activityRecognitionResult, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, activityRecognitionResult.aeb, false);
        b.c(parcel, 1000, activityRecognitionResult.getVersionCode());
        b.a(parcel, 2, activityRecognitionResult.aec);
        b.a(parcel, 3, activityRecognitionResult.aed);
        b.H(parcel, n);
    }

    @Override
    public ActivityRecognitionResult createFromParcel(Parcel parcel) {
        long l = 0;
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList<DetectedActivity> arrayList = null;
        long l2 = 0;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    arrayList = a.c(parcel, n3, DetectedActivity.CREATOR);
                    continue block6;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    l2 = a.i(parcel, n3);
                    continue block6;
                }
                case 3: 
            }
            l = a.i(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ActivityRecognitionResult(n2, arrayList, l2, l);
    }

    public ActivityRecognitionResult[] newArray(int n) {
        return new ActivityRecognitionResult[n];
    }
}

