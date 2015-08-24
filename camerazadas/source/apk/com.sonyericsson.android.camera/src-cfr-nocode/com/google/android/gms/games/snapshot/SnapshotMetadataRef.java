/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.snapshot.SnapshotMetadata;

/*
 * Exception performing whole class analysis.
 */
public final class SnapshotMetadataRef
extends d
implements SnapshotMetadata {
    private final Game abx;
    private final Player adu;

    public SnapshotMetadataRef(DataHolder var1, int var2);

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public SnapshotMetadata freeze();

    @Override
    public float getCoverImageAspectRatio();

    @Override
    public Uri getCoverImageUri();

    @Override
    public String getCoverImageUrl();

    @Override
    public String getDescription();

    @Override
    public void getDescription(CharArrayBuffer var1);

    @Override
    public Game getGame();

    @Override
    public long getLastModifiedTimestamp();

    @Override
    public Player getOwner();

    @Override
    public long getPlayedTime();

    @Override
    public String getSnapshotId();

    @Override
    public String getTitle();

    @Override
    public String getUniqueName();

    @Override
    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

