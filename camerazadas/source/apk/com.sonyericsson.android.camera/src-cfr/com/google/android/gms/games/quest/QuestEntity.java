/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.MilestoneEntity;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestEntityCreator;
import com.google.android.gms.internal.jv;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class QuestEntity
implements SafeParcelable,
Quest {
    public static final QuestEntityCreator CREATOR = new QuestEntityCreator();
    private final int BR;
    private final int FD;
    private final String Tr;
    private final long Wk;
    private final GameEntity aay;
    private final String acR;
    private final long acS;
    private final Uri acT;
    private final String acU;
    private final long acV;
    private final Uri acW;
    private final String acX;
    private final long acY;
    private final long acZ;
    private final ArrayList<MilestoneEntity> ada;
    private final String mName;
    private final int mState;

    QuestEntity(int n, GameEntity gameEntity, String string, long l, Uri uri, String string2, String string3, long l2, long l3, Uri uri2, String string4, String string5, long l4, long l5, int n2, int n3, ArrayList<MilestoneEntity> arrayList) {
        this.BR = n;
        this.aay = gameEntity;
        this.acR = string;
        this.acS = l;
        this.acT = uri;
        this.acU = string2;
        this.Tr = string3;
        this.acV = l2;
        this.Wk = l3;
        this.acW = uri2;
        this.acX = string4;
        this.mName = string5;
        this.acY = l4;
        this.acZ = l5;
        this.mState = n2;
        this.FD = n3;
        this.ada = arrayList;
    }

    public QuestEntity(Quest object) {
        this.BR = 2;
        this.aay = new GameEntity(object.getGame());
        this.acR = object.getQuestId();
        this.acS = object.getAcceptedTimestamp();
        this.Tr = object.getDescription();
        this.acT = object.getBannerImageUri();
        this.acU = object.getBannerImageUrl();
        this.acV = object.getEndTimestamp();
        this.acW = object.getIconImageUri();
        this.acX = object.getIconImageUrl();
        this.Wk = object.getLastUpdatedTimestamp();
        this.mName = object.getName();
        this.acY = object.lK();
        this.acZ = object.getStartTimestamp();
        this.mState = object.getState();
        this.FD = object.getType();
        object = object.lJ();
        int n = object.size();
        this.ada = new ArrayList(n);
        for (int i = 0; i < n; ++i) {
            this.ada.add((MilestoneEntity)((Milestone)object.get(i)).freeze());
        }
    }

    static int a(Quest quest) {
        return n.hashCode(quest.getGame(), quest.getQuestId(), quest.getAcceptedTimestamp(), quest.getBannerImageUri(), quest.getDescription(), quest.getEndTimestamp(), quest.getIconImageUri(), quest.getLastUpdatedTimestamp(), quest.lJ(), quest.getName(), quest.lK(), quest.getStartTimestamp(), quest.getState());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(Quest quest, Object object) {
        boolean bl = true;
        if (!(object instanceof Quest)) {
            return false;
        }
        boolean bl2 = bl;
        if (quest == object) return bl2;
        if (!n.equal((object = (Quest)object).getGame(), quest.getGame())) return false;
        if (!n.equal(object.getQuestId(), quest.getQuestId())) return false;
        if (!n.equal(object.getAcceptedTimestamp(), quest.getAcceptedTimestamp())) return false;
        if (!n.equal(object.getBannerImageUri(), quest.getBannerImageUri())) return false;
        if (!n.equal(object.getDescription(), quest.getDescription())) return false;
        if (!n.equal(object.getEndTimestamp(), quest.getEndTimestamp())) return false;
        if (!n.equal(object.getIconImageUri(), quest.getIconImageUri())) return false;
        if (!n.equal(object.getLastUpdatedTimestamp(), quest.getLastUpdatedTimestamp())) return false;
        if (!n.equal(object.lJ(), quest.lJ())) return false;
        if (!n.equal(object.getName(), quest.getName())) return false;
        if (!n.equal(object.lK(), quest.lK())) return false;
        if (!n.equal(object.getStartTimestamp(), quest.getStartTimestamp())) return false;
        bl2 = bl;
        if (n.equal(object.getState(), quest.getState())) return bl2;
        return false;
    }

    static String b(Quest quest) {
        return n.h(quest).a("Game", quest.getGame()).a("QuestId", quest.getQuestId()).a("AcceptedTimestamp", quest.getAcceptedTimestamp()).a("BannerImageUri", quest.getBannerImageUri()).a("BannerImageUrl", quest.getBannerImageUrl()).a("Description", quest.getDescription()).a("EndTimestamp", quest.getEndTimestamp()).a("IconImageUri", quest.getIconImageUri()).a("IconImageUrl", quest.getIconImageUrl()).a("LastUpdatedTimestamp", quest.getLastUpdatedTimestamp()).a("Milestones", quest.lJ()).a("Name", quest.getName()).a("NotifyTimestamp", quest.lK()).a("StartTimestamp", quest.getStartTimestamp()).a("State", quest.getState()).toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return QuestEntity.a(this, object);
    }

    @Override
    public Quest freeze() {
        return this;
    }

    @Override
    public long getAcceptedTimestamp() {
        return this.acS;
    }

    @Override
    public Uri getBannerImageUri() {
        return this.acT;
    }

    @Override
    public String getBannerImageUrl() {
        return this.acU;
    }

    @Override
    public Milestone getCurrentMilestone() {
        return this.lJ().get(0);
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
    public long getEndTimestamp() {
        return this.acV;
    }

    @Override
    public Game getGame() {
        return this.aay;
    }

    @Override
    public Uri getIconImageUri() {
        return this.acW;
    }

    @Override
    public String getIconImageUrl() {
        return this.acX;
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
    public String getQuestId() {
        return this.acR;
    }

    @Override
    public long getStartTimestamp() {
        return this.acZ;
    }

    @Override
    public int getState() {
        return this.mState;
    }

    @Override
    public int getType() {
        return this.FD;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return QuestEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    @Override
    public boolean isEndingSoon() {
        if (this.acY <= System.currentTimeMillis() + 1800000) {
            return true;
        }
        return false;
    }

    @Override
    public List<Milestone> lJ() {
        return new ArrayList<Milestone>(this.ada);
    }

    @Override
    public long lK() {
        return this.acY;
    }

    public String toString() {
        return QuestEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        QuestEntityCreator.a(this, parcel, n);
    }
}

