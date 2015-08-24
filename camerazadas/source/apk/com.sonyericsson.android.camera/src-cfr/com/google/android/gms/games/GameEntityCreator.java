/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.GameEntity;

public class GameEntityCreator
implements Parcelable.Creator<GameEntity> {
    static void a(GameEntity gameEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, gameEntity.getApplicationId(), false);
        b.a(parcel, 2, gameEntity.getDisplayName(), false);
        b.a(parcel, 3, gameEntity.getPrimaryCategory(), false);
        b.a(parcel, 4, gameEntity.getSecondaryCategory(), false);
        b.a(parcel, 5, gameEntity.getDescription(), false);
        b.a(parcel, 6, gameEntity.getDeveloperName(), false);
        b.a(parcel, 7, gameEntity.getIconImageUri(), n, false);
        b.a(parcel, 8, gameEntity.getHiResImageUri(), n, false);
        b.a(parcel, 9, gameEntity.getFeaturedImageUri(), n, false);
        b.a(parcel, 10, gameEntity.jO());
        b.a(parcel, 11, gameEntity.jQ());
        b.a(parcel, 12, gameEntity.jR(), false);
        b.c(parcel, 13, gameEntity.jS());
        b.c(parcel, 14, gameEntity.getAchievementTotalCount());
        b.c(parcel, 15, gameEntity.getLeaderboardCount());
        b.a(parcel, 17, gameEntity.isTurnBasedMultiplayerEnabled());
        b.a(parcel, 16, gameEntity.isRealTimeMultiplayerEnabled());
        b.c(parcel, 1000, gameEntity.getVersionCode());
        b.a(parcel, 19, gameEntity.getHiResImageUrl(), false);
        b.a(parcel, 18, gameEntity.getIconImageUrl(), false);
        b.a(parcel, 21, gameEntity.isMuted());
        b.a(parcel, 20, gameEntity.getFeaturedImageUrl(), false);
        b.a(parcel, 23, gameEntity.areSnapshotsEnabled());
        b.a(parcel, 22, gameEntity.jP());
        b.a(parcel, 24, gameEntity.getThemeColor(), false);
        b.H(parcel, n2);
    }

    public GameEntity cd(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        String string6 = null;
        Uri uri = null;
        Uri uri2 = null;
        Uri uri3 = null;
        boolean bl = false;
        boolean bl2 = false;
        String string7 = null;
        int n3 = 0;
        int n4 = 0;
        int n5 = 0;
        boolean bl3 = false;
        boolean bl4 = false;
        String string8 = null;
        String string9 = null;
        String string10 = null;
        boolean bl5 = false;
        boolean bl6 = false;
        boolean bl7 = false;
        String string11 = null;
        block27 : while (parcel.dataPosition() < n) {
            int n6 = a.B(parcel);
            switch (a.aD(n6)) {
                default: {
                    a.b(parcel, n6);
                    continue block27;
                }
                case 1: {
                    string = a.o(parcel, n6);
                    continue block27;
                }
                case 2: {
                    string2 = a.o(parcel, n6);
                    continue block27;
                }
                case 3: {
                    string3 = a.o(parcel, n6);
                    continue block27;
                }
                case 4: {
                    string4 = a.o(parcel, n6);
                    continue block27;
                }
                case 5: {
                    string5 = a.o(parcel, n6);
                    continue block27;
                }
                case 6: {
                    string6 = a.o(parcel, n6);
                    continue block27;
                }
                case 7: {
                    uri = a.a(parcel, n6, Uri.CREATOR);
                    continue block27;
                }
                case 8: {
                    uri2 = a.a(parcel, n6, Uri.CREATOR);
                    continue block27;
                }
                case 9: {
                    uri3 = a.a(parcel, n6, Uri.CREATOR);
                    continue block27;
                }
                case 10: {
                    bl = a.c(parcel, n6);
                    continue block27;
                }
                case 11: {
                    bl2 = a.c(parcel, n6);
                    continue block27;
                }
                case 12: {
                    string7 = a.o(parcel, n6);
                    continue block27;
                }
                case 13: {
                    n3 = a.g(parcel, n6);
                    continue block27;
                }
                case 14: {
                    n4 = a.g(parcel, n6);
                    continue block27;
                }
                case 15: {
                    n5 = a.g(parcel, n6);
                    continue block27;
                }
                case 17: {
                    bl4 = a.c(parcel, n6);
                    continue block27;
                }
                case 16: {
                    bl3 = a.c(parcel, n6);
                    continue block27;
                }
                case 1000: {
                    n2 = a.g(parcel, n6);
                    continue block27;
                }
                case 19: {
                    string9 = a.o(parcel, n6);
                    continue block27;
                }
                case 18: {
                    string8 = a.o(parcel, n6);
                    continue block27;
                }
                case 21: {
                    bl5 = a.c(parcel, n6);
                    continue block27;
                }
                case 20: {
                    string10 = a.o(parcel, n6);
                    continue block27;
                }
                case 23: {
                    bl7 = a.c(parcel, n6);
                    continue block27;
                }
                case 22: {
                    bl6 = a.c(parcel, n6);
                    continue block27;
                }
                case 24: 
            }
            string11 = a.o(parcel, n6);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new GameEntity(n2, string, string2, string3, string4, string5, string6, uri, uri2, uri3, bl, bl2, string7, n3, n4, n5, bl3, bl4, string8, string9, string10, bl5, bl6, bl7, string11);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cd(parcel);
    }

    public GameEntity[] dv(int n) {
        return new GameEntity[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dv(n);
    }
}

