/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.PlayerLevelInfo;
import com.google.android.gms.games.PlayerLevelInfoCreator;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntityCreator;

public class PlayerEntityCreator
implements Parcelable.Creator<PlayerEntity> {
    static void a(PlayerEntity playerEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, playerEntity.getPlayerId(), false);
        b.a(parcel, 2, playerEntity.getDisplayName(), false);
        b.a(parcel, 3, playerEntity.getIconImageUri(), n, false);
        b.a(parcel, 4, playerEntity.getHiResImageUri(), n, false);
        b.a(parcel, 5, playerEntity.getRetrievedTimestamp());
        b.c(parcel, 6, playerEntity.jU());
        b.a(parcel, 7, playerEntity.getLastPlayedWithTimestamp());
        b.a(parcel, 8, playerEntity.getIconImageUrl(), false);
        b.a(parcel, 9, playerEntity.getHiResImageUrl(), false);
        b.a(parcel, 14, playerEntity.getTitle(), false);
        b.a(parcel, 15, playerEntity.jV(), n, false);
        b.a(parcel, 16, playerEntity.getLevelInfo(), n, false);
        b.c(parcel, 1000, playerEntity.getVersionCode());
        b.a(parcel, 18, playerEntity.isProfileVisible());
        b.H(parcel, n2);
    }

    public PlayerEntity ce(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        Uri uri = null;
        Uri uri2 = null;
        long l = 0;
        int n3 = 0;
        long l2 = 0;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        MostRecentGameInfoEntity mostRecentGameInfoEntity = null;
        PlayerLevelInfo playerLevelInfo = null;
        boolean bl = false;
        block16 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block16;
                }
                case 1: {
                    string = a.o(parcel, n4);
                    continue block16;
                }
                case 2: {
                    string2 = a.o(parcel, n4);
                    continue block16;
                }
                case 3: {
                    uri = a.a(parcel, n4, Uri.CREATOR);
                    continue block16;
                }
                case 4: {
                    uri2 = a.a(parcel, n4, Uri.CREATOR);
                    continue block16;
                }
                case 5: {
                    l = a.i(parcel, n4);
                    continue block16;
                }
                case 6: {
                    n3 = a.g(parcel, n4);
                    continue block16;
                }
                case 7: {
                    l2 = a.i(parcel, n4);
                    continue block16;
                }
                case 8: {
                    string3 = a.o(parcel, n4);
                    continue block16;
                }
                case 9: {
                    string4 = a.o(parcel, n4);
                    continue block16;
                }
                case 14: {
                    string5 = a.o(parcel, n4);
                    continue block16;
                }
                case 15: {
                    mostRecentGameInfoEntity = (MostRecentGameInfoEntity)a.a(parcel, n4, MostRecentGameInfoEntity.CREATOR);
                    continue block16;
                }
                case 16: {
                    playerLevelInfo = (PlayerLevelInfo)a.a(parcel, n4, PlayerLevelInfo.CREATOR);
                    continue block16;
                }
                case 1000: {
                    n2 = a.g(parcel, n4);
                    continue block16;
                }
                case 18: 
            }
            bl = a.c(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new PlayerEntity(n2, string, string2, uri, uri2, l, n3, l2, string3, string4, string5, mostRecentGameInfoEntity, playerLevelInfo, bl);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ce(parcel);
    }

    public PlayerEntity[] dw(int n) {
        return new PlayerEntity[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dw(n);
    }
}

