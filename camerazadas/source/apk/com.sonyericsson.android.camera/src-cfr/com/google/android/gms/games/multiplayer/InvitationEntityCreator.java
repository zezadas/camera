/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;

public class InvitationEntityCreator
implements Parcelable.Creator<InvitationEntity> {
    static void a(InvitationEntity invitationEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, invitationEntity.getGame(), n, false);
        b.c(parcel, 1000, invitationEntity.getVersionCode());
        b.a(parcel, 2, invitationEntity.getInvitationId(), false);
        b.a(parcel, 3, invitationEntity.getCreationTimestamp());
        b.c(parcel, 4, invitationEntity.getInvitationType());
        b.a(parcel, 5, invitationEntity.getInviter(), n, false);
        b.c(parcel, 6, invitationEntity.getParticipants(), false);
        b.c(parcel, 7, invitationEntity.getVariant());
        b.c(parcel, 8, invitationEntity.getAvailableAutoMatchSlots());
        b.H(parcel, n2);
    }

    public InvitationEntity cl(Parcel parcel) {
        ArrayList<ParticipantEntity> arrayList = null;
        int n = 0;
        int n2 = a.C(parcel);
        long l = 0;
        int n3 = 0;
        ParticipantEntity participantEntity = null;
        int n4 = 0;
        String string = null;
        GameEntity gameEntity = null;
        int n5 = 0;
        block11 : while (parcel.dataPosition() < n2) {
            int n6 = a.B(parcel);
            switch (a.aD(n6)) {
                default: {
                    a.b(parcel, n6);
                    continue block11;
                }
                case 1: {
                    gameEntity = a.a(parcel, n6, GameEntity.CREATOR);
                    continue block11;
                }
                case 1000: {
                    n5 = a.g(parcel, n6);
                    continue block11;
                }
                case 2: {
                    string = a.o(parcel, n6);
                    continue block11;
                }
                case 3: {
                    l = a.i(parcel, n6);
                    continue block11;
                }
                case 4: {
                    n4 = a.g(parcel, n6);
                    continue block11;
                }
                case 5: {
                    participantEntity = a.a(parcel, n6, ParticipantEntity.CREATOR);
                    continue block11;
                }
                case 6: {
                    arrayList = a.c(parcel, n6, ParticipantEntity.CREATOR);
                    continue block11;
                }
                case 7: {
                    n3 = a.g(parcel, n6);
                    continue block11;
                }
                case 8: 
            }
            n = a.g(parcel, n6);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new InvitationEntity(n5, gameEntity, string, l, n4, participantEntity, arrayList, n3, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cl(parcel);
    }

    public InvitationEntity[] dS(int n) {
        return new InvitationEntity[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dS(n);
    }
}

