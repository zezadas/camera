/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.internal.f;

public class CloseContentsRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CloseContentsRequest> CREATOR = new f();
    final int BR;
    final Contents Of;
    final Boolean Oh;

    CloseContentsRequest(int n, Contents contents, Boolean bl) {
        this.BR = n;
        this.Of = contents;
        this.Oh = bl;
    }

    public CloseContentsRequest(Contents contents, boolean bl) {
        this(1, contents, bl);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        f.a(this, parcel, n);
    }
}

