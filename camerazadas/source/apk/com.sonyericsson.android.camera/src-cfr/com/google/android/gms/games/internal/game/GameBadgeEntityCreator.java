/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.internal.game.GameBadgeEntity;

public class GameBadgeEntityCreator
implements Parcelable.Creator<GameBadgeEntity> {
    static void a(GameBadgeEntity gameBadgeEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, gameBadgeEntity.getType());
        b.c(parcel, 1000, gameBadgeEntity.getVersionCode());
        b.a(parcel, 2, gameBadgeEntity.getTitle(), false);
        b.a(parcel, 3, gameBadgeEntity.getDescription(), false);
        b.a(parcel, 4, gameBadgeEntity.getIconImageUri(), n, false);
        b.H(parcel, n2);
    }

    public GameBadgeEntity ch(Parcel parcel) {
        int n = 0;
        Uri uri = null;
        int n2 = a.C(parcel);
        String string = null;
        String string2 = null;
        int n3 = 0;
        block7 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block7;
                }
                case 1: {
                    n = a.g(parcel, n4);
                    continue block7;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block7;
                }
                case 2: {
                    string2 = a.o(parcel, n4);
                    continue block7;
                }
                case 3: {
                    string = a.o(parcel, n4);
                    continue block7;
                }
                case 4: 
            }
            uri = a.a(parcel, n4, Uri.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new GameBadgeEntity(n3, n, string2, string, uri);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ch(parcel);
    }

    public GameBadgeEntity[] dL(int n) {
        return new GameBadgeEntity[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dL(n);
    }
}

