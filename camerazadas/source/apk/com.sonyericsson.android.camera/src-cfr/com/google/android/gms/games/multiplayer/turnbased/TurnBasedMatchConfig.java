/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.common.internal.o;
import java.util.ArrayList;
import java.util.Collection;

public final class TurnBasedMatchConfig {
    private final int acD;
    private final int acd;
    private final String[] acr;
    private final Bundle acs;

    private TurnBasedMatchConfig(Builder builder) {
        this.acd = builder.acd;
        this.acD = builder.acD;
        this.acs = builder.acs;
        int n = builder.acv.size();
        this.acr = builder.acv.toArray(new String[n]);
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Bundle createAutoMatchCriteria(int n, int n2, long l) {
        Bundle bundle = new Bundle();
        bundle.putInt("min_automatch_players", n);
        bundle.putInt("max_automatch_players", n2);
        bundle.putLong("exclusive_bit_mask", l);
        return bundle;
    }

    public Bundle getAutoMatchCriteria() {
        return this.acs;
    }

    public String[] getInvitedPlayerIds() {
        return this.acr;
    }

    public int getVariant() {
        return this.acd;
    }

    public int lH() {
        return this.acD;
    }

    public static final class Builder {
        int acD = 2;
        int acd = -1;
        Bundle acs = null;
        ArrayList<String> acv = new ArrayList();

        private Builder() {
        }

        public Builder addInvitedPlayer(String string) {
            o.i(string);
            this.acv.add(string);
            return this;
        }

        public Builder addInvitedPlayers(ArrayList<String> arrayList) {
            o.i(arrayList);
            this.acv.addAll(arrayList);
            return this;
        }

        public TurnBasedMatchConfig build() {
            return new TurnBasedMatchConfig(this);
        }

        public Builder setAutoMatchCriteria(Bundle bundle) {
            this.acs = bundle;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setVariant(int n) {
            boolean bl = n == -1 || n > 0;
            o.b(bl, (Object)"Variant must be a positive integer or TurnBasedMatch.MATCH_VARIANT_ANY");
            this.acd = n;
            return this;
        }
    }

}

