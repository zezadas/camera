/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.request.GameRequestEntity;
import java.util.ArrayList;
import java.util.List;

public class GameRequestEntityCreator
implements Parcelable.Creator<GameRequestEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(GameRequestEntity gameRequestEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, gameRequestEntity.getGame(), n, false);
        b.c(parcel, 1000, gameRequestEntity.getVersionCode());
        b.a(parcel, 2, gameRequestEntity.getSender(), n, false);
        b.a(parcel, 3, gameRequestEntity.getData(), false);
        b.a(parcel, 4, gameRequestEntity.getRequestId(), false);
        b.c(parcel, 5, gameRequestEntity.getRecipients(), false);
        b.c(parcel, 7, gameRequestEntity.getType());
        b.a(parcel, 9, gameRequestEntity.getCreationTimestamp());
        b.a(parcel, 10, gameRequestEntity.getExpirationTimestamp());
        b.a(parcel, 11, gameRequestEntity.lL(), false);
        b.c(parcel, 12, gameRequestEntity.getStatus());
        b.H(parcel, n2);
    }

    @Override
    public GameRequestEntity createFromParcel(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        GameEntity gameEntity = null;
        PlayerEntity playerEntity = null;
        Object object = null;
        String string = null;
        ArrayList<PlayerEntity> arrayList = null;
        int n3 = 0;
        long l = 0;
        long l2 = 0;
        Bundle bundle = null;
        int n4 = 0;
        block13 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block13;
                }
                case 1: {
                    gameEntity = a.a(parcel, n5, GameEntity.CREATOR);
                    continue block13;
                }
                case 1000: {
                    n2 = a.g(parcel, n5);
                    continue block13;
                }
                case 2: {
                    playerEntity = a.a(parcel, n5, PlayerEntity.CREATOR);
                    continue block13;
                }
                case 3: {
                    object = a.r(parcel, n5);
                    continue block13;
                }
                case 4: {
                    string = a.o(parcel, n5);
                    continue block13;
                }
                case 5: {
                    arrayList = a.c(parcel, n5, PlayerEntity.CREATOR);
                    continue block13;
                }
                case 7: {
                    n3 = a.g(parcel, n5);
                    continue block13;
                }
                case 9: {
                    l = a.i(parcel, n5);
                    continue block13;
                }
                case 10: {
                    l2 = a.i(parcel, n5);
                    continue block13;
                }
                case 11: {
                    bundle = a.q(parcel, n5);
                    continue block13;
                }
                case 12: 
            }
            n4 = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new GameRequestEntity(n2, gameEntity, playerEntity, (byte[])object, string, arrayList, n3, l, l2, bundle, n4);
    }

    public GameRequestEntity[] newArray(int n) {
        return new GameRequestEntity[n];
    }
}

