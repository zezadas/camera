/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.MilestoneRef;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestEntity;
import java.util.ArrayList;
import java.util.List;

public final class QuestRef
extends d
implements Quest {
    private final int aaK;
    private final Game abx;

    QuestRef(DataHolder dataHolder, int n, int n2) {
        super(dataHolder, n);
        this.abx = new GameRef(dataHolder, n);
        this.aaK = n2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return QuestEntity.a(this, object);
    }

    @Override
    public Quest freeze() {
        return new QuestEntity(this);
    }

    @Override
    public long getAcceptedTimestamp() {
        return this.getLong("accepted_ts");
    }

    @Override
    public Uri getBannerImageUri() {
        return this.aR("quest_banner_image_uri");
    }

    @Override
    public String getBannerImageUrl() {
        return this.getString("quest_banner_image_url");
    }

    @Override
    public Milestone getCurrentMilestone() {
        return this.lJ().get(0);
    }

    @Override
    public String getDescription() {
        return this.getString("quest_description");
    }

    @Override
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        this.a("quest_description", charArrayBuffer);
    }

    @Override
    public long getEndTimestamp() {
        return this.getLong("quest_end_ts");
    }

    @Override
    public Game getGame() {
        return this.abx;
    }

    @Override
    public Uri getIconImageUri() {
        return this.aR("quest_icon_image_uri");
    }

    @Override
    public String getIconImageUrl() {
        return this.getString("quest_icon_image_url");
    }

    @Override
    public long getLastUpdatedTimestamp() {
        return this.getLong("quest_last_updated_ts");
    }

    @Override
    public String getName() {
        return this.getString("quest_name");
    }

    @Override
    public void getName(CharArrayBuffer charArrayBuffer) {
        this.a("quest_name", charArrayBuffer);
    }

    @Override
    public String getQuestId() {
        return this.getString("external_quest_id");
    }

    @Override
    public long getStartTimestamp() {
        return this.getLong("quest_start_ts");
    }

    @Override
    public int getState() {
        return this.getInteger("quest_state");
    }

    @Override
    public int getType() {
        return this.getInteger("quest_type");
    }

    @Override
    public int hashCode() {
        return QuestEntity.a(this);
    }

    @Override
    public boolean isEndingSoon() {
        if (this.lK() <= System.currentTimeMillis() + 1800000) {
            return true;
        }
        return false;
    }

    @Override
    public List<Milestone> lJ() {
        ArrayList<Milestone> arrayList = new ArrayList<Milestone>(this.aaK);
        for (int i = 0; i < this.aaK; ++i) {
            arrayList.add(new MilestoneRef(this.II, this.JX + i));
        }
        return arrayList;
    }

    @Override
    public long lK() {
        return this.getLong("notification_ts");
    }

    public String toString() {
        return QuestEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((QuestEntity)this.freeze()).writeToParcel(parcel, n);
    }
}

