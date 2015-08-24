/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntityCreator;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.jv;

public final class GameEntity
extends GamesDowngradeableSafeParcel
implements Game {
    public static final Parcelable.Creator<GameEntity> CREATOR = new GameEntityCreatorCompat();
    private final int BR;
    private final String Ez;
    private final String NH;
    private final String Tr;
    private final String Ve;
    private final String Vf;
    private final String Vg;
    private final Uri Vh;
    private final Uri Vi;
    private final Uri Vj;
    private final boolean Vk;
    private final boolean Vl;
    private final String Vm;
    private final int Vn;
    private final int Vo;
    private final int Vp;
    private final boolean Vq;
    private final boolean Vr;
    private final String Vs;
    private final String Vt;
    private final String Vu;
    private final boolean Vv;
    private final boolean Vw;
    private final boolean Vx;
    private final String Vy;

    GameEntity(int n, String string, String string2, String string3, String string4, String string5, String string6, Uri uri, Uri uri2, Uri uri3, boolean bl, boolean bl2, String string7, int n2, int n3, int n4, boolean bl3, boolean bl4, String string8, String string9, String string10, boolean bl5, boolean bl6, boolean bl7, String string11) {
        this.BR = n;
        this.Ez = string;
        this.NH = string2;
        this.Ve = string3;
        this.Vf = string4;
        this.Tr = string5;
        this.Vg = string6;
        this.Vh = uri;
        this.Vs = string8;
        this.Vi = uri2;
        this.Vt = string9;
        this.Vj = uri3;
        this.Vu = string10;
        this.Vk = bl;
        this.Vl = bl2;
        this.Vm = string7;
        this.Vn = n2;
        this.Vo = n3;
        this.Vp = n4;
        this.Vq = bl3;
        this.Vr = bl4;
        this.Vv = bl5;
        this.Vw = bl6;
        this.Vx = bl7;
        this.Vy = string11;
    }

    public GameEntity(Game game) {
        this.BR = 5;
        this.Ez = game.getApplicationId();
        this.Ve = game.getPrimaryCategory();
        this.Vf = game.getSecondaryCategory();
        this.Tr = game.getDescription();
        this.Vg = game.getDeveloperName();
        this.NH = game.getDisplayName();
        this.Vh = game.getIconImageUri();
        this.Vs = game.getIconImageUrl();
        this.Vi = game.getHiResImageUri();
        this.Vt = game.getHiResImageUrl();
        this.Vj = game.getFeaturedImageUri();
        this.Vu = game.getFeaturedImageUrl();
        this.Vk = game.jO();
        this.Vl = game.jQ();
        this.Vm = game.jR();
        this.Vn = game.jS();
        this.Vo = game.getAchievementTotalCount();
        this.Vp = game.getLeaderboardCount();
        this.Vq = game.isRealTimeMultiplayerEnabled();
        this.Vr = game.isTurnBasedMultiplayerEnabled();
        this.Vv = game.isMuted();
        this.Vw = game.jP();
        this.Vx = game.areSnapshotsEnabled();
        this.Vy = game.getThemeColor();
    }

    static int a(Game game) {
        return n.hashCode(game.getApplicationId(), game.getDisplayName(), game.getPrimaryCategory(), game.getSecondaryCategory(), game.getDescription(), game.getDeveloperName(), game.getIconImageUri(), game.getHiResImageUri(), game.getFeaturedImageUri(), game.jO(), game.jQ(), game.jR(), game.jS(), game.getAchievementTotalCount(), game.getLeaderboardCount(), game.isRealTimeMultiplayerEnabled(), game.isTurnBasedMultiplayerEnabled(), game.isMuted(), game.jP(), game.areSnapshotsEnabled(), game.getThemeColor());
    }

    /*
     * Enabled aggressive block sorting
     */
    static boolean a(Game game, Object object) {
        boolean bl = true;
        if (!(object instanceof Game)) {
            return false;
        }
        boolean bl2 = bl;
        if (game == object) return bl2;
        if (!n.equal((object = (Game)object).getApplicationId(), game.getApplicationId())) return false;
        if (!n.equal(object.getDisplayName(), game.getDisplayName())) return false;
        if (!n.equal(object.getPrimaryCategory(), game.getPrimaryCategory())) return false;
        if (!n.equal(object.getSecondaryCategory(), game.getSecondaryCategory())) return false;
        if (!n.equal(object.getDescription(), game.getDescription())) return false;
        if (!n.equal(object.getDeveloperName(), game.getDeveloperName())) return false;
        if (!n.equal(object.getIconImageUri(), game.getIconImageUri())) return false;
        if (!n.equal(object.getHiResImageUri(), game.getHiResImageUri())) return false;
        if (!n.equal(object.getFeaturedImageUri(), game.getFeaturedImageUri())) return false;
        if (!n.equal(object.jO(), game.jO())) return false;
        if (!n.equal(object.jQ(), game.jQ())) return false;
        if (!n.equal(object.jR(), game.jR())) return false;
        if (!n.equal(object.jS(), game.jS())) return false;
        if (!n.equal(object.getAchievementTotalCount(), game.getAchievementTotalCount())) return false;
        if (!n.equal(object.getLeaderboardCount(), game.getLeaderboardCount())) return false;
        if (!n.equal(object.isRealTimeMultiplayerEnabled(), game.isRealTimeMultiplayerEnabled())) return false;
        boolean bl3 = object.isTurnBasedMultiplayerEnabled();
        bl2 = game.isTurnBasedMultiplayerEnabled() && n.equal(object.isMuted(), game.isMuted()) && n.equal(object.jP(), game.jP());
        if (!n.equal(bl3, bl2)) return false;
        if (!n.equal(object.areSnapshotsEnabled(), game.areSnapshotsEnabled())) return false;
        bl2 = bl;
        if (!n.equal(object.getThemeColor(), game.getThemeColor())) return false;
        return bl2;
    }

    static String b(Game game) {
        return n.h(game).a("ApplicationId", game.getApplicationId()).a("DisplayName", game.getDisplayName()).a("PrimaryCategory", game.getPrimaryCategory()).a("SecondaryCategory", game.getSecondaryCategory()).a("Description", game.getDescription()).a("DeveloperName", game.getDeveloperName()).a("IconImageUri", game.getIconImageUri()).a("IconImageUrl", game.getIconImageUrl()).a("HiResImageUri", game.getHiResImageUri()).a("HiResImageUrl", game.getHiResImageUrl()).a("FeaturedImageUri", game.getFeaturedImageUri()).a("FeaturedImageUrl", game.getFeaturedImageUrl()).a("PlayEnabledGame", game.jO()).a("InstanceInstalled", game.jQ()).a("InstancePackageName", game.jR()).a("AchievementTotalCount", game.getAchievementTotalCount()).a("LeaderboardCount", game.getLeaderboardCount()).a("RealTimeMultiplayerEnabled", game.isRealTimeMultiplayerEnabled()).a("TurnBasedMultiplayerEnabled", game.isTurnBasedMultiplayerEnabled()).a("AreSnapshotsEnabled", game.areSnapshotsEnabled()).a("ThemeColor", game.getThemeColor()).toString();
    }

    @Override
    public boolean areSnapshotsEnabled() {
        return this.Vx;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return GameEntity.a(this, object);
    }

    @Override
    public Game freeze() {
        return this;
    }

    @Override
    public int getAchievementTotalCount() {
        return this.Vo;
    }

    @Override
    public String getApplicationId() {
        return this.Ez;
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
    public String getDeveloperName() {
        return this.Vg;
    }

    @Override
    public void getDeveloperName(CharArrayBuffer charArrayBuffer) {
        jv.b(this.Vg, charArrayBuffer);
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
    public Uri getFeaturedImageUri() {
        return this.Vj;
    }

    @Override
    public String getFeaturedImageUrl() {
        return this.Vu;
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
    public int getLeaderboardCount() {
        return this.Vp;
    }

    @Override
    public String getPrimaryCategory() {
        return this.Ve;
    }

    @Override
    public String getSecondaryCategory() {
        return this.Vf;
    }

    @Override
    public String getThemeColor() {
        return this.Vy;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return GameEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    @Override
    public boolean isMuted() {
        return this.Vv;
    }

    @Override
    public boolean isRealTimeMultiplayerEnabled() {
        return this.Vq;
    }

    @Override
    public boolean isTurnBasedMultiplayerEnabled() {
        return this.Vr;
    }

    @Override
    public boolean jO() {
        return this.Vk;
    }

    @Override
    public boolean jP() {
        return this.Vw;
    }

    @Override
    public boolean jQ() {
        return this.Vl;
    }

    @Override
    public String jR() {
        return this.Vm;
    }

    @Override
    public int jS() {
        return this.Vn;
    }

    public String toString() {
        return GameEntity.b(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void writeToParcel(Parcel parcel, int n) {
        int n2 = 1;
        Object var5_4 = null;
        if (!this.gQ()) {
            GameEntityCreator.a(this, parcel, n);
            return;
        }
        parcel.writeString(this.Ez);
        parcel.writeString(this.NH);
        parcel.writeString(this.Ve);
        parcel.writeString(this.Vf);
        parcel.writeString(this.Tr);
        parcel.writeString(this.Vg);
        String string = this.Vh == null ? null : this.Vh.toString();
        parcel.writeString(string);
        string = this.Vi == null ? null : this.Vi.toString();
        parcel.writeString(string);
        string = this.Vj == null ? var5_4 : this.Vj.toString();
        parcel.writeString(string);
        n = this.Vk ? 1 : 0;
        parcel.writeInt(n);
        n = this.Vl ? n2 : 0;
        parcel.writeInt(n);
        parcel.writeString(this.Vm);
        parcel.writeInt(this.Vn);
        parcel.writeInt(this.Vo);
        parcel.writeInt(this.Vp);
    }

    static final class GameEntityCreatorCompat
    extends GameEntityCreator {
        GameEntityCreatorCompat() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public GameEntity cd(Parcel parcel) {
            boolean bl;
            if (GameEntity.c(GameEntity.gP())) return super.cd(parcel);
            if (GameEntity.aV(GameEntity.class.getCanonicalName())) {
                return super.cd(parcel);
            }
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            Object object = parcel.readString();
            object = object == null ? null : Uri.parse((String)object);
            Object object2 = parcel.readString();
            object2 = object2 == null ? null : Uri.parse((String)object2);
            Object object3 = parcel.readString();
            object3 = object3 == null ? null : Uri.parse((String)object3);
            boolean bl2 = parcel.readInt() > 0;
            if (parcel.readInt() > 0) {
                bl = true;
                return new GameEntity(5, string, string2, string3, string4, string5, string6, (Uri)object, (Uri)object2, (Uri)object3, bl2, bl, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false, false, null, null, null, false, false, false, null);
            }
            bl = false;
            return new GameEntity(5, string, string2, string3, string4, string5, string6, (Uri)object, (Uri)object2, (Uri)object3, bl2, bl, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false, false, null, null, null, false, false, false, null);
        }

        @Override
        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return this.cd(parcel);
        }
    }

}

