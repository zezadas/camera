/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.ParticipantResultCreator;

public class ParticipantEntityCreator
implements Parcelable.Creator<ParticipantEntity> {
    static void a(ParticipantEntity participantEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, participantEntity.getParticipantId(), false);
        b.c(parcel, 1000, participantEntity.getVersionCode());
        b.a(parcel, 2, participantEntity.getDisplayName(), false);
        b.a(parcel, 3, participantEntity.getIconImageUri(), n, false);
        b.a(parcel, 4, participantEntity.getHiResImageUri(), n, false);
        b.c(parcel, 5, participantEntity.getStatus());
        b.a(parcel, 6, participantEntity.jX(), false);
        b.a(parcel, 7, participantEntity.isConnectedToRoom());
        b.a(parcel, 8, participantEntity.getPlayer(), n, false);
        b.c(parcel, 9, participantEntity.getCapabilities());
        b.a(parcel, 10, participantEntity.getResult(), n, false);
        b.a(parcel, 11, participantEntity.getIconImageUrl(), false);
        b.a(parcel, 12, participantEntity.getHiResImageUrl(), false);
        b.H(parcel, n2);
    }

    public ParticipantEntity cm(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        Uri uri = null;
        Uri uri2 = null;
        int n3 = 0;
        String string3 = null;
        boolean bl = false;
        PlayerEntity playerEntity = null;
        int n4 = 0;
        ParticipantResult participantResult = null;
        String string4 = null;
        String string5 = null;
        block15 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block15;
                }
                case 1: {
                    string = a.o(parcel, n5);
                    continue block15;
                }
                case 1000: {
                    n2 = a.g(parcel, n5);
                    continue block15;
                }
                case 2: {
                    string2 = a.o(parcel, n5);
                    continue block15;
                }
                case 3: {
                    uri = a.a(parcel, n5, Uri.CREATOR);
                    continue block15;
                }
                case 4: {
                    uri2 = a.a(parcel, n5, Uri.CREATOR);
                    continue block15;
                }
                case 5: {
                    n3 = a.g(parcel, n5);
                    continue block15;
                }
                case 6: {
                    string3 = a.o(parcel, n5);
                    continue block15;
                }
                case 7: {
                    bl = a.c(parcel, n5);
                    continue block15;
                }
                case 8: {
                    playerEntity = a.a(parcel, n5, PlayerEntity.CREATOR);
                    continue block15;
                }
                case 9: {
                    n4 = a.g(parcel, n5);
                    continue block15;
                }
                case 10: {
                    participantResult = (ParticipantResult)a.a(parcel, n5, ParticipantResult.CREATOR);
                    continue block15;
                }
                case 11: {
                    string4 = a.o(parcel, n5);
                    continue block15;
                }
                case 12: 
            }
            string5 = a.o(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ParticipantEntity(n2, string, string2, uri, uri2, n3, string3, bl, playerEntity, n4, participantResult, string4, string5);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cm(parcel);
    }

    public ParticipantEntity[] dT(int n) {
        return new ParticipantEntity[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dT(n);
    }
}

