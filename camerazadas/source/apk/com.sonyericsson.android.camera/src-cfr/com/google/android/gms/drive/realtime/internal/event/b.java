/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.drive.realtime.internal.event.ObjectChangedDetails;
import com.google.android.gms.drive.realtime.internal.event.ParcelableEvent;
import com.google.android.gms.drive.realtime.internal.event.ReferenceShiftedDetails;
import com.google.android.gms.drive.realtime.internal.event.TextDeletedDetails;
import com.google.android.gms.drive.realtime.internal.event.TextInsertedDetails;
import com.google.android.gms.drive.realtime.internal.event.ValueChangedDetails;
import com.google.android.gms.drive.realtime.internal.event.ValuesAddedDetails;
import com.google.android.gms.drive.realtime.internal.event.ValuesRemovedDetails;
import com.google.android.gms.drive.realtime.internal.event.ValuesSetDetails;
import java.util.ArrayList;
import java.util.List;

public class b
implements Parcelable.Creator<ParcelableEvent> {
    static void a(ParcelableEvent parcelableEvent, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, parcelableEvent.BR);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, parcelableEvent.vL, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, parcelableEvent.Rm, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 4, parcelableEvent.Rt, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, parcelableEvent.Ru);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, parcelableEvent.Rp, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, parcelableEvent.Rv, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, parcelableEvent.Rw, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, parcelableEvent.Rx, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, parcelableEvent.Ry, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, parcelableEvent.Rz, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, parcelableEvent.RA, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, parcelableEvent.RB, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, parcelableEvent.RC, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, parcelableEvent.RD, n, false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    public ParcelableEvent aZ(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        ArrayList<String> arrayList = null;
        boolean bl = false;
        String string3 = null;
        String string4 = null;
        TextInsertedDetails textInsertedDetails = null;
        TextDeletedDetails textDeletedDetails = null;
        ValuesAddedDetails valuesAddedDetails = null;
        ValuesRemovedDetails valuesRemovedDetails = null;
        ValuesSetDetails valuesSetDetails = null;
        ValueChangedDetails valueChangedDetails = null;
        ReferenceShiftedDetails referenceShiftedDetails = null;
        ObjectChangedDetails objectChangedDetails = null;
        block17 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block17;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block17;
                }
                case 2: {
                    string = a.o(parcel, n3);
                    continue block17;
                }
                case 3: {
                    string2 = a.o(parcel, n3);
                    continue block17;
                }
                case 4: {
                    arrayList = a.C(parcel, n3);
                    continue block17;
                }
                case 5: {
                    bl = a.c(parcel, n3);
                    continue block17;
                }
                case 6: {
                    string3 = a.o(parcel, n3);
                    continue block17;
                }
                case 7: {
                    string4 = a.o(parcel, n3);
                    continue block17;
                }
                case 8: {
                    textInsertedDetails = a.a(parcel, n3, TextInsertedDetails.CREATOR);
                    continue block17;
                }
                case 9: {
                    textDeletedDetails = a.a(parcel, n3, TextDeletedDetails.CREATOR);
                    continue block17;
                }
                case 10: {
                    valuesAddedDetails = a.a(parcel, n3, ValuesAddedDetails.CREATOR);
                    continue block17;
                }
                case 11: {
                    valuesRemovedDetails = a.a(parcel, n3, ValuesRemovedDetails.CREATOR);
                    continue block17;
                }
                case 12: {
                    valuesSetDetails = a.a(parcel, n3, ValuesSetDetails.CREATOR);
                    continue block17;
                }
                case 13: {
                    valueChangedDetails = a.a(parcel, n3, ValueChangedDetails.CREATOR);
                    continue block17;
                }
                case 14: {
                    referenceShiftedDetails = a.a(parcel, n3, ReferenceShiftedDetails.CREATOR);
                    continue block17;
                }
                case 15: 
            }
            objectChangedDetails = a.a(parcel, n3, ObjectChangedDetails.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ParcelableEvent(n2, string, string2, arrayList, bl, string3, string4, textInsertedDetails, textDeletedDetails, valuesAddedDetails, valuesRemovedDetails, valuesSetDetails, valueChangedDetails, referenceShiftedDetails, objectChangedDetails);
    }

    public ParcelableEvent[] cm(int n) {
        return new ParcelableEvent[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aZ(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cm(n);
    }
}

