/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.internal.am;

public class OnEventResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnEventResponse> CREATOR = new am();
    final int BR;
    final int Oa;
    final ChangeEvent Ps;
    final CompletionEvent Pt;

    OnEventResponse(int n, int n2, ChangeEvent changeEvent, CompletionEvent completionEvent) {
        this.BR = n;
        this.Oa = n2;
        this.Ps = changeEvent;
        this.Pt = completionEvent;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public DriveEvent ih() {
        switch (this.Oa) {
            default: {
                throw new IllegalStateException("Unexpected event type " + this.Oa);
            }
            case 1: {
                return this.Ps;
            }
            case 2: 
        }
        return this.Pt;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        am.a(this, parcel, n);
    }
}

