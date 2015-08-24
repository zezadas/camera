/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.DetectedActivity;

public class DetectedActivityCreator
implements Parcelable.Creator<DetectedActivity> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(DetectedActivity detectedActivity, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, detectedActivity.aef);
        b.c(parcel, 1000, detectedActivity.getVersionCode());
        b.c(parcel, 2, detectedActivity.aeg);
        b.H(parcel, n);
    }

    @Override
    public DetectedActivity createFromParcel(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        int n3 = 0;
        int n4 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block5;
                }
                case 1: {
                    n3 = a.g(parcel, n5);
                    continue block5;
                }
                case 1000: {
                    n4 = a.g(parcel, n5);
                    continue block5;
                }
                case 2: 
            }
            n = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new DetectedActivity(n4, n3, n);
    }

    public DetectedActivity[] newArray(int n) {
        return new DetectedActivity[n];
    }
}

