/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;

public interface SnapshotMetadata
extends Parcelable,
Freezable<SnapshotMetadata> {
    public static final long PLAYED_TIME_UNKNOWN = -1;

    public float getCoverImageAspectRatio();

    public Uri getCoverImageUri();

    @Deprecated
    public String getCoverImageUrl();

    public String getDescription();

    public void getDescription(CharArrayBuffer var1);

    public Game getGame();

    public long getLastModifiedTimestamp();

    public Player getOwner();

    public long getPlayedTime();

    public String getSnapshotId();

    public String getTitle();

    public String getUniqueName();
}

