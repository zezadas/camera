/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;

public interface Milestone
extends Parcelable,
Freezable<Milestone> {
    public static final int STATE_CLAIMED = 4;
    public static final int STATE_COMPLETED_NOT_CLAIMED = 3;
    public static final int STATE_NOT_COMPLETED = 2;
    public static final int STATE_NOT_STARTED = 1;

    public byte[] getCompletionRewardData();

    public long getCurrentProgress();

    public String getEventId();

    public String getMilestoneId();

    public int getState();

    public long getTargetProgress();
}

