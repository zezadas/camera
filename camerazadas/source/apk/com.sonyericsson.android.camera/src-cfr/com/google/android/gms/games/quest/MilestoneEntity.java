/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.MilestoneEntityCreator;

public final class MilestoneEntity
implements SafeParcelable,
Milestone {
    public static final MilestoneEntityCreator CREATOR = new MilestoneEntityCreator();
    private final int BR;
    private final String Wm;
    private final String Xu;
    private final long acO;
    private final long acP;
    private final byte[] acQ;
    private final int mState;

    MilestoneEntity(int n, String string, long l, long l2, byte[] arrby, int n2, String string2) {
        this.BR = n;
        this.Xu = string;
        this.acO = l;
        this.acP = l2;
        this.acQ = arrby;
        this.mState = n2;
        this.Wm = string2;
    }

    public MilestoneEntity(Milestone milestone) {
        this.BR = 4;
        this.Xu = milestone.getMilestoneId();
        this.acO = milestone.getCurrentProgress();
        this.acP = milestone.getTargetProgress();
        this.mState = milestone.getState();
        this.Wm = milestone.getEventId();
        milestone = (Milestone)milestone.getCompletionRewardData();
        if (milestone == null) {
            this.acQ = null;
            return;
        }
        this.acQ = new byte[milestone.length];
        System.arraycopy(milestone, 0, this.acQ, 0, milestone.length);
    }

    static int a(Milestone milestone) {
        return n.hashCode(milestone.getMilestoneId(), milestone.getCurrentProgress(), milestone.getTargetProgress(), milestone.getState(), milestone.getEventId());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(Milestone milestone, Object object) {
        boolean bl = true;
        if (!(object instanceof Milestone)) {
            return false;
        }
        boolean bl2 = bl;
        if (milestone == object) return bl2;
        if (!n.equal((object = (Milestone)object).getMilestoneId(), milestone.getMilestoneId())) return false;
        if (!n.equal(object.getCurrentProgress(), milestone.getCurrentProgress())) return false;
        if (!n.equal(object.getTargetProgress(), milestone.getTargetProgress())) return false;
        if (!n.equal(object.getState(), milestone.getState())) return false;
        bl2 = bl;
        if (n.equal(object.getEventId(), milestone.getEventId())) return bl2;
        return false;
    }

    static String b(Milestone milestone) {
        return n.h(milestone).a("MilestoneId", milestone.getMilestoneId()).a("CurrentProgress", milestone.getCurrentProgress()).a("TargetProgress", milestone.getTargetProgress()).a("State", milestone.getState()).a("CompletionRewardData", milestone.getCompletionRewardData()).a("EventId", milestone.getEventId()).toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return MilestoneEntity.a(this, object);
    }

    @Override
    public Milestone freeze() {
        return this;
    }

    @Override
    public byte[] getCompletionRewardData() {
        return this.acQ;
    }

    @Override
    public long getCurrentProgress() {
        return this.acO;
    }

    @Override
    public String getEventId() {
        return this.Wm;
    }

    @Override
    public String getMilestoneId() {
        return this.Xu;
    }

    @Override
    public int getState() {
        return this.mState;
    }

    @Override
    public long getTargetProgress() {
        return this.acP;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return MilestoneEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return MilestoneEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        MilestoneEntityCreator.a(this, parcel, n);
    }
}

