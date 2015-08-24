/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.PlayerLevel;

public class PlayerLevelCreator
implements Parcelable.Creator<PlayerLevel> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(PlayerLevel playerLevel, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, playerLevel.getLevelNumber());
        b.c(parcel, 1000, playerLevel.getVersionCode());
        b.a(parcel, 2, playerLevel.getMinXp());
        b.a(parcel, 3, playerLevel.getMaxXp());
        b.H(parcel, n);
    }

    @Override
    public PlayerLevel createFromParcel(Parcel parcel) {
        long l = 0;
        int n = 0;
        int n2 = a.C(parcel);
        long l2 = 0;
        int n3 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block6;
                }
                case 1: {
                    n = a.g(parcel, n4);
                    continue block6;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block6;
                }
                case 2: {
                    l2 = a.i(parcel, n4);
                    continue block6;
                }
                case 3: 
            }
            l = a.i(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new PlayerLevel(n3, n, l2, l);
    }

    public PlayerLevel[] newArray(int n) {
        return new PlayerLevel[n];
    }
}

