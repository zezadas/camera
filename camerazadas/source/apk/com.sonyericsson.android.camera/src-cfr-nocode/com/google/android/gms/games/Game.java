/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;

public interface Game
extends Parcelable,
Freezable<Game> {
    public boolean areSnapshotsEnabled();

    public int getAchievementTotalCount();

    public String getApplicationId();

    public String getDescription();

    public void getDescription(CharArrayBuffer var1);

    public String getDeveloperName();

    public void getDeveloperName(CharArrayBuffer var1);

    public String getDisplayName();

    public void getDisplayName(CharArrayBuffer var1);

    public Uri getFeaturedImageUri();

    @Deprecated
    public String getFeaturedImageUrl();

    public Uri getHiResImageUri();

    @Deprecated
    public String getHiResImageUrl();

    public Uri getIconImageUri();

    @Deprecated
    public String getIconImageUrl();

    public int getLeaderboardCount();

    public String getPrimaryCategory();

    public String getSecondaryCategory();

    public String getThemeColor();

    public boolean isMuted();

    public boolean isRealTimeMultiplayerEnabled();

    public boolean isTurnBasedMultiplayerEnabled();

    public boolean jO();

    public boolean jP();

    public boolean jQ();

    public String jR();

    public int jS();
}

