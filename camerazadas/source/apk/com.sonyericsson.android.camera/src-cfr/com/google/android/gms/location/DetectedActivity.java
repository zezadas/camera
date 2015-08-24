/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.DetectedActivityCreator;
import java.util.Comparator;

public class DetectedActivity
implements SafeParcelable {
    public static final DetectedActivityCreator CREATOR;
    public static final int IN_VEHICLE = 0;
    public static final int ON_BICYCLE = 1;
    public static final int ON_FOOT = 2;
    public static final int RUNNING = 8;
    public static final int STILL = 3;
    public static final int TILTING = 5;
    public static final int UNKNOWN = 4;
    public static final int WALKING = 7;
    public static final Comparator<DetectedActivity> aee;
    private final int BR;
    int aef;
    int aeg;

    static {
        aee = new Comparator<DetectedActivity>(){

            public int a(DetectedActivity detectedActivity, DetectedActivity detectedActivity2) {
                int n;
                int n2 = n = Integer.valueOf(detectedActivity2.getConfidence()).compareTo(detectedActivity.getConfidence());
                if (n == 0) {
                    n2 = Integer.valueOf(detectedActivity.getType()).compareTo(detectedActivity2.getType());
                }
                return n2;
            }

            @Override
            public /* synthetic */ int compare(Object object, Object object2) {
                return this.a((DetectedActivity)object, (DetectedActivity)object2);
            }
        };
        CREATOR = new DetectedActivityCreator();
    }

    public DetectedActivity(int n, int n2) {
        this.BR = 1;
        this.aef = n;
        this.aeg = n2;
    }

    public DetectedActivity(int n, int n2, int n3) {
        this.BR = n;
        this.aef = n2;
        this.aeg = n3;
    }

    private int ea(int n) {
        int n2 = n;
        if (n > 9) {
            n2 = 4;
        }
        return n2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getConfidence() {
        return this.aeg;
    }

    public int getType() {
        return this.ea(this.aef);
    }

    public int getVersionCode() {
        return this.BR;
    }

    public String toString() {
        return "DetectedActivity [type=" + this.getType() + ", confidence=" + this.aeg + "]";
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        DetectedActivityCreator.a(this, parcel, n);
    }

}

