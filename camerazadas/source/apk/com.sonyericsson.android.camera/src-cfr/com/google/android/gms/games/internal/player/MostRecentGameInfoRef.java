/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;
import com.google.android.gms.games.internal.player.PlayerColumnNames;

public final class MostRecentGameInfoRef
extends d
implements MostRecentGameInfo {
    private final PlayerColumnNames VY;

    public MostRecentGameInfoRef(DataHolder dataHolder, int n, PlayerColumnNames playerColumnNames) {
        super(dataHolder, n);
        this.VY = playerColumnNames;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return MostRecentGameInfoEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.lv();
    }

    @Override
    public int hashCode() {
        return MostRecentGameInfoEntity.a(this);
    }

    @Override
    public String lp() {
        return this.getString(this.VY.abl);
    }

    @Override
    public String lq() {
        return this.getString(this.VY.abm);
    }

    @Override
    public long lr() {
        return this.getLong(this.VY.abn);
    }

    @Override
    public Uri ls() {
        return this.aR(this.VY.abo);
    }

    @Override
    public Uri lt() {
        return this.aR(this.VY.abp);
    }

    @Override
    public Uri lu() {
        return this.aR(this.VY.abq);
    }

    public MostRecentGameInfo lv() {
        return new MostRecentGameInfoEntity(this);
    }

    public String toString() {
        return MostRecentGameInfoEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((MostRecentGameInfoEntity)this.lv()).writeToParcel(parcel, n);
    }
}

