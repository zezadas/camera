/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.Notifications;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.game.Acls;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.snapshot.Snapshots;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Games {
    public static final Api<GamesOptions> API;
    public static final Achievements Achievements;
    static final Api.c<GamesClientImpl> CU;
    private static final Api.b<GamesClientImpl, GamesOptions> CV;
    public static final String EXTRA_PLAYER_IDS = "players";
    public static final Events Events;
    public static final GamesMetadata GamesMetadata;
    public static final Invitations Invitations;
    public static final Leaderboards Leaderboards;
    public static final Notifications Notifications;
    public static final Players Players;
    public static final Quests Quests;
    public static final RealTimeMultiplayer RealTimeMultiplayer;
    public static final Requests Requests;
    public static final Scope SCOPE_GAMES;
    public static final Snapshots Snapshots;
    public static final TurnBasedMultiplayer TurnBasedMultiplayer;
    public static final Api<GamesOptions> VA;
    public static final Multiplayer VB;
    public static final Acls VC;
    public static final Scope Vz;

    static;

    private Games();

    public static GamesClientImpl c(GoogleApiClient var0);

    public static GamesClientImpl d(GoogleApiClient var0);

    public static String getAppId(GoogleApiClient var0);

    public static String getCurrentAccountName(GoogleApiClient var0);

    public static int getSdkVariant(GoogleApiClient var0);

    public static Intent getSettingsIntent(GoogleApiClient var0);

    public static void setGravityForPopups(GoogleApiClient var0, int var1);

    public static void setViewForPopups(GoogleApiClient var0, View var1);

    public static PendingResult<Status> signOut(GoogleApiClient var0);

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class BaseGamesApiMethodImpl<R extends Result>
    extends BaseImplementation.a<R, GamesClientImpl> {
        public BaseGamesApiMethodImpl();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class GamesOptions
    implements Api.ApiOptions.Optional {
        public final boolean VD;
        public final boolean VE;
        public final int VF;
        public final boolean VG;
        public final int VH;
        public final String VI;
        public final ArrayList<String> VJ;

        private GamesOptions();

        /* synthetic */ GamesOptions( var1);

        private GamesOptions(Builder var1);

        /* synthetic */ GamesOptions(Builder var1,  var2);

        public static Builder builder();

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        public static final class Builder {
            boolean VD;
            boolean VE;
            int VF;
            boolean VG;
            int VH;
            String VI;
            ArrayList<String> VJ;

            private Builder();

            /* synthetic */ Builder( var1);

            public GamesOptions build();

            public Builder setSdkVariant(int var1);

            public Builder setShowConnectingPopup(boolean var1);

            public Builder setShowConnectingPopup(boolean var1, int var2);
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class SignOutImpl
    extends BaseGamesApiMethodImpl<Status> {
        private SignOutImpl();

        /* synthetic */ SignOutImpl( var1);

        @Override
        public /* synthetic */ Result c(Status var1);

        public Status d(Status var1);
    }

}

