/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
public final class RoomConfig {
    private final String WO;
    private final int acd;
    private final RoomUpdateListener aco;
    private final RoomStatusUpdateListener acp;
    private final RealTimeMessageReceivedListener acq;
    private final String[] acr;
    private final Bundle acs;
    private final boolean act;

    private RoomConfig(Builder var1);

    /* synthetic */ RoomConfig(Builder var1,  var2);

    public static Builder builder(RoomUpdateListener var0);

    public static Bundle createAutoMatchCriteria(int var0, int var1, long var2);

    public Bundle getAutoMatchCriteria();

    public String getInvitationId();

    public String[] getInvitedPlayerIds();

    public RealTimeMessageReceivedListener getMessageReceivedListener();

    public RoomStatusUpdateListener getRoomStatusUpdateListener();

    public RoomUpdateListener getRoomUpdateListener();

    public int getVariant();

    public boolean isSocketEnabled();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        int acd;
        final RoomUpdateListener aco;
        RoomStatusUpdateListener acp;
        RealTimeMessageReceivedListener acq;
        Bundle acs;
        boolean act;
        String acu;
        ArrayList<String> acv;

        private Builder(RoomUpdateListener var1);

        /* synthetic */ Builder(RoomUpdateListener var1,  var2);

        public Builder addPlayersToInvite(ArrayList<String> var1);

        public /* varargs */ Builder addPlayersToInvite(String ... var1);

        public RoomConfig build();

        public Builder setAutoMatchCriteria(Bundle var1);

        public Builder setInvitationIdToAccept(String var1);

        public Builder setMessageReceivedListener(RealTimeMessageReceivedListener var1);

        public Builder setRoomStatusUpdateListener(RoomStatusUpdateListener var1);

        public Builder setSocketCommunicationEnabled(boolean var1);

        public Builder setVariant(int var1);
    }

}

