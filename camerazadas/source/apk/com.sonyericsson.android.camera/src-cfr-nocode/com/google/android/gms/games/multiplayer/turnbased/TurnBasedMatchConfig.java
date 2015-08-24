/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
public final class TurnBasedMatchConfig {
    private final int acD;
    private final int acd;
    private final String[] acr;
    private final Bundle acs;

    private TurnBasedMatchConfig(Builder var1);

    /* synthetic */ TurnBasedMatchConfig(Builder var1,  var2);

    public static Builder builder();

    public static Bundle createAutoMatchCriteria(int var0, int var1, long var2);

    public Bundle getAutoMatchCriteria();

    public String[] getInvitedPlayerIds();

    public int getVariant();

    public int lH();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        int acD;
        int acd;
        Bundle acs;
        ArrayList<String> acv;

        private Builder();

        /* synthetic */ Builder( var1);

        public Builder addInvitedPlayer(String var1);

        public Builder addInvitedPlayers(ArrayList<String> var1);

        public TurnBasedMatchConfig build();

        public Builder setAutoMatchCriteria(Bundle var1);

        public Builder setVariant(int var1);
    }

}

