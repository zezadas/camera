/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.PlayerLevel;
import com.google.android.gms.games.PlayerLevelInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoRef;
import com.google.android.gms.games.internal.player.PlayerColumnNames;

public final class PlayerRef
extends d
implements Player {
    private final PlayerLevelInfo VP;
    private final PlayerColumnNames VY;
    private final MostRecentGameInfoRef VZ;

    public PlayerRef(DataHolder dataHolder, int n) {
        this(dataHolder, n, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public PlayerRef(DataHolder object, int n, String object2) {
        super((DataHolder)object, n);
        this.VY = new PlayerColumnNames((String)object2);
        this.VZ = new MostRecentGameInfoRef((DataHolder)object, n, this.VY);
        if (!this.jW()) {
            this.VP = null;
            return;
        }
        n = this.getInteger(this.VY.abc);
        int n2 = this.getInteger(this.VY.abf);
        object2 = new PlayerLevel(n, this.getLong(this.VY.abd), this.getLong(this.VY.abe));
        object = n != n2 ? new PlayerLevel(n2, this.getLong(this.VY.abe), this.getLong(this.VY.abg)) : object2;
        this.VP = new PlayerLevelInfo(this.getLong(this.VY.abb), this.getLong(this.VY.abh), (PlayerLevel)object2, (PlayerLevel)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean jW() {
        if (this.aS(this.VY.abb) || this.getLong(this.VY.abb) == -1) {
            return false;
        }
        return true;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return PlayerEntity.a(this, object);
    }

    @Override
    public Player freeze() {
        return new PlayerEntity(this);
    }

    @Override
    public String getDisplayName() {
        return this.getString(this.VY.aaT);
    }

    @Override
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        this.a(this.VY.aaT, charArrayBuffer);
    }

    @Override
    public Uri getHiResImageUri() {
        return this.aR(this.VY.aaW);
    }

    @Override
    public String getHiResImageUrl() {
        return this.getString(this.VY.aaX);
    }

    @Override
    public Uri getIconImageUri() {
        return this.aR(this.VY.aaU);
    }

    @Override
    public String getIconImageUrl() {
        return this.getString(this.VY.aaV);
    }

    @Override
    public long getLastPlayedWithTimestamp() {
        if (!this.aQ(this.VY.aba) || this.aS(this.VY.aba)) {
            return -1;
        }
        return this.getLong(this.VY.aba);
    }

    @Override
    public PlayerLevelInfo getLevelInfo() {
        return this.VP;
    }

    @Override
    public String getPlayerId() {
        return this.getString(this.VY.aaS);
    }

    @Override
    public long getRetrievedTimestamp() {
        return this.getLong(this.VY.aaY);
    }

    @Override
    public String getTitle() {
        return this.getString(this.VY.abi);
    }

    @Override
    public void getTitle(CharArrayBuffer charArrayBuffer) {
        this.a(this.VY.abi, charArrayBuffer);
    }

    @Override
    public boolean hasHiResImage() {
        if (this.getHiResImageUri() != null) {
            return true;
        }
        return false;
    }

    @Override
    public boolean hasIconImage() {
        if (this.getIconImageUri() != null) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        return PlayerEntity.b(this);
    }

    @Override
    public boolean isProfileVisible() {
        return this.getBoolean(this.VY.abk);
    }

    @Override
    public int jU() {
        return this.getInteger(this.VY.aaZ);
    }

    @Override
    public MostRecentGameInfo jV() {
        if (this.aS(this.VY.abl)) {
            return null;
        }
        return this.VZ;
    }

    public String toString() {
        return PlayerEntity.c(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((PlayerEntity)this.freeze()).writeToParcel(parcel, n);
    }
}

