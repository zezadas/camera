/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.quest.Milestone;

public final class MilestoneRef
extends d
implements Milestone {
    MilestoneRef(DataHolder var1, int var2);

    private long lI();

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public Milestone freeze();

    @Override
    public byte[] getCompletionRewardData();

    @Override
    public long getCurrentProgress();

    @Override
    public String getEventId();

    @Override
    public String getMilestoneId();

    @Override
    public int getState();

    @Override
    public long getTargetProgress();

    @Override
    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

