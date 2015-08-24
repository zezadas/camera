/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.CreateFileIntentSenderRequest;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class i
implements Parcelable.Creator<CreateFileIntentSenderRequest> {
    static void a(CreateFileIntentSenderRequest createFileIntentSenderRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, createFileIntentSenderRequest.BR);
        b.a(parcel, 2, createFileIntentSenderRequest.Ol, n, false);
        b.c(parcel, 3, createFileIntentSenderRequest.uQ);
        b.a(parcel, 4, createFileIntentSenderRequest.Nw, false);
        b.a(parcel, 5, createFileIntentSenderRequest.Ny, n, false);
        b.a(parcel, 6, createFileIntentSenderRequest.Om, false);
        b.H(parcel, n2);
    }

    public CreateFileIntentSenderRequest ab(Parcel parcel) {
        int n = 0;
        Integer n2 = null;
        int n3 = a.C(parcel);
        DriveId driveId = null;
        String string = null;
        MetadataBundle metadataBundle = null;
        int n4 = 0;
        block8 : while (parcel.dataPosition() < n3) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block8;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block8;
                }
                case 2: {
                    metadataBundle = a.a(parcel, n5, MetadataBundle.CREATOR);
                    continue block8;
                }
                case 3: {
                    n = a.g(parcel, n5);
                    continue block8;
                }
                case 4: {
                    string = a.o(parcel, n5);
                    continue block8;
                }
                case 5: {
                    driveId = a.a(parcel, n5, DriveId.CREATOR);
                    continue block8;
                }
                case 6: 
            }
            n2 = a.h(parcel, n5);
        }
        if (parcel.dataPosition() != n3) {
            throw new a.a("Overread allowed size end=" + n3, parcel);
        }
        return new CreateFileIntentSenderRequest(n4, metadataBundle, n, string, driveId, n2);
    }

    public CreateFileIntentSenderRequest[] bl(int n) {
        return new CreateFileIntentSenderRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ab(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bl(n);
    }
}

