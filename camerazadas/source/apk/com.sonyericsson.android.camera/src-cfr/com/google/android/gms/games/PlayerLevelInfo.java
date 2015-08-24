/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.PlayerLevel;
import com.google.android.gms.games.PlayerLevelInfoCreator;

public final class PlayerLevelInfo
implements SafeParcelable {
    public static final PlayerLevelInfoCreator CREATOR = new PlayerLevelInfoCreator();
    private final int BR;
    private final long VU;
    private final long VV;
    private final PlayerLevel VW;
    private final PlayerLevel VX;

    /*
     * Enabled aggressive block sorting
     */
    PlayerLevelInfo(int n, long l, long l2, PlayerLevel playerLevel, PlayerLevel playerLevel2) {
        boolean bl = l != -1;
        o.I(bl);
        o.i(playerLevel);
        o.i(playerLevel2);
        this.BR = n;
        this.VU = l;
        this.VV = l2;
        this.VW = playerLevel;
        this.VX = playerLevel2;
    }

    public PlayerLevelInfo(long l, long l2, PlayerLevel playerLevel, PlayerLevel playerLevel2) {
        this(1, l, l2, playerLevel, playerLevel2);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        boolean bl = true;
        if (!(object instanceof PlayerLevelInfo)) {
            return false;
        }
        boolean bl2 = bl;
        if (object == this) return bl2;
        object = (PlayerLevelInfo)object;
        if (!n.equal(this.VU, object.VU)) return false;
        if (!n.equal(this.VV, object.VV)) return false;
        if (!n.equal(this.VW, object.VW)) return false;
        bl2 = bl;
        if (n.equal(this.VX, object.VX)) return bl2;
        return false;
    }

    public PlayerLevel getCurrentLevel() {
        return this.VW;
    }

    public long getCurrentXpTotal() {
        return this.VU;
    }

    public long getLastLevelUpTimestamp() {
        return this.VV;
    }

    public PlayerLevel getNextLevel() {
        return this.VX;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.VU, this.VV, this.VW, this.VX);
    }

    public boolean isMaxLevel() {
        return this.VW.equals(this.VX);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        PlayerLevelInfoCreator.a(this, parcel, n);
    }
}

