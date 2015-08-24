/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.experience;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.experience.ExperienceEvent;
import com.google.android.gms.games.internal.experience.ExperienceEventRef;

public final class ExperienceEventBuffer
extends DataBuffer<ExperienceEvent> {
    public ExperienceEventBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    public ExperienceEvent dI(int n) {
        return new ExperienceEventRef(this.II, n);
    }

    @Override
    public /* synthetic */ Object get(int n) {
        return this.dI(n);
    }
}

