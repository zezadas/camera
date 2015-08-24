/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotContentsCreator;
import com.google.android.gms.games.snapshot.SnapshotEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntityCreator;

public class SnapshotEntityCreator
implements Parcelable.Creator<SnapshotEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(SnapshotEntity snapshotEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, snapshotEntity.getMetadata(), n, false);
        b.c(parcel, 1000, snapshotEntity.getVersionCode());
        b.a(parcel, 3, snapshotEntity.getSnapshotContents(), n, false);
        b.H(parcel, n2);
    }

    @Override
    public SnapshotEntity createFromParcel(Parcel parcel) {
        SnapshotContents snapshotContents = null;
        int n = a.C(parcel);
        int n2 = 0;
        SnapshotMetadataEntity snapshotMetadataEntity = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    snapshotMetadataEntity = (SnapshotMetadataEntity)a.a(parcel, n3, SnapshotMetadataEntity.CREATOR);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            snapshotContents = (SnapshotContents)a.a(parcel, n3, SnapshotContents.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new SnapshotEntity(n2, snapshotMetadataEntity, snapshotContents);
    }

    public SnapshotEntity[] newArray(int n) {
        return new SnapshotEntity[n];
    }
}

