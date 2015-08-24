/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import java.util.List;

/*
 * Exception performing whole class analysis ignored.
 */
public final class RealTimeMultiplayerImpl
implements RealTimeMultiplayer {
    public RealTimeMultiplayerImpl();

    @Override
    public void create(GoogleApiClient var1, RoomConfig var2);

    @Override
    public void declineInvitation(GoogleApiClient var1, String var2);

    @Override
    public void dismissInvitation(GoogleApiClient var1, String var2);

    @Override
    public Intent getSelectOpponentsIntent(GoogleApiClient var1, int var2, int var3);

    @Override
    public Intent getSelectOpponentsIntent(GoogleApiClient var1, int var2, int var3, boolean var4);

    @Override
    public RealTimeSocket getSocketForParticipant(GoogleApiClient var1, String var2, String var3);

    @Override
    public Intent getWaitingRoomIntent(GoogleApiClient var1, Room var2, int var3);

    @Override
    public void join(GoogleApiClient var1, RoomConfig var2);

    @Override
    public void leave(GoogleApiClient var1, RoomUpdateListener var2, String var3);

    @Override
    public int sendReliableMessage(GoogleApiClient var1, RealTimeMultiplayer.ReliableMessageSentCallback var2, byte[] var3, String var4, String var5);

    @Override
    public int sendUnreliableMessage(GoogleApiClient var1, byte[] var2, String var3, String var4);

    @Override
    public int sendUnreliableMessage(GoogleApiClient var1, byte[] var2, String var3, List<String> var4);

    @Override
    public int sendUnreliableMessageToOthers(GoogleApiClient var1, byte[] var2, String var3);
}

