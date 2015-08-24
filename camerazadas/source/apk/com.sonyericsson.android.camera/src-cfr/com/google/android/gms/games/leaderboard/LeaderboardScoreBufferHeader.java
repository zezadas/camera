/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import android.os.Bundle;

public final class LeaderboardScoreBufferHeader {
    private final Bundle Nh;

    public LeaderboardScoreBufferHeader(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        this.Nh = bundle2;
    }

    public Bundle lB() {
        return this.Nh;
    }

    public static final class Builder {
        private Builder() {
        }
    }

}

