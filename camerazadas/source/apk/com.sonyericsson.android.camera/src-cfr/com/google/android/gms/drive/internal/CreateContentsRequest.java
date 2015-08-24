/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.g;

public class CreateContentsRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CreateContentsRequest> CREATOR = new g();
    final int BR;
    final int MV;

    public CreateContentsRequest(int n) {
        this(1, n);
    }

    /*
     * Enabled aggressive block sorting
     */
    CreateContentsRequest(int n, int n2) {
        this.BR = n;
        boolean bl = n2 == 536870912 || n2 == 805306368;
        o.b(bl, (Object)"Cannot create a new read-only contents!");
        this.MV = n2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        g.a(this, parcel, n);
    }
}

