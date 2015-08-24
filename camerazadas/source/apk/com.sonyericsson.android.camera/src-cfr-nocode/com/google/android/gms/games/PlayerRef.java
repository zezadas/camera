/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerLevelInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoRef;
import com.google.android.gms.games.internal.player.PlayerColumnNames;

/*
 * Exception performing whole class analysis.
 */
public final class PlayerRef
extends d
implements Player {
    private final PlayerLevelInfo VP;
    private final PlayerColumnNames VY;
    private final MostRecentGameInfoRef VZ;

    public PlayerRef(DataHolder var1, int var2);

    public PlayerRef(DataHolder var1, int var2, String var3);

    private boolean jW();

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public Player freeze();

    @Override
    public String getDisplayName();

    @Override
    public void getDisplayName(CharArrayBuffer var1);

    @Override
    public Uri getHiResImageUri();

    @Override
    public String getHiResImageUrl();

    @Override
    public Uri getIconImageUri();

    @Override
    public String getIconImageUrl();

    @Override
    public long getLastPlayedWithTimestamp();

    @Override
    public PlayerLevelInfo getLevelInfo();

    @Override
    public String getPlayerId();

    @Override
    public long getRetrievedTimestamp();

    @Override
    public String getTitle();

    @Override
    public void getTitle(CharArrayBuffer var1);

    @Override
    public boolean hasHiResImage();

    @Override
    public boolean hasIconImage();

    @Override
    public int hashCode();

    @Override
    public boolean isProfileVisible();

    @Override
    public int jU();

    @Override
    public MostRecentGameInfo jV();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

