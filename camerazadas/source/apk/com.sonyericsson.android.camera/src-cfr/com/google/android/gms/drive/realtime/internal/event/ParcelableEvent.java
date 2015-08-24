/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.event.ObjectChangedDetails;
import com.google.android.gms.drive.realtime.internal.event.ReferenceShiftedDetails;
import com.google.android.gms.drive.realtime.internal.event.TextDeletedDetails;
import com.google.android.gms.drive.realtime.internal.event.TextInsertedDetails;
import com.google.android.gms.drive.realtime.internal.event.ValueChangedDetails;
import com.google.android.gms.drive.realtime.internal.event.ValuesAddedDetails;
import com.google.android.gms.drive.realtime.internal.event.ValuesRemovedDetails;
import com.google.android.gms.drive.realtime.internal.event.ValuesSetDetails;
import com.google.android.gms.drive.realtime.internal.event.b;
import java.util.List;

public class ParcelableEvent
implements SafeParcelable {
    public static final Parcelable.Creator<ParcelableEvent> CREATOR = new b();
    final int BR;
    final ValuesSetDetails RA;
    final ValueChangedDetails RB;
    final ReferenceShiftedDetails RC;
    final ObjectChangedDetails RD;
    final String Rm;
    final String Rp;
    final List<String> Rt;
    final boolean Ru;
    final String Rv;
    final TextInsertedDetails Rw;
    final TextDeletedDetails Rx;
    final ValuesAddedDetails Ry;
    final ValuesRemovedDetails Rz;
    final String vL;

    ParcelableEvent(int n, String string, String string2, List<String> list, boolean bl, String string3, String string4, TextInsertedDetails textInsertedDetails, TextDeletedDetails textDeletedDetails, ValuesAddedDetails valuesAddedDetails, ValuesRemovedDetails valuesRemovedDetails, ValuesSetDetails valuesSetDetails, ValueChangedDetails valueChangedDetails, ReferenceShiftedDetails referenceShiftedDetails, ObjectChangedDetails objectChangedDetails) {
        this.BR = n;
        this.vL = string;
        this.Rm = string2;
        this.Rt = list;
        this.Ru = bl;
        this.Rp = string3;
        this.Rv = string4;
        this.Rw = textInsertedDetails;
        this.Rx = textDeletedDetails;
        this.Ry = valuesAddedDetails;
        this.Rz = valuesRemovedDetails;
        this.RA = valuesSetDetails;
        this.RB = valueChangedDetails;
        this.RC = referenceShiftedDetails;
        this.RD = objectChangedDetails;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }
}

