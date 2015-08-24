/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.achievement;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.achievement.Achievement;
import com.google.android.gms.games.achievement.AchievementRef;

public final class AchievementBuffer
extends DataBuffer<Achievement> {
    public AchievementBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override
    public Achievement get(int n) {
        return new AchievementRef(this.II, n);
    }
}

