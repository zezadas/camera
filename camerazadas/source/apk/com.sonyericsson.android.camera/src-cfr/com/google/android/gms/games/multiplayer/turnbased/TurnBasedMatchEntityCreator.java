/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchEntity;
import java.util.ArrayList;

public class TurnBasedMatchEntityCreator
implements Parcelable.Creator<TurnBasedMatchEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(TurnBasedMatchEntity turnBasedMatchEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, turnBasedMatchEntity.getGame(), n, false);
        b.a(parcel, 2, turnBasedMatchEntity.getMatchId(), false);
        b.a(parcel, 3, turnBasedMatchEntity.getCreatorId(), false);
        b.a(parcel, 4, turnBasedMatchEntity.getCreationTimestamp());
        b.a(parcel, 5, turnBasedMatchEntity.getLastUpdaterId(), false);
        b.a(parcel, 6, turnBasedMatchEntity.getLastUpdatedTimestamp());
        b.a(parcel, 7, turnBasedMatchEntity.getPendingParticipantId(), false);
        b.c(parcel, 8, turnBasedMatchEntity.getStatus());
        b.c(parcel, 10, turnBasedMatchEntity.getVariant());
        b.c(parcel, 11, turnBasedMatchEntity.getVersion());
        b.a(parcel, 12, turnBasedMatchEntity.getData(), false);
        b.c(parcel, 13, turnBasedMatchEntity.getParticipants(), false);
        b.a(parcel, 14, turnBasedMatchEntity.getRematchId(), false);
        b.a(parcel, 15, turnBasedMatchEntity.getPreviousMatchData(), false);
        b.a(parcel, 17, turnBasedMatchEntity.getAutoMatchCriteria(), false);
        b.c(parcel, 16, turnBasedMatchEntity.getMatchNumber());
        b.c(parcel, 1000, turnBasedMatchEntity.getVersionCode());
        b.a(parcel, 19, turnBasedMatchEntity.isLocallyModified());
        b.c(parcel, 18, turnBasedMatchEntity.getTurnStatus());
        b.a(parcel, 21, turnBasedMatchEntity.getDescriptionParticipantId(), false);
        b.a(parcel, 20, turnBasedMatchEntity.getDescription(), false);
        b.H(parcel, n2);
    }

    @Override
    public TurnBasedMatchEntity createFromParcel(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        GameEntity gameEntity = null;
        String string = null;
        String string2 = null;
        long l = 0;
        String string3 = null;
        long l2 = 0;
        String string4 = null;
        int n3 = 0;
        int n4 = 0;
        int n5 = 0;
        Object object = null;
        ArrayList<ParticipantEntity> arrayList = null;
        String string5 = null;
        Object object2 = null;
        int n6 = 0;
        Bundle bundle = null;
        int n7 = 0;
        boolean bl = false;
        String string6 = null;
        String string7 = null;
        block23 : while (parcel.dataPosition() < n) {
            int n8 = a.B(parcel);
            switch (a.aD(n8)) {
                default: {
                    a.b(parcel, n8);
                    continue block23;
                }
                case 1: {
                    gameEntity = a.a(parcel, n8, GameEntity.CREATOR);
                    continue block23;
                }
                case 2: {
                    string = a.o(parcel, n8);
                    continue block23;
                }
                case 3: {
                    string2 = a.o(parcel, n8);
                    continue block23;
                }
                case 4: {
                    l = a.i(parcel, n8);
                    continue block23;
                }
                case 5: {
                    string3 = a.o(parcel, n8);
                    continue block23;
                }
                case 6: {
                    l2 = a.i(parcel, n8);
                    continue block23;
                }
                case 7: {
                    string4 = a.o(parcel, n8);
                    continue block23;
                }
                case 8: {
                    n3 = a.g(parcel, n8);
                    continue block23;
                }
                case 10: {
                    n4 = a.g(parcel, n8);
                    continue block23;
                }
                case 11: {
                    n5 = a.g(parcel, n8);
                    continue block23;
                }
                case 12: {
                    object = a.r(parcel, n8);
                    continue block23;
                }
                case 13: {
                    arrayList = a.c(parcel, n8, ParticipantEntity.CREATOR);
                    continue block23;
                }
                case 14: {
                    string5 = a.o(parcel, n8);
                    continue block23;
                }
                case 15: {
                    object2 = a.r(parcel, n8);
                    continue block23;
                }
                case 17: {
                    bundle = a.q(parcel, n8);
                    continue block23;
                }
                case 16: {
                    n6 = a.g(parcel, n8);
                    continue block23;
                }
                case 1000: {
                    n2 = a.g(parcel, n8);
                    continue block23;
                }
                case 19: {
                    bl = a.c(parcel, n8);
                    continue block23;
                }
                case 18: {
                    n7 = a.g(parcel, n8);
                    continue block23;
                }
                case 21: {
                    string7 = a.o(parcel, n8);
                    continue block23;
                }
                case 20: 
            }
            string6 = a.o(parcel, n8);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new TurnBasedMatchEntity(n2, gameEntity, string, string2, l, string3, l2, string4, n3, n4, n5, (byte[])object, arrayList, string5, (byte[])object2, n6, bundle, n7, bl, string6, string7);
    }

    public TurnBasedMatchEntity[] newArray(int n) {
        return new TurnBasedMatchEntity[n];
    }
}

