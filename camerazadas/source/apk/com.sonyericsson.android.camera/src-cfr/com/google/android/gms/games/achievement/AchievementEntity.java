/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.achievement;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.achievement.Achievement;
import com.google.android.gms.games.achievement.AchievementEntityCreator;
import com.google.android.gms.internal.jv;

public final class AchievementEntity
implements SafeParcelable,
Achievement {
    public static final AchievementEntityCreator CREATOR = new AchievementEntityCreator();
    private final int BR;
    private final int FD;
    private final String Tr;
    private final String Wa;
    private final Uri Wb;
    private final String Wc;
    private final Uri Wd;
    private final String We;
    private final int Wf;
    private final String Wg;
    private final PlayerEntity Wh;
    private final int Wi;
    private final String Wj;
    private final long Wk;
    private final long Wl;
    private final String mName;
    private final int mState;

    AchievementEntity(int n, String string, int n2, String string2, String string3, Uri uri, String string4, Uri uri2, String string5, int n3, String string6, PlayerEntity playerEntity, int n4, int n5, String string7, long l, long l2) {
        this.BR = n;
        this.Wa = string;
        this.FD = n2;
        this.mName = string2;
        this.Tr = string3;
        this.Wb = uri;
        this.Wc = string4;
        this.Wd = uri2;
        this.We = string5;
        this.Wf = n3;
        this.Wg = string6;
        this.Wh = playerEntity;
        this.mState = n4;
        this.Wi = n5;
        this.Wj = string7;
        this.Wk = l;
        this.Wl = l2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public AchievementEntity(Achievement achievement) {
        this.BR = 1;
        this.Wa = achievement.getAchievementId();
        this.FD = achievement.getType();
        this.mName = achievement.getName();
        this.Tr = achievement.getDescription();
        this.Wb = achievement.getUnlockedImageUri();
        this.Wc = achievement.getUnlockedImageUrl();
        this.Wd = achievement.getRevealedImageUri();
        this.We = achievement.getRevealedImageUrl();
        this.Wh = (PlayerEntity)achievement.getPlayer().freeze();
        this.mState = achievement.getState();
        this.Wk = achievement.getLastUpdatedTimestamp();
        this.Wl = achievement.getXpValue();
        if (achievement.getType() == 1) {
            this.Wf = achievement.getTotalSteps();
            this.Wg = achievement.getFormattedTotalSteps();
            this.Wi = achievement.getCurrentSteps();
            this.Wj = achievement.getFormattedCurrentSteps();
        } else {
            this.Wf = 0;
            this.Wg = null;
            this.Wi = 0;
            this.Wj = null;
        }
        a.f(this.Wa);
        a.f(this.Tr);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static int a(Achievement achievement) {
        int n;
        int n2;
        if (achievement.getType() == 1) {
            n2 = achievement.getCurrentSteps();
            n = achievement.getTotalSteps();
            do {
                return n.hashCode(achievement.getAchievementId(), achievement.getName(), achievement.getType(), achievement.getDescription(), achievement.getXpValue(), achievement.getState(), achievement.getLastUpdatedTimestamp(), achievement.getPlayer(), n2, n);
                break;
            } while (true);
        }
        n = 0;
        n2 = 0;
        return n.hashCode(achievement.getAchievementId(), achievement.getName(), achievement.getType(), achievement.getDescription(), achievement.getXpValue(), achievement.getState(), achievement.getLastUpdatedTimestamp(), achievement.getPlayer(), n2, n);
    }

    /*
     * Enabled aggressive block sorting
     */
    static boolean a(Achievement achievement, Object object) {
        boolean bl;
        boolean bl2 = true;
        if (!(object instanceof Achievement)) {
            return false;
        }
        boolean bl3 = bl2;
        if (achievement == object) return bl3;
        object = (Achievement)object;
        if (achievement.getType() == 1) {
            bl3 = n.equal(object.getCurrentSteps(), achievement.getCurrentSteps());
            bl = n.equal(object.getTotalSteps(), achievement.getTotalSteps());
        } else {
            bl = true;
            bl3 = true;
        }
        if (!n.equal(object.getAchievementId(), achievement.getAchievementId())) return false;
        if (!n.equal(object.getName(), achievement.getName())) return false;
        if (!n.equal(object.getType(), achievement.getType())) return false;
        if (!n.equal(object.getDescription(), achievement.getDescription())) return false;
        if (!n.equal(object.getXpValue(), achievement.getXpValue())) return false;
        if (!n.equal(object.getState(), achievement.getState())) return false;
        if (!n.equal(object.getLastUpdatedTimestamp(), achievement.getLastUpdatedTimestamp())) return false;
        if (!n.equal(object.getPlayer(), achievement.getPlayer())) return false;
        if (!bl3) return false;
        bl3 = bl2;
        if (bl) return bl3;
        return false;
    }

    static String b(Achievement achievement) {
        n.a a = n.h(achievement).a("Id", achievement.getAchievementId()).a("Type", achievement.getType()).a("Name", achievement.getName()).a("Description", achievement.getDescription()).a("Player", achievement.getPlayer()).a("State", achievement.getState());
        if (achievement.getType() == 1) {
            a.a("CurrentSteps", achievement.getCurrentSteps());
            a.a("TotalSteps", achievement.getTotalSteps());
        }
        return a.toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return AchievementEntity.a(this, object);
    }

    @Override
    public Achievement freeze() {
        return this;
    }

    @Override
    public String getAchievementId() {
        return this.Wa;
    }

    @Override
    public int getCurrentSteps() {
        return this.Wi;
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
    public String getFormattedCurrentSteps() {
        return this.Wj;
    }

    @Override
    public void getFormattedCurrentSteps(CharArrayBuffer charArrayBuffer) {
        jv.b(this.Wj, charArrayBuffer);
    }

    @Override
    public String getFormattedTotalSteps() {
        return this.Wg;
    }

    @Override
    public void getFormattedTotalSteps(CharArrayBuffer charArrayBuffer) {
        jv.b(this.Wg, charArrayBuffer);
    }

    @Override
    public long getLastUpdatedTimestamp() {
        return this.Wk;
    }

    @Override
    public String getName() {
        return this.mName;
    }

    @Override
    public void getName(CharArrayBuffer charArrayBuffer) {
        jv.b(this.mName, charArrayBuffer);
    }

    @Override
    public Player getPlayer() {
        return this.Wh;
    }

    @Override
    public Uri getRevealedImageUri() {
        return this.Wd;
    }

    @Override
    public String getRevealedImageUrl() {
        return this.We;
    }

    @Override
    public int getState() {
        return this.mState;
    }

    @Override
    public int getTotalSteps() {
        return this.Wf;
    }

    @Override
    public int getType() {
        return this.FD;
    }

    @Override
    public Uri getUnlockedImageUri() {
        return this.Wb;
    }

    @Override
    public String getUnlockedImageUrl() {
        return this.Wc;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public long getXpValue() {
        return this.Wl;
    }

    public int hashCode() {
        return AchievementEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return AchievementEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        AchievementEntityCreator.a(this, parcel, n);
    }
}

