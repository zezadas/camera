/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.game.ExtendedGameEntity;
import com.google.android.gms.games.internal.game.GameBadge;
import com.google.android.gms.games.internal.game.GameBadgeEntity;
import com.google.android.gms.games.internal.game.GameBadgeEntityCreator;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntityCreator;
import java.util.ArrayList;

public class ExtendedGameEntityCreator
implements Parcelable.Creator<ExtendedGameEntity> {
    static void a(ExtendedGameEntity extendedGameEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, extendedGameEntity.lb(), n, false);
        b.c(parcel, 1000, extendedGameEntity.getVersionCode());
        b.c(parcel, 2, extendedGameEntity.kS());
        b.a(parcel, 3, extendedGameEntity.kT());
        b.c(parcel, 4, extendedGameEntity.kU());
        b.a(parcel, 5, extendedGameEntity.kV());
        b.a(parcel, 6, extendedGameEntity.kW());
        b.a(parcel, 7, extendedGameEntity.kX(), false);
        b.a(parcel, 8, extendedGameEntity.kY());
        b.a(parcel, 9, extendedGameEntity.kZ(), false);
        b.c(parcel, 10, extendedGameEntity.kR(), false);
        b.a(parcel, 11, extendedGameEntity.la(), n, false);
        b.H(parcel, n2);
    }

    public ExtendedGameEntity cg(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        GameEntity gameEntity = null;
        int n3 = 0;
        boolean bl = false;
        int n4 = 0;
        long l = 0;
        long l2 = 0;
        String string = null;
        long l3 = 0;
        String string2 = null;
        ArrayList<GameBadgeEntity> arrayList = null;
        SnapshotMetadataEntity snapshotMetadataEntity = null;
        block14 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block14;
                }
                case 1: {
                    gameEntity = a.a(parcel, n5, GameEntity.CREATOR);
                    continue block14;
                }
                case 1000: {
                    n2 = a.g(parcel, n5);
                    continue block14;
                }
                case 2: {
                    n3 = a.g(parcel, n5);
                    continue block14;
                }
                case 3: {
                    bl = a.c(parcel, n5);
                    continue block14;
                }
                case 4: {
                    n4 = a.g(parcel, n5);
                    continue block14;
                }
                case 5: {
                    l = a.i(parcel, n5);
                    continue block14;
                }
                case 6: {
                    l2 = a.i(parcel, n5);
                    continue block14;
                }
                case 7: {
                    string = a.o(parcel, n5);
                    continue block14;
                }
                case 8: {
                    l3 = a.i(parcel, n5);
                    continue block14;
                }
                case 9: {
                    string2 = a.o(parcel, n5);
                    continue block14;
                }
                case 10: {
                    arrayList = a.c(parcel, n5, GameBadgeEntity.CREATOR);
                    continue block14;
                }
                case 11: 
            }
            snapshotMetadataEntity = (SnapshotMetadataEntity)a.a(parcel, n5, SnapshotMetadataEntity.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ExtendedGameEntity(n2, gameEntity, n3, bl, n4, l, l2, string, l3, string2, arrayList, snapshotMetadataEntity);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cg(parcel);
    }

    public ExtendedGameEntity[] dJ(int n) {
        return new ExtendedGameEntity[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dJ(n);
    }
}

