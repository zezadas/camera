/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.snapshot.SnapshotContents;

public class SnapshotContentsCreator
implements Parcelable.Creator<SnapshotContents> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(SnapshotContents snapshotContents, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, snapshotContents.getContents(), n, false);
        b.c(parcel, 1000, snapshotContents.getVersionCode());
        b.H(parcel, n2);
    }

    @Override
    public SnapshotContents createFromParcel(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        Contents contents = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    contents = a.a(parcel, n3, Contents.CREATOR);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new SnapshotContents(n2, contents);
    }

    public SnapshotContents[] newArray(int n) {
        return new SnapshotContents[n];
    }
}

