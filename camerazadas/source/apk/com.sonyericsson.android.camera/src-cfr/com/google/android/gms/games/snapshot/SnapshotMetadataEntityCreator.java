/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;

public class SnapshotMetadataEntityCreator
implements Parcelable.Creator<SnapshotMetadataEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(SnapshotMetadataEntity snapshotMetadataEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, snapshotMetadataEntity.getGame(), n, false);
        b.c(parcel, 1000, snapshotMetadataEntity.getVersionCode());
        b.a(parcel, 2, snapshotMetadataEntity.getOwner(), n, false);
        b.a(parcel, 3, snapshotMetadataEntity.getSnapshotId(), false);
        b.a(parcel, 5, snapshotMetadataEntity.getCoverImageUri(), n, false);
        b.a(parcel, 6, snapshotMetadataEntity.getCoverImageUrl(), false);
        b.a(parcel, 7, snapshotMetadataEntity.getTitle(), false);
        b.a(parcel, 8, snapshotMetadataEntity.getDescription(), false);
        b.a(parcel, 9, snapshotMetadataEntity.getLastModifiedTimestamp());
        b.a(parcel, 10, snapshotMetadataEntity.getPlayedTime());
        b.a(parcel, 11, snapshotMetadataEntity.getCoverImageAspectRatio());
        b.a(parcel, 12, snapshotMetadataEntity.getUniqueName(), false);
        b.H(parcel, n2);
    }

    @Override
    public SnapshotMetadataEntity createFromParcel(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        GameEntity gameEntity = null;
        PlayerEntity playerEntity = null;
        String string = null;
        Uri uri = null;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        long l = 0;
        long l2 = 0;
        float f = 0.0f;
        String string5 = null;
        block14 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block14;
                }
                case 1: {
                    gameEntity = a.a(parcel, n3, GameEntity.CREATOR);
                    continue block14;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block14;
                }
                case 2: {
                    playerEntity = a.a(parcel, n3, PlayerEntity.CREATOR);
                    continue block14;
                }
                case 3: {
                    string = a.o(parcel, n3);
                    continue block14;
                }
                case 5: {
                    uri = a.a(parcel, n3, Uri.CREATOR);
                    continue block14;
                }
                case 6: {
                    string2 = a.o(parcel, n3);
                    continue block14;
                }
                case 7: {
                    string3 = a.o(parcel, n3);
                    continue block14;
                }
                case 8: {
                    string4 = a.o(parcel, n3);
                    continue block14;
                }
                case 9: {
                    l = a.i(parcel, n3);
                    continue block14;
                }
                case 10: {
                    l2 = a.i(parcel, n3);
                    continue block14;
                }
                case 11: {
                    f = a.l(parcel, n3);
                    continue block14;
                }
                case 12: 
            }
            string5 = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new SnapshotMetadataEntity(n2, gameEntity, playerEntity, string, uri, string2, string3, string4, l, l2, f, string5);
    }

    public SnapshotMetadataEntity[] newArray(int n) {
        return new SnapshotMetadataEntity[n];
    }
}

