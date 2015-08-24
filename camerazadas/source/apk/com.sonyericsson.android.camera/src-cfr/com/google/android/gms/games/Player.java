/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.PlayerLevelInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;

public interface Player
extends Parcelable,
Freezable<Player> {
    public static final long CURRENT_XP_UNKNOWN = -1;
    public static final long TIMESTAMP_UNKNOWN = -1;

    public String getDisplayName();

    public void getDisplayName(CharArrayBuffer var1);

    public Uri getHiResImageUri();

    @Deprecated
    public String getHiResImageUrl();

    public Uri getIconImageUri();

    @Deprecated
    public String getIconImageUrl();

    public long getLastPlayedWithTimestamp();

    public PlayerLevelInfo getLevelInfo();

    public String getPlayerId();

    public long getRetrievedTimestamp();

    public String getTitle();

    public void getTitle(CharArrayBuffer var1);

    public boolean hasHiResImage();

    public boolean hasIconImage();

    public boolean isProfileVisible();

    public int jU();

    public MostRecentGameInfo jV();
}

