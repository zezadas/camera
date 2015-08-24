/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import java.util.List;

public final class RealTimeMultiplayerImpl
implements RealTimeMultiplayer {
    @Override
    public void create(GoogleApiClient googleApiClient, RoomConfig roomConfig) {
        Games.c(googleApiClient).a(roomConfig);
    }

    @Override
    public void declineInvitation(GoogleApiClient googleApiClient, String string) {
        Games.c(googleApiClient).p(string, 0);
    }

    @Override
    public void dismissInvitation(GoogleApiClient googleApiClient, String string) {
        Games.c(googleApiClient).o(string, 0);
    }

    @Override
    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int n, int n2) {
        return Games.c(googleApiClient).b(n, n2, true);
    }

    @Override
    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int n, int n2, boolean bl) {
        return Games.c(googleApiClient).b(n, n2, bl);
    }

    @Override
    public RealTimeSocket getSocketForParticipant(GoogleApiClient googleApiClient, String string, String string2) {
        return Games.c(googleApiClient).t(string, string2);
    }

    @Override
    public Intent getWaitingRoomIntent(GoogleApiClient googleApiClient, Room room, int n) {
        return Games.c(googleApiClient).a(room, n);
    }

    @Override
    public void join(GoogleApiClient googleApiClient, RoomConfig roomConfig) {
        Games.c(googleApiClient).b(roomConfig);
    }

    @Override
    public void leave(GoogleApiClient googleApiClient, RoomUpdateListener roomUpdateListener, String string) {
        Games.c(googleApiClient).a(roomUpdateListener, string);
    }

    @Override
    public int sendReliableMessage(GoogleApiClient googleApiClient, RealTimeMultiplayer.ReliableMessageSentCallback reliableMessageSentCallback, byte[] arrby, String string, String string2) {
        return Games.c(googleApiClient).a(reliableMessageSentCallback, arrby, string, string2);
    }

    @Override
    public int sendUnreliableMessage(GoogleApiClient googleApiClient, byte[] arrby, String string, String string2) {
        return Games.c(googleApiClient).a(arrby, string, new String[]{string2});
    }

    @Override
    public int sendUnreliableMessage(GoogleApiClient googleApiClient, byte[] arrby, String string, List<String> arrstring) {
        arrstring = arrstring.toArray(new String[arrstring.size()]);
        return Games.c(googleApiClient).a(arrby, string, arrstring);
    }

    @Override
    public int sendUnreliableMessageToOthers(GoogleApiClient googleApiClient, byte[] arrby, String string) {
        return Games.c(googleApiClient).d(arrby, string);
    }
}

