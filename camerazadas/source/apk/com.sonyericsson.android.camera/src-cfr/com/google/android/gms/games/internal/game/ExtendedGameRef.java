/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.internal.game.ExtendedGame;
import com.google.android.gms.games.internal.game.ExtendedGameEntity;
import com.google.android.gms.games.internal.game.GameBadge;
import com.google.android.gms.games.internal.game.GameBadgeRef;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataRef;
import java.util.ArrayList;

public class ExtendedGameRef
extends d
implements ExtendedGame {
    private final SnapshotMetadataRef aaJ;
    private final int aaK;
    private final GameRef aax;

    ExtendedGameRef(DataHolder dataHolder, int n, int n2) {
        super(dataHolder, n);
        this.aax = new GameRef(dataHolder, n);
        this.aaK = n2;
        if (this.aQ("external_snapshot_id") && !this.aS("external_snapshot_id")) {
            this.aaJ = new SnapshotMetadataRef(dataHolder, n);
            return;
        }
        this.aaJ = null;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return ExtendedGameEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.lc();
    }

    @Override
    public Game getGame() {
        return this.aax;
    }

    @Override
    public int hashCode() {
        return ExtendedGameEntity.a(this);
    }

    @Override
    public ArrayList<GameBadge> kR() {
        if (this.II.c("badge_title", this.JX, this.II.ar(this.JX)) == null) {
            return new ArrayList<GameBadge>(0);
        }
        ArrayList<GameBadge> arrayList = new ArrayList<GameBadge>(this.aaK);
        for (int i = 0; i < this.aaK; ++i) {
            arrayList.add(new GameBadgeRef(this.II, this.JX + i));
        }
        return arrayList;
    }

    @Override
    public int kS() {
        return this.getInteger("availability");
    }

    @Override
    public boolean kT() {
        return this.getBoolean("owned");
    }

    @Override
    public int kU() {
        return this.getInteger("achievement_unlocked_count");
    }

    @Override
    public long kV() {
        return this.getLong("last_played_server_time");
    }

    @Override
    public long kW() {
        return this.getLong("price_micros");
    }

    @Override
    public String kX() {
        return this.getString("formatted_price");
    }

    @Override
    public long kY() {
        return this.getLong("full_price_micros");
    }

    @Override
    public String kZ() {
        return this.getString("formatted_full_price");
    }

    @Override
    public SnapshotMetadata la() {
        return this.aaJ;
    }

    public ExtendedGame lc() {
        return new ExtendedGameEntity(this);
    }

    public String toString() {
        return ExtendedGameEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((ExtendedGameEntity)this.lc()).writeToParcel(parcel, n);
    }
}

