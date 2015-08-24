/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.achievement.AchievementEntity;

public class AchievementEntityCreator
implements Parcelable.Creator<AchievementEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(AchievementEntity achievementEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, achievementEntity.getAchievementId(), false);
        b.c(parcel, 2, achievementEntity.getType());
        b.a(parcel, 3, achievementEntity.getName(), false);
        b.a(parcel, 4, achievementEntity.getDescription(), false);
        b.a(parcel, 5, achievementEntity.getUnlockedImageUri(), n, false);
        b.a(parcel, 6, achievementEntity.getUnlockedImageUrl(), false);
        b.a(parcel, 7, achievementEntity.getRevealedImageUri(), n, false);
        b.a(parcel, 8, achievementEntity.getRevealedImageUrl(), false);
        b.c(parcel, 9, achievementEntity.getTotalSteps());
        b.a(parcel, 10, achievementEntity.getFormattedTotalSteps(), false);
        b.a(parcel, 11, achievementEntity.getPlayer(), n, false);
        b.c(parcel, 12, achievementEntity.getState());
        b.c(parcel, 13, achievementEntity.getCurrentSteps());
        b.a(parcel, 14, achievementEntity.getFormattedCurrentSteps(), false);
        b.a(parcel, 15, achievementEntity.getLastUpdatedTimestamp());
        b.a(parcel, 16, achievementEntity.getXpValue());
        b.c(parcel, 1000, achievementEntity.getVersionCode());
        b.H(parcel, n2);
    }

    @Override
    public AchievementEntity createFromParcel(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        int n3 = 0;
        String string2 = null;
        String string3 = null;
        Uri uri = null;
        String string4 = null;
        Uri uri2 = null;
        String string5 = null;
        int n4 = 0;
        String string6 = null;
        PlayerEntity playerEntity = null;
        int n5 = 0;
        int n6 = 0;
        String string7 = null;
        long l = 0;
        long l2 = 0;
        block19 : while (parcel.dataPosition() < n) {
            int n7 = a.B(parcel);
            switch (a.aD(n7)) {
                default: {
                    a.b(parcel, n7);
                    continue block19;
                }
                case 1: {
                    string = a.o(parcel, n7);
                    continue block19;
                }
                case 2: {
                    n3 = a.g(parcel, n7);
                    continue block19;
                }
                case 3: {
                    string2 = a.o(parcel, n7);
                    continue block19;
                }
                case 4: {
                    string3 = a.o(parcel, n7);
                    continue block19;
                }
                case 5: {
                    uri = a.a(parcel, n7, Uri.CREATOR);
                    continue block19;
                }
                case 6: {
                    string4 = a.o(parcel, n7);
                    continue block19;
                }
                case 7: {
                    uri2 = a.a(parcel, n7, Uri.CREATOR);
                    continue block19;
                }
                case 8: {
                    string5 = a.o(parcel, n7);
                    continue block19;
                }
                case 9: {
                    n4 = a.g(parcel, n7);
                    continue block19;
                }
                case 10: {
                    string6 = a.o(parcel, n7);
                    continue block19;
                }
                case 11: {
                    playerEntity = a.a(parcel, n7, PlayerEntity.CREATOR);
                    continue block19;
                }
                case 12: {
                    n5 = a.g(parcel, n7);
                    continue block19;
                }
                case 13: {
                    n6 = a.g(parcel, n7);
                    continue block19;
                }
                case 14: {
                    string7 = a.o(parcel, n7);
                    continue block19;
                }
                case 15: {
                    l = a.i(parcel, n7);
                    continue block19;
                }
                case 16: {
                    l2 = a.i(parcel, n7);
                    continue block19;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n7);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new AchievementEntity(n2, string, n3, string2, string3, uri, string4, uri2, string5, n4, string6, playerEntity, n5, n6, string7, l, l2);
    }

    public AchievementEntity[] newArray(int n) {
        return new AchievementEntity[n];
    }
}

