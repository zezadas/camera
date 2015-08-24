/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.internal.game.GameBadge;
import com.google.android.gms.games.internal.game.GameBadgeEntity;

public final class GameBadgeRef
extends d
implements GameBadge {
    GameBadgeRef(DataHolder dataHolder, int n) {
        super(dataHolder, n);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return GameBadgeEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.ld();
    }

    @Override
    public String getDescription() {
        return this.getString("badge_description");
    }

    @Override
    public Uri getIconImageUri() {
        return this.aR("badge_icon_image_uri");
    }

    @Override
    public String getTitle() {
        return this.getString("badge_title");
    }

    @Override
    public int getType() {
        return this.getInteger("badge_type");
    }

    @Override
    public int hashCode() {
        return GameBadgeEntity.a(this);
    }

    public GameBadge ld() {
        return new GameBadgeEntity(this);
    }

    public String toString() {
        return GameBadgeEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((GameBadgeEntity)this.ld()).writeToParcel(parcel, n);
    }
}

