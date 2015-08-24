/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.ResourceEvent;
import com.google.android.gms.drive.events.a;
import java.util.Locale;

public final class ChangeEvent
implements SafeParcelable,
ResourceEvent {
    public static final Parcelable.Creator<ChangeEvent> CREATOR = new a();
    final int BR;
    final DriveId MW;
    final int NM;

    ChangeEvent(int n, DriveId driveId, int n2) {
        this.BR = n;
        this.MW = driveId;
        this.NM = n2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public DriveId getDriveId() {
        return this.MW;
    }

    @Override
    public int getType() {
        return 1;
    }

    public boolean hasContentChanged() {
        if ((this.NM & 2) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasMetadataChanged() {
        if ((this.NM & 1) != 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        return String.format(Locale.US, "ChangeEvent [id=%s,changeFlags=%x]", this.MW, this.NM);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }
}

