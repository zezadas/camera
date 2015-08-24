/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;

public final class GameRef
extends d
implements Game {
    public GameRef(DataHolder var1, int var2);

    @Override
    public boolean areSnapshotsEnabled();

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public Game freeze();

    @Override
    public int getAchievementTotalCount();

    @Override
    public String getApplicationId();

    @Override
    public String getDescription();

    @Override
    public void getDescription(CharArrayBuffer var1);

    @Override
    public String getDeveloperName();

    @Override
    public void getDeveloperName(CharArrayBuffer var1);

    @Override
    public String getDisplayName();

    @Override
    public void getDisplayName(CharArrayBuffer var1);

    @Override
    public Uri getFeaturedImageUri();

    @Override
    public String getFeaturedImageUrl();

    @Override
    public Uri getHiResImageUri();

    @Override
    public String getHiResImageUrl();

    @Override
    public Uri getIconImageUri();

    @Override
    public String getIconImageUrl();

    @Override
    public int getLeaderboardCount();

    @Override
    public String getPrimaryCategory();

    @Override
    public String getSecondaryCategory();

    @Override
    public String getThemeColor();

    @Override
    public int hashCode();

    @Override
    public boolean isMuted();

    @Override
    public boolean isRealTimeMultiplayerEnabled();

    @Override
    public boolean isTurnBasedMultiplayerEnabled();

    @Override
    public boolean jO();

    @Override
    public boolean jP();

    @Override
    public boolean jQ();

    @Override
    public String jR();

    @Override
    public int jS();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

