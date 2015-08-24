/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.experience;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.internal.experience.ExperienceEvent;

public final class ExperienceEventRef
extends d
implements ExperienceEvent {
    private final GameRef aax;

    public ExperienceEventRef(DataHolder dataHolder, int n) {
        super(dataHolder, n);
        if (this.aS("external_game_id")) {
            this.aax = null;
            return;
        }
        this.aax = new GameRef(this.II, this.JX);
    }

    @Override
    public String getIconImageUrl() {
        return this.getString("icon_url");
    }
}

