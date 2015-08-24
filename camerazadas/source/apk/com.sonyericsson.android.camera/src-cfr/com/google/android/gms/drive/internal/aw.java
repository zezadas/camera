/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.OpenFileIntentSenderRequest;

public class aw
implements Parcelable.Creator<OpenFileIntentSenderRequest> {
    static void a(OpenFileIntentSenderRequest openFileIntentSenderRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, openFileIntentSenderRequest.BR);
        b.a(parcel, 2, openFileIntentSenderRequest.Nw, false);
        b.a(parcel, 3, openFileIntentSenderRequest.Nx, false);
        b.a(parcel, 4, openFileIntentSenderRequest.Ny, n, false);
        b.H(parcel, n2);
    }

    public OpenFileIntentSenderRequest ax(Parcel parcel) {
        DriveId driveId = null;
        int n = a.C(parcel);
        int n2 = 0;
        String[] arrstring = null;
        String string = null;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    string = a.o(parcel, n3);
                    continue block6;
                }
                case 3: {
                    arrstring = a.A(parcel, n3);
                    continue block6;
                }
                case 4: 
            }
            driveId = a.a(parcel, n3, DriveId.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new OpenFileIntentSenderRequest(n2, string, arrstring, driveId);
    }

    public OpenFileIntentSenderRequest[] bJ(int n) {
        return new OpenFileIntentSenderRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ax(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bJ(n);
    }
}

