/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import java.util.ArrayList;

public class RoomEntityCreator
implements Parcelable.Creator<RoomEntity> {
    static void a(RoomEntity roomEntity, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, roomEntity.getRoomId(), false);
        b.c(parcel, 1000, roomEntity.getVersionCode());
        b.a(parcel, 2, roomEntity.getCreatorId(), false);
        b.a(parcel, 3, roomEntity.getCreationTimestamp());
        b.c(parcel, 4, roomEntity.getStatus());
        b.a(parcel, 5, roomEntity.getDescription(), false);
        b.c(parcel, 6, roomEntity.getVariant());
        b.a(parcel, 7, roomEntity.getAutoMatchCriteria(), false);
        b.c(parcel, 8, roomEntity.getParticipants(), false);
        b.c(parcel, 9, roomEntity.getAutoMatchWaitEstimateSeconds());
        b.H(parcel, n);
    }

    public RoomEntity co(Parcel parcel) {
        int n = 0;
        ArrayList<ParticipantEntity> arrayList = null;
        int n2 = a.C(parcel);
        long l = 0;
        Bundle bundle = null;
        int n3 = 0;
        String string = null;
        int n4 = 0;
        String string2 = null;
        String string3 = null;
        int n5 = 0;
        block12 : while (parcel.dataPosition() < n2) {
            int n6 = a.B(parcel);
            switch (a.aD(n6)) {
                default: {
                    a.b(parcel, n6);
                    continue block12;
                }
                case 1: {
                    string3 = a.o(parcel, n6);
                    continue block12;
                }
                case 1000: {
                    n5 = a.g(parcel, n6);
                    continue block12;
                }
                case 2: {
                    string2 = a.o(parcel, n6);
                    continue block12;
                }
                case 3: {
                    l = a.i(parcel, n6);
                    continue block12;
                }
                case 4: {
                    n4 = a.g(parcel, n6);
                    continue block12;
                }
                case 5: {
                    string = a.o(parcel, n6);
                    continue block12;
                }
                case 6: {
                    n3 = a.g(parcel, n6);
                    continue block12;
                }
                case 7: {
                    bundle = a.q(parcel, n6);
                    continue block12;
                }
                case 8: {
                    arrayList = a.c(parcel, n6, ParticipantEntity.CREATOR);
                    continue block12;
                }
                case 9: 
            }
            n = a.g(parcel, n6);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new RoomEntity(n5, string3, string2, l, n4, string, n3, bundle, arrayList, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.co(parcel);
    }

    public RoomEntity[] dV(int n) {
        return new RoomEntity[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dV(n);
    }
}

