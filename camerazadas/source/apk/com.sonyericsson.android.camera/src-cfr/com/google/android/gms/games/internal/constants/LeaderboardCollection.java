/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.constants;

public final class LeaderboardCollection {
    private LeaderboardCollection() {
    }

    public static String dH(int n) {
        switch (n) {
            default: {
                throw new IllegalArgumentException("Unknown leaderboard collection: " + n);
            }
            case 0: {
                return "PUBLIC";
            }
            case 1: 
        }
        return "SOCIAL";
    }
}

