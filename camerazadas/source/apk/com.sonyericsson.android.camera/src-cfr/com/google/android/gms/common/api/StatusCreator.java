/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class StatusCreator
implements Parcelable.Creator<Status> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(Status status, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, status.getStatusCode());
        b.c(parcel, 1000, status.getVersionCode());
        b.a(parcel, 2, status.getStatusMessage(), false);
        b.a(parcel, 3, status.getPendingIntent(), n, false);
        b.H(parcel, n2);
    }

    @Override
    public Status createFromParcel(Parcel parcel) {
        PendingIntent pendingIntent = null;
        int n = 0;
        int n2 = a.C(parcel);
        String string = null;
        int n3 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block6;
                }
                case 1: {
                    n = a.g(parcel, n4);
                    continue block6;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block6;
                }
                case 2: {
                    string = a.o(parcel, n4);
                    continue block6;
                }
                case 3: 
            }
            pendingIntent = a.a(parcel, n4, PendingIntent.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new Status(n3, n, string, pendingIntent);
    }

    public Status[] newArray(int n) {
        return new Status[n];
    }
}

