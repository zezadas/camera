/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.internal.ai;

public class OnContentsResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnContentsResponse> CREATOR = new ai();
    final int BR;
    final Contents Ox;
    final boolean Po;

    OnContentsResponse(int n, Contents contents, boolean bl) {
        this.BR = n;
        this.Ox = contents;
        this.Po = bl;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Contents id() {
        return this.Ox;
    }

    public boolean ie() {
        return this.Po;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ai.a(this, parcel, n);
    }
}

