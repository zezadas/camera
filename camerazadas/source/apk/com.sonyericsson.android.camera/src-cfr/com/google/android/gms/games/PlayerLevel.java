/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.PlayerLevelCreator;

public final class PlayerLevel
implements SafeParcelable {
    public static final PlayerLevelCreator CREATOR = new PlayerLevelCreator();
    private final int BR;
    private final int VR;
    private final long VS;
    private final long VT;

    /*
     * Enabled aggressive block sorting
     */
    PlayerLevel(int n, int n2, long l, long l2) {
        boolean bl = true;
        boolean bl2 = l >= 0;
        o.a(bl2, "Min XP must be positive!");
        bl2 = l2 > l ? bl : false;
        o.a(bl2, "Max XP must be more than min XP!");
        this.BR = n;
        this.VR = n2;
        this.VS = l;
        this.VT = l2;
    }

    public PlayerLevel(int n, long l, long l2) {
        this(1, n, l, l2);
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
        if (!(object instanceof PlayerLevel)) {
            return false;
        }
        boolean bl2 = bl;
        if (this == object) return bl2;
        if (!n.equal((object = (PlayerLevel)object).getLevelNumber(), this.getLevelNumber())) return false;
        if (!n.equal(object.getMinXp(), this.getMinXp())) return false;
        bl2 = bl;
        if (n.equal(object.getMaxXp(), this.getMaxXp())) return bl2;
        return false;
    }

    public int getLevelNumber() {
        return this.VR;
    }

    public long getMaxXp() {
        return this.VT;
    }

    public long getMinXp() {
        return this.VS;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.VR, this.VS, this.VT);
    }

    public String toString() {
        return n.h(this).a("LevelNumber", this.getLevelNumber()).a("MinXp", this.getMinXp()).a("MaxXp", this.getMaxXp()).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        PlayerLevelCreator.a(this, parcel, n);
    }
}

