/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

public final class RoomConfig {
    private final String WO;
    private final int acd;
    private final RoomUpdateListener aco;
    private final RoomStatusUpdateListener acp;
    private final RealTimeMessageReceivedListener acq;
    private final String[] acr;
    private final Bundle acs;
    private final boolean act;

    private RoomConfig(Builder builder) {
        this.aco = builder.aco;
        this.acp = builder.acp;
        this.acq = builder.acq;
        this.WO = builder.acu;
        this.acd = builder.acd;
        this.acs = builder.acs;
        this.act = builder.act;
        int n = builder.acv.size();
        this.acr = builder.acv.toArray(new String[n]);
        if (this.acq == null) {
            o.a(this.act, "Must either enable sockets OR specify a message listener");
        }
    }

    public static Builder builder(RoomUpdateListener roomUpdateListener) {
        return new Builder(roomUpdateListener);
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

    public String getInvitationId() {
        return this.WO;
    }

    public String[] getInvitedPlayerIds() {
        return this.acr;
    }

    public RealTimeMessageReceivedListener getMessageReceivedListener() {
        return this.acq;
    }

    public RoomStatusUpdateListener getRoomStatusUpdateListener() {
        return this.acp;
    }

    public RoomUpdateListener getRoomUpdateListener() {
        return this.aco;
    }

    public int getVariant() {
        return this.acd;
    }

    public boolean isSocketEnabled() {
        return this.act;
    }

    public static final class Builder {
        int acd = -1;
        final RoomUpdateListener aco;
        RoomStatusUpdateListener acp;
        RealTimeMessageReceivedListener acq;
        Bundle acs;
        boolean act = false;
        String acu = null;
        ArrayList<String> acv = new ArrayList();

        private Builder(RoomUpdateListener roomUpdateListener) {
            this.aco = o.b(roomUpdateListener, (Object)"Must provide a RoomUpdateListener");
        }

        public Builder addPlayersToInvite(ArrayList<String> arrayList) {
            o.i(arrayList);
            this.acv.addAll(arrayList);
            return this;
        }

        public /* varargs */ Builder addPlayersToInvite(String ... arrstring) {
            o.i(arrstring);
            this.acv.addAll(Arrays.asList(arrstring));
            return this;
        }

        public RoomConfig build() {
            return new RoomConfig(this);
        }

        public Builder setAutoMatchCriteria(Bundle bundle) {
            this.acs = bundle;
            return this;
        }

        public Builder setInvitationIdToAccept(String string) {
            o.i(string);
            this.acu = string;
            return this;
        }

        public Builder setMessageReceivedListener(RealTimeMessageReceivedListener realTimeMessageReceivedListener) {
            this.acq = realTimeMessageReceivedListener;
            return this;
        }

        public Builder setRoomStatusUpdateListener(RoomStatusUpdateListener roomStatusUpdateListener) {
            this.acp = roomStatusUpdateListener;
            return this;
        }

        public Builder setSocketCommunicationEnabled(boolean bl) {
            this.act = bl;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setVariant(int n) {
            boolean bl = n == -1 || n > 0;
            o.b(bl, (Object)"Variant must be a positive integer or Room.ROOM_VARIANT_ANY");
            this.acd = n;
            return this;
        }
    }

}

