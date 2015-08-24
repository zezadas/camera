/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.MilestoneEntity;

public final class MilestoneRef
extends d
implements Milestone {
    MilestoneRef(DataHolder dataHolder, int n) {
        super(dataHolder, n);
    }

    private long lI() {
        return this.getLong("initial_value");
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return MilestoneEntity.a(this, object);
    }

    @Override
    public Milestone freeze() {
        return new MilestoneEntity(this);
    }

    @Override
    public byte[] getCompletionRewardData() {
        return this.getByteArray("completion_reward_data");
    }

    @Override
    public long getCurrentProgress() {
        switch (this.getState()) {
            default: {
                return 0;
            }
            case 3: 
            case 4: {
                return this.getTargetProgress();
            }
            case 2: 
        }
        return this.getLong("current_value") - this.lI();
    }

    @Override
    public String getEventId() {
        return this.getString("external_event_id");
    }

    @Override
    public String getMilestoneId() {
        return this.getString("external_milestone_id");
    }

    @Override
    public int getState() {
        return this.getInteger("milestone_state");
    }

    @Override
    public long getTargetProgress() {
        return this.getLong("target_value");
    }

    @Override
    public int hashCode() {
        return MilestoneEntity.a(this);
    }

    public String toString() {
        return MilestoneEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((MilestoneEntity)this.freeze()).writeToParcel(parcel, n);
    }
}

