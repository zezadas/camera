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
import com.google.android.gms.common.internal.o;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.Notifications;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.api.AchievementsImpl;
import com.google.android.gms.games.internal.api.AclsImpl;
import com.google.android.gms.games.internal.api.EventsImpl;
import com.google.android.gms.games.internal.api.GamesMetadataImpl;
import com.google.android.gms.games.internal.api.InvitationsImpl;
import com.google.android.gms.games.internal.api.LeaderboardsImpl;
import com.google.android.gms.games.internal.api.MultiplayerImpl;
import com.google.android.gms.games.internal.api.NotificationsImpl;
import com.google.android.gms.games.internal.api.PlayersImpl;
import com.google.android.gms.games.internal.api.QuestsImpl;
import com.google.android.gms.games.internal.api.RealTimeMultiplayerImpl;
import com.google.android.gms.games.internal.api.RequestsImpl;
import com.google.android.gms.games.internal.api.SnapshotsImpl;
import com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl;
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

    static {
        CU = new Api.c();
        CV = new Api.b<GamesClientImpl, GamesOptions>(){

            @Override
            public GamesClientImpl a(Context context, Looper looper, ClientSettings clientSettings, GamesOptions gamesOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                if (gamesOptions == null) {
                    gamesOptions = new GamesOptions();
                }
                return new GamesClientImpl(context, looper, clientSettings.getRealClientPackageName(), clientSettings.getAccountNameOrDefault(), connectionCallbacks, onConnectionFailedListener, clientSettings.getScopesArray(), clientSettings.getGravityForPopups(), clientSettings.getViewForPopups(), gamesOptions);
            }

            @Override
            public int getPriority() {
                return 1;
            }
        };
        SCOPE_GAMES = new Scope("https://www.googleapis.com/auth/games");
        API = new Api<GamesOptions>(CV, CU, SCOPE_GAMES);
        Vz = new Scope("https://www.googleapis.com/auth/games.firstparty");
        VA = new Api<GamesOptions>(CV, CU, Vz);
        GamesMetadata = new GamesMetadataImpl();
        Achievements = new AchievementsImpl();
        Events = new EventsImpl();
        Leaderboards = new LeaderboardsImpl();
        Invitations = new InvitationsImpl();
        TurnBasedMultiplayer = new TurnBasedMultiplayerImpl();
        RealTimeMultiplayer = new RealTimeMultiplayerImpl();
        VB = new MultiplayerImpl();
        Players = new PlayersImpl();
        Notifications = new NotificationsImpl();
        Quests = new QuestsImpl();
        Requests = new RequestsImpl();
        Snapshots = new SnapshotsImpl();
        VC = new AclsImpl();
    }

    private Games() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static GamesClientImpl c(GoogleApiClient googleApiClient) {
        boolean bl = googleApiClient != null;
        o.b(bl, (Object)"GoogleApiClient parameter is required.");
        o.a(googleApiClient.isConnected(), "GoogleApiClient must be connected.");
        return Games.d(googleApiClient);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static GamesClientImpl d(GoogleApiClient object) {
        boolean bl = (object = (GamesClientImpl)object.a(CU)) != null;
        o.a(bl, "GoogleApiClient is not configured to use the Games Api. Pass Games.API into GoogleApiClient.Builder#addApi() to use this feature.");
        return object;
    }

    public static String getAppId(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).kp();
    }

    public static String getCurrentAccountName(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).ka();
    }

    public static int getSdkVariant(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).ko();
    }

    public static Intent getSettingsIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).kn();
    }

    public static void setGravityForPopups(GoogleApiClient googleApiClient, int n) {
        Games.c(googleApiClient).dB(n);
    }

    public static void setViewForPopups(GoogleApiClient googleApiClient, View view) {
        o.i(view);
        Games.c(googleApiClient).k(view);
    }

    public static PendingResult<Status> signOut(GoogleApiClient googleApiClient) {
        return googleApiClient.b(new SignOutImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.b(this);
            }
        });
    }

    public static abstract class BaseGamesApiMethodImpl<R extends Result>
    extends BaseImplementation.a<R, GamesClientImpl> {
        public BaseGamesApiMethodImpl() {
            super(Games.CU);
        }
    }

    public static final class GamesOptions
    implements Api.ApiOptions.Optional {
        public final boolean VD;
        public final boolean VE;
        public final int VF;
        public final boolean VG;
        public final int VH;
        public final String VI;
        public final ArrayList<String> VJ;

        private GamesOptions() {
            this.VD = false;
            this.VE = true;
            this.VF = 17;
            this.VG = false;
            this.VH = 4368;
            this.VI = null;
            this.VJ = new ArrayList();
        }

        private GamesOptions(Builder builder) {
            this.VD = builder.VD;
            this.VE = builder.VE;
            this.VF = builder.VF;
            this.VG = builder.VG;
            this.VH = builder.VH;
            this.VI = builder.VI;
            this.VJ = builder.VJ;
        }

        public static Builder builder() {
            return new Builder();
        }

        public static final class Builder {
            boolean VD = false;
            boolean VE = true;
            int VF = 17;
            boolean VG = false;
            int VH = 4368;
            String VI = null;
            ArrayList<String> VJ = new ArrayList();

            private Builder() {
            }

            public GamesOptions build() {
                return new GamesOptions(this);
            }

            public Builder setSdkVariant(int n) {
                this.VH = n;
                return this;
            }

            public Builder setShowConnectingPopup(boolean bl) {
                this.VE = bl;
                this.VF = 17;
                return this;
            }

            public Builder setShowConnectingPopup(boolean bl, int n) {
                this.VE = bl;
                this.VF = n;
                return this;
            }
        }

    }

    private static abstract class SignOutImpl
    extends BaseGamesApiMethodImpl<Status> {
        private SignOutImpl() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        public Status d(Status status) {
            return status;
        }
    }

}

