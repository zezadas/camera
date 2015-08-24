/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntityCreator;
import com.google.android.gms.internal.jv;

public final class SnapshotMetadataEntity
implements SafeParcelable,
SnapshotMetadata {
    public static final SnapshotMetadataEntityCreator CREATOR = new SnapshotMetadataEntityCreator();
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

    SnapshotMetadataEntity(int n, GameEntity gameEntity, PlayerEntity playerEntity, String string, Uri uri, String string2, String string3, String string4, long l, long l2, float f, String string5) {
        this.BR = n;
        this.aay = gameEntity;
        this.ado = playerEntity;
        this.WI = string;
        this.adk = uri;
        this.adp = string2;
        this.ads = f;
        this.Nw = string3;
        this.Tr = string4;
        this.adq = l;
        this.adr = l2;
        this.adt = string5;
    }

    public SnapshotMetadataEntity(SnapshotMetadata snapshotMetadata) {
        this.BR = 3;
        this.aay = new GameEntity(snapshotMetadata.getGame());
        this.ado = new PlayerEntity(snapshotMetadata.getOwner());
        this.WI = snapshotMetadata.getSnapshotId();
        this.adk = snapshotMetadata.getCoverImageUri();
        this.adp = snapshotMetadata.getCoverImageUrl();
        this.ads = snapshotMetadata.getCoverImageAspectRatio();
        this.Nw = snapshotMetadata.getTitle();
        this.Tr = snapshotMetadata.getDescription();
        this.adq = snapshotMetadata.getLastModifiedTimestamp();
        this.adr = snapshotMetadata.getPlayedTime();
        this.adt = snapshotMetadata.getUniqueName();
    }

    static int a(SnapshotMetadata snapshotMetadata) {
        return n.hashCode(snapshotMetadata.getGame(), snapshotMetadata.getOwner(), snapshotMetadata.getSnapshotId(), snapshotMetadata.getCoverImageUri(), Float.valueOf(snapshotMetadata.getCoverImageAspectRatio()), snapshotMetadata.getTitle(), snapshotMetadata.getDescription(), snapshotMetadata.getLastModifiedTimestamp(), snapshotMetadata.getPlayedTime(), snapshotMetadata.getUniqueName());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(SnapshotMetadata snapshotMetadata, Object object) {
        boolean bl = true;
        if (!(object instanceof SnapshotMetadata)) {
            return false;
        }
        boolean bl2 = bl;
        if (snapshotMetadata == object) return bl2;
        if (!n.equal((object = (SnapshotMetadata)object).getGame(), snapshotMetadata.getGame())) return false;
        if (!n.equal(object.getOwner(), snapshotMetadata.getOwner())) return false;
        if (!n.equal(object.getSnapshotId(), snapshotMetadata.getSnapshotId())) return false;
        if (!n.equal(object.getCoverImageUri(), snapshotMetadata.getCoverImageUri())) return false;
        if (!n.equal(Float.valueOf(object.getCoverImageAspectRatio()), Float.valueOf(snapshotMetadata.getCoverImageAspectRatio()))) return false;
        if (!n.equal(object.getTitle(), snapshotMetadata.getTitle())) return false;
        if (!n.equal(object.getDescription(), snapshotMetadata.getDescription())) return false;
        if (!n.equal(object.getLastModifiedTimestamp(), snapshotMetadata.getLastModifiedTimestamp())) return false;
        if (!n.equal(object.getPlayedTime(), snapshotMetadata.getPlayedTime())) return false;
        bl2 = bl;
        if (n.equal(object.getUniqueName(), snapshotMetadata.getUniqueName())) return bl2;
        return false;
    }

    static String b(SnapshotMetadata snapshotMetadata) {
        return n.h(snapshotMetadata).a("Game", snapshotMetadata.getGame()).a("Owner", snapshotMetadata.getOwner()).a("SnapshotId", snapshotMetadata.getSnapshotId()).a("CoverImageUri", snapshotMetadata.getCoverImageUri()).a("CoverImageUrl", snapshotMetadata.getCoverImageUrl()).a("CoverImageAspectRatio", Float.valueOf(snapshotMetadata.getCoverImageAspectRatio())).a("Description", snapshotMetadata.getDescription()).a("LastModifiedTimestamp", snapshotMetadata.getLastModifiedTimestamp()).a("PlayedTime", snapshotMetadata.getPlayedTime()).a("UniqueName", snapshotMetadata.getUniqueName()).toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return SnapshotMetadataEntity.a(this, object);
    }

    @Override
    public SnapshotMetadata freeze() {
        return this;
    }

    @Override
    public float getCoverImageAspectRatio() {
        return this.ads;
    }

    @Override
    public Uri getCoverImageUri() {
        return this.adk;
    }

    @Override
    public String getCoverImageUrl() {
        return this.adp;
    }

    @Override
    public String getDescription() {
        return this.Tr;
    }

    @Override
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        jv.b(this.Tr, charArrayBuffer);
    }

    @Override
    public Game getGame() {
        return this.aay;
    }

    @Override
    public long getLastModifiedTimestamp() {
        return this.adq;
    }

    @Override
    public Player getOwner() {
        return this.ado;
    }

    @Override
    public long getPlayedTime() {
        return this.adr;
    }

    @Override
    public String getSnapshotId() {
        return this.WI;
    }

    @Override
    public String getTitle() {
        return this.Nw;
    }

    @Override
    public String getUniqueName() {
        return this.adt;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return SnapshotMetadataEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return SnapshotMetadataEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        SnapshotMetadataEntityCreator.a(this, parcel, n);
    }
}

