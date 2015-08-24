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
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ParcelableEvent
implements SafeParcelable {
    public static final Parcelable.Creator<ParcelableEvent> CREATOR;
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

    static;

    ParcelableEvent(int var1, String var2, String var3, List<String> var4, boolean var5, String var6, String var7, TextInsertedDetails var8, TextDeletedDetails var9, ValuesAddedDetails var10, ValuesRemovedDetails var11, ValuesSetDetails var12, ValueChangedDetails var13, ReferenceShiftedDetails var14, ObjectChangedDetails var15);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

