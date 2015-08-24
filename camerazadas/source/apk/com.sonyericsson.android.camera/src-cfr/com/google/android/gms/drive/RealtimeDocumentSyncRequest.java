/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.f;
import java.util.List;

public class RealtimeDocumentSyncRequest
implements SafeParcelable {
    public static final Parcelable.Creator<RealtimeDocumentSyncRequest> CREATOR = new f();
    final int BR;
    final List<String> NA;
    final List<String> Nz;

    RealtimeDocumentSyncRequest(int n, List<String> list, List<String> list2) {
        this.BR = n;
        this.Nz = o.i(list);
        this.NA = o.i(list2);
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

