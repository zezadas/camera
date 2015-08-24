/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.a;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;

public class SnapshotMetadataChangeCreator
implements Parcelable.Creator<SnapshotMetadataChange> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(SnapshotMetadataChange snapshotMetadataChange, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, snapshotMetadataChange.getDescription(), false);
        b.c(parcel, 1000, snapshotMetadataChange.getVersionCode());
        b.a(parcel, 2, snapshotMetadataChange.getPlayedTimeMillis(), false);
        b.a(parcel, 4, snapshotMetadataChange.getCoverImageUri(), n, false);
        b.a(parcel, 5, snapshotMetadataChange.lM(), n, false);
        b.H(parcel, n2);
    }

    @Override
    public SnapshotMetadataChange createFromParcel(Parcel parcel) {
        Uri uri = null;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        a a = null;
        Long l = null;
        String string = null;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block7;
                }
                case 1: {
                    string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block7;
                }
                case 1000: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block7;
                }
                case 2: {
                    l = com.google.android.gms.common.internal.safeparcel.a.j(parcel, n3);
                    continue block7;
                }
                case 4: {
                    uri = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, Uri.CREATOR);
                    continue block7;
                }
                case 5: 
            }
            a = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, a.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new SnapshotMetadataChange(n2, string, l, a, uri);
    }

    public SnapshotMetadataChange[] newArray(int n) {
        return new SnapshotMetadataChange[n];
    }
}

