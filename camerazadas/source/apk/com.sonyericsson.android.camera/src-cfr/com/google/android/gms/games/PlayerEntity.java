/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntityCreator;
import com.google.android.gms.games.PlayerLevelInfo;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;
import com.google.android.gms.internal.jv;

public final class PlayerEntity
extends GamesDowngradeableSafeParcel
implements Player {
    public static final Parcelable.Creator<PlayerEntity> CREATOR = new PlayerEntityCreatorCompat();
    private final int BR;
    private final String NH;
    private final String Nw;
    private final String VK;
    private final long VL;
    private final int VM;
    private final long VN;
    private final MostRecentGameInfoEntity VO;
    private final PlayerLevelInfo VP;
    private final boolean VQ;
    private final Uri Vh;
    private final Uri Vi;
    private final String Vs;
    private final String Vt;

    PlayerEntity(int n, String string, String string2, Uri uri, Uri uri2, long l, int n2, long l2, String string3, String string4, String string5, MostRecentGameInfoEntity mostRecentGameInfoEntity, PlayerLevelInfo playerLevelInfo, boolean bl) {
        this.BR = n;
        this.VK = string;
        this.NH = string2;
        this.Vh = uri;
        this.Vs = string3;
        this.Vi = uri2;
        this.Vt = string4;
        this.VL = l;
        this.VM = n2;
        this.VN = l2;
        this.Nw = string5;
        this.VQ = bl;
        this.VO = mostRecentGameInfoEntity;
        this.VP = playerLevelInfo;
    }

    /*
     * Enabled aggressive block sorting
     */
    public PlayerEntity(Player player) {
        this.BR = 11;
        this.VK = player.getPlayerId();
        this.NH = player.getDisplayName();
        this.Vh = player.getIconImageUri();
        this.Vs = player.getIconImageUrl();
        this.Vi = player.getHiResImageUri();
        this.Vt = player.getHiResImageUrl();
        this.VL = player.getRetrievedTimestamp();
        this.VM = player.jU();
        this.VN = player.getLastPlayedWithTimestamp();
        this.Nw = player.getTitle();
        this.VQ = player.isProfileVisible();
        MostRecentGameInfo mostRecentGameInfo = player.jV();
        mostRecentGameInfo = mostRecentGameInfo == null ? null : new MostRecentGameInfoEntity(mostRecentGameInfo);
        this.VO = mostRecentGameInfo;
        this.VP = player.getLevelInfo();
        a.f(this.VK);
        a.f(this.NH);
        boolean bl = this.VL > 0;
        a.I(bl);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(Player player, Object object) {
        boolean bl = true;
        if (!(object instanceof Player)) {
            return false;
        }
        boolean bl2 = bl;
        if (player == object) return bl2;
        if (!n.equal((object = (Player)object).getPlayerId(), player.getPlayerId())) return false;
        if (!n.equal(object.getDisplayName(), player.getDisplayName())) return false;
        if (!n.equal(object.getIconImageUri(), player.getIconImageUri())) return false;
        if (!n.equal(object.getHiResImageUri(), player.getHiResImageUri())) return false;
        if (!n.equal(object.getRetrievedTimestamp(), player.getRetrievedTimestamp())) return false;
        if (!n.equal(object.getTitle(), player.getTitle())) return false;
        bl2 = bl;
        if (n.equal(object.getLevelInfo(), player.getLevelInfo())) return bl2;
        return false;
    }

    static int b(Player player) {
        return n.hashCode(player.getPlayerId(), player.getDisplayName(), player.getIconImageUri(), player.getHiResImageUri(), player.getRetrievedTimestamp(), player.getTitle(), player.getLevelInfo());
    }

    static String c(Player player) {
        return n.h(player).a("PlayerId", player.getPlayerId()).a("DisplayName", player.getDisplayName()).a("IconImageUri", player.getIconImageUri()).a("IconImageUrl", player.getIconImageUrl()).a("HiResImageUri", player.getHiResImageUri()).a("HiResImageUrl", player.getHiResImageUrl()).a("RetrievedTimestamp", player.getRetrievedTimestamp()).a("Title", player.getTitle()).a("LevelInfo", player.getLevelInfo()).toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return PlayerEntity.a(this, object);
    }

    @Override
    public Player freeze() {
        return this;
    }

    @Override
    public String getDisplayName() {
        return this.NH;
    }

    @Override
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        jv.b(this.NH, charArrayBuffer);
    }

    @Override
    public Uri getHiResImageUri() {
        return this.Vi;
    }

    @Override
    public String getHiResImageUrl() {
        return this.Vt;
    }

    @Override
    public Uri getIconImageUri() {
        return this.Vh;
    }

    @Override
    public String getIconImageUrl() {
        return this.Vs;
    }

    @Override
    public long getLastPlayedWithTimestamp() {
        return this.VN;
    }

    @Override
    public PlayerLevelInfo getLevelInfo() {
        return this.VP;
    }

    @Override
    public String getPlayerId() {
        return this.VK;
    }

    @Override
    public long getRetrievedTimestamp() {
        return this.VL;
    }

    @Override
    public String getTitle() {
        return this.Nw;
    }

    @Override
    public void getTitle(CharArrayBuffer charArrayBuffer) {
        jv.b(this.Nw, charArrayBuffer);
    }

    public int getVersionCode() {
        return this.BR;
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

    public int hashCode() {
        return PlayerEntity.b(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    @Override
    public boolean isProfileVisible() {
        return this.VQ;
    }

    @Override
    public int jU() {
        return this.VM;
    }

    @Override
    public MostRecentGameInfo jV() {
        return this.VO;
    }

    public String toString() {
        return PlayerEntity.c(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void writeToParcel(Parcel parcel, int n) {
        Object var4_3 = null;
        if (!this.gQ()) {
            PlayerEntityCreator.a(this, parcel, n);
            return;
        }
        parcel.writeString(this.VK);
        parcel.writeString(this.NH);
        String string = this.Vh == null ? null : this.Vh.toString();
        parcel.writeString(string);
        string = this.Vi == null ? var4_3 : this.Vi.toString();
        parcel.writeString(string);
        parcel.writeLong(this.VL);
    }

    static final class PlayerEntityCreatorCompat
    extends PlayerEntityCreator {
        PlayerEntityCreatorCompat() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public PlayerEntity ce(Parcel parcel) {
            if (PlayerEntity.c(PlayerEntity.gP())) return super.ce(parcel);
            if (PlayerEntity.aV(PlayerEntity.class.getCanonicalName())) {
                return super.ce(parcel);
            }
            String string = parcel.readString();
            String string2 = parcel.readString();
            Object object = parcel.readString();
            Object object2 = parcel.readString();
            object = object == null ? null : Uri.parse((String)object);
            if (object2 == null) {
                object2 = null;
                return new PlayerEntity(11, string, string2, (Uri)object, (Uri)object2, parcel.readLong(), -1, -1, null, null, null, null, null, true);
            }
            object2 = Uri.parse((String)object2);
            return new PlayerEntity(11, string, string2, (Uri)object, (Uri)object2, parcel.readLong(), -1, -1, null, null, null, null, null, true);
        }

        @Override
        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return this.ce(parcel);
        }
    }

}

