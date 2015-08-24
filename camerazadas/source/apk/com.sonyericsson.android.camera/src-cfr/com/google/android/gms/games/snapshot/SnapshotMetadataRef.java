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
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;

public final class SnapshotMetadataRef
extends d
implements SnapshotMetadata {
    private final Game abx;
    private final Player adu;

    public SnapshotMetadataRef(DataHolder dataHolder, int n) {
        super(dataHolder, n);
        this.abx = new GameRef(dataHolder, n);
        this.adu = new PlayerRef(dataHolder, n);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return SnapshotMetadataEntity.a(this, object);
    }

    @Override
    public SnapshotMetadata freeze() {
        return new SnapshotMetadataEntity(this);
    }

    @Override
    public float getCoverImageAspectRatio() {
        float f = this.getFloat("cover_icon_image_height");
        float f2 = this.getFloat("cover_icon_image_width");
        if (f == 0.0f) {
            return 0.0f;
        }
        return f2 / f;
    }

    @Override
    public Uri getCoverImageUri() {
        return this.aR("cover_icon_image_uri");
    }

    @Override
    public String getCoverImageUrl() {
        return this.getString("cover_icon_image_url");
    }

    @Override
    public String getDescription() {
        return this.getString("description");
    }

    @Override
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        this.a("description", charArrayBuffer);
    }

    @Override
    public Game getGame() {
        return this.abx;
    }

    @Override
    public long getLastModifiedTimestamp() {
        return this.getLong("last_modified_timestamp");
    }

    @Override
    public Player getOwner() {
        return this.adu;
    }

    @Override
    public long getPlayedTime() {
        return this.getLong("duration");
    }

    @Override
    public String getSnapshotId() {
        return this.getString("external_snapshot_id");
    }

    @Override
    public String getTitle() {
        return this.getString("title");
    }

    @Override
    public String getUniqueName() {
        return this.getString("unique_name");
    }

    @Override
    public int hashCode() {
        return SnapshotMetadataEntity.a(this);
    }

    public String toString() {
        return SnapshotMetadataEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((SnapshotMetadataEntity)this.freeze()).writeToParcel(parcel, n);
    }
}

