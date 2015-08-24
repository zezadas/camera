/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.achievement;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import com.google.android.gms.games.achievement.Achievement;
import com.google.android.gms.games.achievement.AchievementEntity;

public final class AchievementRef
extends d
implements Achievement {
    AchievementRef(DataHolder dataHolder, int n) {
        super(dataHolder, n);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public Achievement freeze() {
        return new AchievementEntity(this);
    }

    @Override
    public String getAchievementId() {
        return this.getString("external_achievement_id");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int getCurrentSteps() {
        boolean bl = true;
        if (this.getType() != 1) {
            bl = false;
        }
        a.I(bl);
        return this.getInteger("current_steps");
    }

    @Override
    public String getDescription() {
        return this.getString("description");
    }

    @Override
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        this.a("description", charArrayBuffer);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public String getFormattedCurrentSteps() {
        boolean bl = true;
        if (this.getType() != 1) {
            bl = false;
        }
        a.I(bl);
        return this.getString("formatted_current_steps");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void getFormattedCurrentSteps(CharArrayBuffer charArrayBuffer) {
        boolean bl = true;
        if (this.getType() != 1) {
            bl = false;
        }
        a.I(bl);
        this.a("formatted_current_steps", charArrayBuffer);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public String getFormattedTotalSteps() {
        boolean bl = true;
        if (this.getType() != 1) {
            bl = false;
        }
        a.I(bl);
        return this.getString("formatted_total_steps");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void getFormattedTotalSteps(CharArrayBuffer charArrayBuffer) {
        boolean bl = true;
        if (this.getType() != 1) {
            bl = false;
        }
        a.I(bl);
        this.a("formatted_total_steps", charArrayBuffer);
    }

    @Override
    public long getLastUpdatedTimestamp() {
        return this.getLong("last_updated_timestamp");
    }

    @Override
    public String getName() {
        return this.getString("name");
    }

    @Override
    public void getName(CharArrayBuffer charArrayBuffer) {
        this.a("name", charArrayBuffer);
    }

    @Override
    public Player getPlayer() {
        return new PlayerRef(this.II, this.JX);
    }

    @Override
    public Uri getRevealedImageUri() {
        return this.aR("revealed_icon_image_uri");
    }

    @Override
    public String getRevealedImageUrl() {
        return this.getString("revealed_icon_image_url");
    }

    @Override
    public int getState() {
        return this.getInteger("state");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int getTotalSteps() {
        boolean bl = true;
        if (this.getType() != 1) {
            bl = false;
        }
        a.I(bl);
        return this.getInteger("total_steps");
    }

    @Override
    public int getType() {
        return this.getInteger("type");
    }

    @Override
    public Uri getUnlockedImageUri() {
        return this.aR("unlocked_icon_image_uri");
    }

    @Override
    public String getUnlockedImageUrl() {
        return this.getString("unlocked_icon_image_url");
    }

    @Override
    public long getXpValue() {
        if (!this.aQ("instance_xp_value") || this.aS("instance_xp_value")) {
            return this.getLong("definition_xp_value");
        }
        return this.getLong("instance_xp_value");
    }

    public String toString() {
        return AchievementEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((AchievementEntity)this.freeze()).writeToParcel(parcel, n);
    }
}

