/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.events;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.ArrayList;

public class b
implements Parcelable.Creator<CompletionEvent> {
    static void a(CompletionEvent completionEvent, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, completionEvent.BR);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, completionEvent.MW, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, completionEvent.Dd, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, completionEvent.NN, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, completionEvent.NO, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, completionEvent.NP, n, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 7, completionEvent.NQ, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 8, completionEvent.Fa);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, completionEvent.NR, false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    public CompletionEvent U(Parcel parcel) {
        int n = 0;
        IBinder iBinder = null;
        int n2 = a.C(parcel);
        ArrayList<String> arrayList = null;
        MetadataBundle metadataBundle = null;
        ParcelFileDescriptor parcelFileDescriptor = null;
        ParcelFileDescriptor parcelFileDescriptor2 = null;
        String string = null;
        DriveId driveId = null;
        int n3 = 0;
        block11 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block11;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block11;
                }
                case 2: {
                    driveId = a.a(parcel, n4, DriveId.CREATOR);
                    continue block11;
                }
                case 3: {
                    string = a.o(parcel, n4);
                    continue block11;
                }
                case 4: {
                    parcelFileDescriptor2 = a.a(parcel, n4, ParcelFileDescriptor.CREATOR);
                    continue block11;
                }
                case 5: {
                    parcelFileDescriptor = a.a(parcel, n4, ParcelFileDescriptor.CREATOR);
                    continue block11;
                }
                case 6: {
                    metadataBundle = a.a(parcel, n4, MetadataBundle.CREATOR);
                    continue block11;
                }
                case 7: {
                    arrayList = a.C(parcel, n4);
                    continue block11;
                }
                case 8: {
                    n = a.g(parcel, n4);
                    continue block11;
                }
                case 9: 
            }
            iBinder = a.p(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new CompletionEvent(n3, driveId, string, parcelFileDescriptor2, parcelFileDescriptor, metadataBundle, arrayList, n, iBinder);
    }

    public CompletionEvent[] bb(int n) {
        return new CompletionEvent[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.U(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bb(n);
    }
}

