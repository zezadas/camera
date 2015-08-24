/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.MilestoneRef;

public final class MilestoneBuffer
extends DataBuffer<Milestone> {
    @Override
    public Milestone get(int n) {
        return new MilestoneRef(this.II, n);
    }
}

