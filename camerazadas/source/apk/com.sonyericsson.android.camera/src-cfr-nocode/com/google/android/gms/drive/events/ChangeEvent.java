/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.ResourceEvent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ChangeEvent
implements SafeParcelable,
ResourceEvent {
    public static final Parcelable.Creator<ChangeEvent> CREATOR;
    final int BR;
    final DriveId MW;
    final int NM;

    static;

    ChangeEvent(int var1, DriveId var2, int var3);

    @Override
    public int describeContents();

    @Override
    public DriveId getDriveId();

    @Override
    public int getType();

    public boolean hasContentChanged();

    public boolean hasMetadataChanged();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

