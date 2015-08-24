/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.PlayerLevel;
import com.google.android.gms.games.PlayerLevelCreator;
import com.google.android.gms.games.PlayerLevelInfo;

public class PlayerLevelInfoCreator
implements Parcelable.Creator<PlayerLevelInfo> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(PlayerLevelInfo playerLevelInfo, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, playerLevelInfo.getCurrentXpTotal());
        b.c(parcel, 1000, playerLevelInfo.getVersionCode());
        b.a(parcel, 2, playerLevelInfo.getLastLevelUpTimestamp());
        b.a(parcel, 3, playerLevelInfo.getCurrentLevel(), n, false);
        b.a(parcel, 4, playerLevelInfo.getNextLevel(), n, false);
        b.H(parcel, n2);
    }

    @Override
    public PlayerLevelInfo createFromParcel(Parcel parcel) {
        long l = 0;
        PlayerLevel playerLevel = null;
        int n = a.C(parcel);
        int n2 = 0;
        PlayerLevel playerLevel2 = null;
        long l2 = 0;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block7;
                }
                case 1: {
                    l2 = a.i(parcel, n3);
                    continue block7;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block7;
                }
                case 2: {
                    l = a.i(parcel, n3);
                    continue block7;
                }
                case 3: {
                    playerLevel2 = (PlayerLevel)a.a(parcel, n3, PlayerLevel.CREATOR);
                    continue block7;
                }
                case 4: 
            }
            playerLevel = (PlayerLevel)a.a(parcel, n3, PlayerLevel.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new PlayerLevelInfo(n2, l2, l, playerLevel2, playerLevel);
    }

    public PlayerLevelInfo[] newArray(int n) {
        return new PlayerLevelInfo[n];
    }
}

