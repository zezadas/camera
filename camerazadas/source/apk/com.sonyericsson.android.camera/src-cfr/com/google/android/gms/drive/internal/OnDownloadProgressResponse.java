/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.aj;

/*
 * Illegal identifiers - consider using --renameillegalidents true
 */
public class OnDownloadProgressResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnDownloadProgressResponse> CREATOR = new aj();
    final int BR;
    final long Pp;
    final long Pq;

    OnDownloadProgressResponse(int n, long l, long l2) {
        this.BR = n;
        this.Pp = l;
        this.Pq = l2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public long if() {
        return this.Pp;
    }

    public long ig() {
        return this.Pq;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        aj.a(this, parcel, n);
    }
}

