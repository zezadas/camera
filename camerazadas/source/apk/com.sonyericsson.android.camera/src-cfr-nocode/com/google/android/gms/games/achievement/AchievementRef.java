/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.achievement;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.achievement.Achievement;

public final class AchievementRef
extends d
implements Achievement {
    AchievementRef(DataHolder var1, int var2);

    @Override
    public int describeContents();

    @Override
    public Achievement freeze();

    @Override
    public String getAchievementId();

    @Override
    public int getCurrentSteps();

    @Override
    public String getDescription();

    @Override
    public void getDescription(CharArrayBuffer var1);

    @Override
    public String getFormattedCurrentSteps();

    @Override
    public void getFormattedCurrentSteps(CharArrayBuffer var1);

    @Override
    public String getFormattedTotalSteps();

    @Override
    public void getFormattedTotalSteps(CharArrayBuffer var1);

    @Override
    public long getLastUpdatedTimestamp();

    @Override
    public String getName();

    @Override
    public void getName(CharArrayBuffer var1);

    @Override
    public Player getPlayer();

    @Override
    public Uri getRevealedImageUri();

    @Override
    public String getRevealedImageUrl();

    @Override
    public int getState();

    @Override
    public int getTotalSteps();

    @Override
    public int getType();

    @Override
    public Uri getUnlockedImageUri();

    @Override
    public String getUnlockedImageUrl();

    @Override
    public long getXpValue();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

