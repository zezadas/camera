/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntityCreator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class SnapshotMetadataEntity
implements SafeParcelable,
SnapshotMetadata {
    public static final SnapshotMetadataEntityCreator CREATOR;
    private final int BR;
    private final String Nw;
    private final String Tr;
    private final String WI;
    private final GameEntity aay;
    private final Uri adk;
    private final PlayerEntity ado;
    private final String adp;
    private final long adq;
    private final long adr;
    private final float ads;
    private final String adt;

    static;

    SnapshotMetadataEntity(int var1, GameEntity var2, PlayerEntity var3, String var4, Uri var5, String var6, String var7, String var8, long var9, long var11, float var13, String var14);

    public SnapshotMetadataEntity(SnapshotMetadata var1);

    static int a(SnapshotMetadata var0);

    static boolean a(SnapshotMetadata var0, Object var1);

    static String b(SnapshotMetadata var0);

    @Override
    public int describeContents();

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

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isDataValid();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

