/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.ap;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class OnMetadataResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnMetadataResponse> CREATOR = new ap();
    final int BR;
    final MetadataBundle Ol;

    OnMetadataResponse(int n, MetadataBundle metadataBundle) {
        this.BR = n;
        this.Ol = metadataBundle;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public MetadataBundle il() {
        return this.Ol;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ap.a(this, parcel, n);
    }
}

