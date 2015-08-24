/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.achievement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.achievement.AchievementEntity;

/*
 * Exception performing whole class analysis ignored.
 */
public class AchievementEntityCreator
implements Parcelable.Creator<AchievementEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    public AchievementEntityCreator();

    static void a(AchievementEntity var0, Parcel var1, int var2);

    @Override
    public AchievementEntity createFromParcel(Parcel var1);

    public AchievementEntity[] newArray(int var1);
}

