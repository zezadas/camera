/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.common.internal.e.b
 *  com.google.android.gms.common.internal.e.d
 */
package com.google.android.gms.games.internal;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.e.b;
import com.google.android.gms.common.internal.e.d;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.Notifications;
import com.google.android.gms.games.OnNearbyPlayerDetectedListener;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.AbstractGamesCallbacks;
import com.google.android.gms.games.internal.IGamesService;
import com.google.android.gms.games.internal.PopupManager;
import com.google.android.gms.games.internal.events.EventIncrementCache;
import com.google.android.gms.games.internal.events.EventIncrementManager;
import com.google.android.gms.games.internal.experience.ExperienceEventBuffer;
import com.google.android.gms.games.internal.game.Acls;
import com.google.android.gms.games.internal.game.ExtendedGameBuffer;
import com.google.android.gms.games.internal.game.GameInstanceBuffer;
import com.google.android.gms.games.internal.request.RequestUpdateOutcomes;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardEntity;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScoreEntity;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.Snapshots;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 */
public final class GamesClientImpl
extends e<IGamesService>
implements GoogleApiClient.ConnectionCallbacks,
GoogleApiClient.OnConnectionFailedListener {
    private final String Dd;
    private final long WA;
    private final Games.GamesOptions WB;
    EventIncrementManager Ws;
    private final String Wt;
    private final Map<String, RealTimeSocket> Wu;
    private PlayerEntity Wv;
    private GameEntity Ww;
    private final PopupManager Wx;
    private boolean Wy;
    private final Binder Wz;

    public GamesClientImpl(Context var1, Looper var2, String var3, String var4, GoogleApiClient.ConnectionCallbacks var5, GoogleApiClient.OnConnectionFailedListener var6, String[] var7, int var8, View var9, Games.GamesOptions var10);

    private Room R(DataHolder var1);

    static /* synthetic */ Room a(GamesClientImpl var0, DataHolder var1);

    private RealTimeSocket bA(String var1);

    private RealTimeSocket bB(String var1);

    private RealTimeSocket bz(String var1);

    private void jZ();

    private void kw();

    public int a(RealTimeMultiplayer.ReliableMessageSentCallback var1, byte[] var2, String var3, String var4);

    public int a(byte[] var1, String var2, String[] var3);

    public Intent a(int var1, int var2, boolean var3);

    public Intent a(int var1, byte[] var2, int var3, Bitmap var4, String var5);

    public Intent a(Room var1, int var2);

    public Intent a(String var1, boolean var2, boolean var3, int var4);

    @Override
    protected void a(int var1, IBinder var2, Bundle var3);

    public void a(IBinder var1, Bundle var2);

    public void a(BaseImplementation.b<Requests.LoadRequestsResult> var1, int var2, int var3, int var4);

    public void a(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> var1, int var2, int var3, boolean var4, boolean var5);

    public void a(BaseImplementation.b<Players.LoadPlayersResult> var1, int var2, boolean var3, boolean var4);

    public void a(BaseImplementation.b<TurnBasedMultiplayer.LoadMatchesResult> var1, int var2, int[] var3);

    public void a(BaseImplementation.b<Leaderboards.LoadScoresResult> var1, LeaderboardScoreBuffer var2, int var3, int var4);

    public void a(BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> var1, TurnBasedMatchConfig var2);

    public void a(BaseImplementation.b<Snapshots.CommitSnapshotResult> var1, Snapshot var2, SnapshotMetadataChange var3);

    public void a(BaseImplementation.b<Players.LoadPlayersResult> var1, String var2);

    public void a(BaseImplementation.b<Achievements.UpdateAchievementResult> var1, String var2, int var3);

    public void a(BaseImplementation.b<Leaderboards.LoadScoresResult> var1, String var2, int var3, int var4, int var5, boolean var6);

    public void a(BaseImplementation.b<Players.LoadPlayersResult> var1, String var2, int var3, boolean var4);

    public void a(BaseImplementation.b<Players.LoadPlayersResult> var1, String var2, int var3, boolean var4, boolean var5);

    public void a(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> var1, String var2, int var3, boolean var4, boolean var5, boolean var6, boolean var7);

    public void a(BaseImplementation.b<TurnBasedMultiplayer.LoadMatchesResult> var1, String var2, int var3, int[] var4);

    public void a(BaseImplementation.b<Leaderboards.SubmitScoreResult> var1, String var2, long var3, String var5);

    public void a(BaseImplementation.b<TurnBasedMultiplayer.LeaveMatchResult> var1, String var2, String var3);

    public void a(BaseImplementation.b<Leaderboards.LoadPlayerScoreResult> var1, String var2, String var3, int var4, int var5);

    public void a(BaseImplementation.b<Requests.LoadRequestsResult> var1, String var2, String var3, int var4, int var5, int var6);

    public void a(BaseImplementation.b<Leaderboards.LoadScoresResult> var1, String var2, String var3, int var4, int var5, int var6, boolean var7);

    public void a(BaseImplementation.b<Players.LoadPlayersResult> var1, String var2, String var3, int var4, boolean var5, boolean var6);

    public void a(BaseImplementation.b<Snapshots.OpenSnapshotResult> var1, String var2, String var3, SnapshotMetadataChange var4, SnapshotContents var5);

    public void a(BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> var1, String var2, String var3, boolean var4);

    public void a(BaseImplementation.b<Quests.LoadQuestsResult> var1, String var2, String var3, boolean var4, String[] var5);

    public void a(BaseImplementation.b<Quests.LoadQuestsResult> var1, String var2, String var3, int[] var4, int var5, boolean var6);

    public void a(BaseImplementation.b<Requests.UpdateRequestsResult> var1, String var2, String var3, String[] var4);

    public void a(BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> var1, String var2, boolean var3);

    public void a(BaseImplementation.b<TurnBasedMultiplayer.UpdateMatchResult> var1, String var2, byte[] var3, String var4, ParticipantResult[] var5);

    public void a(BaseImplementation.b<TurnBasedMultiplayer.UpdateMatchResult> var1, String var2, byte[] var3, ParticipantResult[] var4);

    public void a(BaseImplementation.b<Requests.SendRequestResult> var1, String var2, String[] var3, int var4, byte[] var5, int var6);

    public void a(BaseImplementation.b<Players.LoadPlayersResult> var1, boolean var2);

    public void a(BaseImplementation.b<Status> var1, boolean var2, Bundle var3);

    public /* varargs */ void a(BaseImplementation.b<Events.LoadEventsResult> var1, boolean var2, String ... var3);

    public void a(BaseImplementation.b<Quests.LoadQuestsResult> var1, int[] var2, int var3, boolean var4);

    public void a(BaseImplementation.b<Players.LoadPlayersResult> var1, String[] var2);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    public void a(OnInvitationReceivedListener var1);

    public void a(RoomConfig var1);

    public void a(RoomUpdateListener var1, String var2);

    public void a(OnTurnBasedMatchUpdateReceivedListener var1);

    public void a(QuestUpdateListener var1);

    public void a(OnRequestReceivedListener var1);

    public void a(Snapshot var1);

    protected IGamesService az(IBinder var1);

    public Intent b(int var1, int var2, boolean var3);

    public Intent b(int[] var1);

    public void b(BaseImplementation.b<Status> var1);

    public void b(BaseImplementation.b<Players.LoadPlayersResult> var1, int var2, boolean var3, boolean var4);

    public void b(BaseImplementation.b<Achievements.UpdateAchievementResult> var1, String var2);

    public void b(BaseImplementation.b<Achievements.UpdateAchievementResult> var1, String var2, int var3);

    public void b(BaseImplementation.b<Leaderboards.LoadScoresResult> var1, String var2, int var3, int var4, int var5, boolean var6);

    public void b(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> var1, String var2, int var3, boolean var4, boolean var5);

    public void b(BaseImplementation.b<Quests.ClaimMilestoneResult> var1, String var2, String var3);

    public void b(BaseImplementation.b<Leaderboards.LoadScoresResult> var1, String var2, String var3, int var4, int var5, int var6, boolean var7);

    public void b(BaseImplementation.b<Achievements.LoadAchievementsResult> var1, String var2, String var3, boolean var4);

    public void b(BaseImplementation.b<Snapshots.OpenSnapshotResult> var1, String var2, boolean var3);

    public void b(BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> var1, boolean var2);

    public void b(BaseImplementation.b<Quests.LoadQuestsResult> var1, boolean var2, String[] var3);

    public void b(BaseImplementation.b<Requests.UpdateRequestsResult> var1, String[] var2);

    public void b(RoomConfig var1);

    public Intent bC(String var1);

    public void bD(String var1);

    public Intent bx(String var1);

    public void by(String var1);

    public void c(BaseImplementation.b<Invitations.LoadInvitationsResult> var1, int var2);

    public void c(BaseImplementation.b<Players.LoadPlayersResult> var1, int var2, boolean var3, boolean var4);

    public void c(BaseImplementation.b<Achievements.UpdateAchievementResult> var1, String var2);

    public void c(BaseImplementation.b<Players.LoadXpStreamResult> var1, String var2, int var3);

    public void c(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> var1, String var2, int var3, boolean var4, boolean var5);

    public void c(BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> var1, String var2, String var3);

    public void c(BaseImplementation.b<Snapshots.LoadSnapshotsResult> var1, String var2, String var3, boolean var4);

    public void c(BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> var1, String var2, boolean var3);

    public void c(BaseImplementation.b<Achievements.LoadAchievementsResult> var1, boolean var2);

    public void c(BaseImplementation.b<Requests.UpdateRequestsResult> var1, String[] var2);

    @Override
    protected /* varargs */ void c(String ... var1);

    @Override
    public void connect();

    public int d(byte[] var1, String var2);

    public void d(BaseImplementation.b<Players.LoadPlayersResult> var1, int var2, boolean var3, boolean var4);

    public void d(BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> var1, String var2);

    public void d(BaseImplementation.b<Players.LoadXpStreamResult> var1, String var2, int var3);

    public void d(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> var1, String var2, int var3, boolean var4, boolean var5);

    public void d(BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> var1, String var2, String var3);

    public void d(BaseImplementation.b<Notifications.GameMuteStatusChangeResult> var1, String var2, boolean var3);

    public void d(BaseImplementation.b<Events.LoadEventsResult> var1, boolean var2);

    public void dB(int var1);

    public void dC(int var1);

    @Override
    public void disconnect();

    public void e(BaseImplementation.b<Players.LoadPlayersResult> var1, int var2, boolean var3, boolean var4);

    public void e(BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> var1, String var2);

    public void e(BaseImplementation.b<Invitations.LoadInvitationsResult> var1, String var2, int var3);

    public void e(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> var1, String var2, int var3, boolean var4, boolean var5);

    public void e(BaseImplementation.b<Snapshots.LoadSnapshotsResult> var1, boolean var2);

    public void f(BaseImplementation.b<GamesMetadata.LoadGamesResult> var1);

    public void f(BaseImplementation.b<TurnBasedMultiplayer.LeaveMatchResult> var1, String var2);

    public void f(BaseImplementation.b<Requests.LoadRequestSummariesResult> var1, String var2, int var3);

    public void f(BaseImplementation.b<Players.LoadPlayersResult> var1, String var2, int var3, boolean var4, boolean var5);

    public void f(BaseImplementation.b<Players.LoadProfileSettingsResult> var1, boolean var2);

    @Override
    public Bundle fC();

    public void g(BaseImplementation.b<Players.LoadOwnerCoverPhotoUrisResult> var1);

    public void g(BaseImplementation.b<TurnBasedMultiplayer.CancelMatchResult> var1, String var2);

    public void g(BaseImplementation.b<Players.LoadPlayersResult> var1, String var2, int var3, boolean var4, boolean var5);

    public void g(BaseImplementation.b<Status> var1, boolean var2);

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    public void h(BaseImplementation.b<Acls.LoadAclResult> var1);

    public void h(BaseImplementation.b<TurnBasedMultiplayer.LoadMatchResult> var1, String var2);

    public void h(BaseImplementation.b<Notifications.ContactSettingLoadResult> var1, boolean var2);

    @Deprecated
    public void i(BaseImplementation.b<Notifications.ContactSettingLoadResult> var1);

    public void i(BaseImplementation.b<Quests.AcceptQuestResult> var1, String var2);

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);

    public void j(BaseImplementation.b<Notifications.InboxCountResult> var1);

    public void j(BaseImplementation.b<Snapshots.DeleteSnapshotResult> var1, String var2);

    public void k(View var1);

    public void k(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> var1, String var2);

    public String ka();

    public String kb();

    public Player kc();

    public Game kd();

    public Intent ke();

    public Intent kf();

    public Intent kg();

    public Intent kh();

    public void ki();

    public void kj();

    public void kk();

    public void kl();

    public Intent km();

    public Intent kn();

    public int ko();

    public String kp();

    public int kq();

    public Intent kr();

    public int ks();

    public int kt();

    public int ku();

    public int kv();

    public void kx();

    public void l(BaseImplementation.b<GamesMetadata.LoadGameInstancesResult> var1, String var2);

    public void m(BaseImplementation.b<GamesMetadata.LoadGameSearchSuggestionsResult> var1, String var2);

    public void n(BaseImplementation.b<Players.LoadXpForGameCategoriesResult> var1, String var2);

    public void n(String var1, int var2);

    public void o(BaseImplementation.b<Invitations.LoadInvitationsResult> var1, String var2);

    public void o(String var1, int var2);

    @Override
    public void onConnected(Bundle var1);

    @Override
    public void onConnectionFailed(ConnectionResult var1);

    @Override
    public void onConnectionSuspended(int var1);

    public void p(BaseImplementation.b<Status> var1, String var2);

    public void p(String var1, int var2);

    public void q(BaseImplementation.b<Notifications.GameMuteStatusLoadResult> var1, String var2);

    public RealTimeSocket t(String var1, String var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class AbstractPeerStatusCallback
    extends AbstractRoomStatusCallback {
        final /* synthetic */ GamesClientImpl WC;
        private final ArrayList<String> WD;

        AbstractPeerStatusCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3, String[] var4);

        @Override
        protected void a(RoomStatusUpdateListener var1, Room var2);

        protected abstract void a(RoomStatusUpdateListener var1, Room var2, ArrayList<String> var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class AbstractRoomCallback
    extends d<RoomUpdateListener> {
        final /* synthetic */ GamesClientImpl WC;

        AbstractRoomCallback(GamesClientImpl var1, RoomUpdateListener var2, DataHolder var3);

        protected void a(RoomUpdateListener var1, DataHolder var2);

        protected abstract void a(RoomUpdateListener var1, Room var2, int var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class AbstractRoomStatusCallback
    extends d<RoomStatusUpdateListener> {
        final /* synthetic */ GamesClientImpl WC;

        AbstractRoomStatusCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3);

        protected void a(RoomStatusUpdateListener var1, DataHolder var2);

        protected abstract void a(RoomStatusUpdateListener var1, Room var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class AcceptQuestResultImpl
    extends a
    implements Quests.AcceptQuestResult {
        private final Quest WE;

        AcceptQuestResultImpl(DataHolder var1);

        @Override
        public Quest getQuest();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class AchievementUpdatedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Achievements.UpdateAchievementResult> De;
        final /* synthetic */ GamesClientImpl WC;

        AchievementUpdatedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Achievements.UpdateAchievementResult> var2);

        @Override
        public void g(int var1, String var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class AchievementsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Achievements.LoadAchievementsResult> De;
        final /* synthetic */ GamesClientImpl WC;

        AchievementsLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Achievements.LoadAchievementsResult> var2);

        @Override
        public void c(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class CancelMatchResultImpl
    implements TurnBasedMultiplayer.CancelMatchResult {
        private final Status CM;
        private final String WF;

        CancelMatchResultImpl(Status var1, String var2);

        @Override
        public String getMatchId();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class ClaimMilestoneResultImpl
    extends a
    implements Quests.ClaimMilestoneResult {
        private final Quest WE;
        private final Milestone WG;

        ClaimMilestoneResultImpl(DataHolder var1, String var2);

        @Override
        public Milestone getMilestone();

        @Override
        public Quest getQuest();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class CommitSnapshotResultImpl
    extends a
    implements Snapshots.CommitSnapshotResult {
        private final SnapshotMetadata WH;

        CommitSnapshotResultImpl(DataHolder var1);

        @Override
        public SnapshotMetadata getSnapshotMetadata();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class ConnectedToRoomCallback
    extends AbstractRoomStatusCallback {
        final /* synthetic */ GamesClientImpl WC;

        ConnectedToRoomCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3);

        @Override
        public void a(RoomStatusUpdateListener var1, Room var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static final class ContactSettingLoadResultImpl
    extends a
    implements Notifications.ContactSettingLoadResult {
        ContactSettingLoadResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class ContactSettingsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Notifications.ContactSettingLoadResult> De;
        final /* synthetic */ GamesClientImpl WC;

        ContactSettingsLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Notifications.ContactSettingLoadResult> var2);

        @Override
        public void D(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class ContactSettingsUpdatedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Status> De;
        final /* synthetic */ GamesClientImpl WC;

        ContactSettingsUpdatedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Status> var2);

        @Override
        public void dy(int var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class DeleteSnapshotResultImpl
    implements Snapshots.DeleteSnapshotResult {
        private final Status CM;
        private final String WI;

        DeleteSnapshotResultImpl(int var1, String var2);

        @Override
        public String getSnapshotId();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class DisconnectedFromRoomCallback
    extends AbstractRoomStatusCallback {
        final /* synthetic */ GamesClientImpl WC;

        DisconnectedFromRoomCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3);

        @Override
        public void a(RoomStatusUpdateListener var1, Room var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class EventsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Events.LoadEventsResult> De;
        final /* synthetic */ GamesClientImpl WC;

        EventsLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Events.LoadEventsResult> var2);

        @Override
        public void d(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class ExtendedGamesLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> De;
        final /* synthetic */ GamesClientImpl WC;

        ExtendedGamesLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> var2);

        @Override
        public void j(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class GameClientEventIncrementCache
    extends EventIncrementCache {
        final /* synthetic */ GamesClientImpl WC;

        public GameClientEventIncrementCache(GamesClientImpl var1);

        @Override
        protected void q(String var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class GameInstancesLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<GamesMetadata.LoadGameInstancesResult> De;
        final /* synthetic */ GamesClientImpl WC;

        GameInstancesLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<GamesMetadata.LoadGameInstancesResult> var2);

        @Override
        public void k(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class GameMuteStatusChangeResultImpl
    implements Notifications.GameMuteStatusChangeResult {
        private final Status CM;
        private final String WJ;
        private final boolean WK;

        public GameMuteStatusChangeResultImpl(int var1, String var2, boolean var3);

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class GameMuteStatusChangedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Notifications.GameMuteStatusChangeResult> De;
        final /* synthetic */ GamesClientImpl WC;

        GameMuteStatusChangedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Notifications.GameMuteStatusChangeResult> var2);

        @Override
        public void a(int var1, String var2, boolean var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class GameMuteStatusLoadResultImpl
    implements Notifications.GameMuteStatusLoadResult {
        private final Status CM;
        private final String WJ;
        private final boolean WK;

        public GameMuteStatusLoadResultImpl(DataHolder var1);

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class GameMuteStatusLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Notifications.GameMuteStatusLoadResult> De;
        final /* synthetic */ GamesClientImpl WC;

        GameMuteStatusLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Notifications.GameMuteStatusLoadResult> var2);

        @Override
        public void B(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class GameSearchSuggestionsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<GamesMetadata.LoadGameSearchSuggestionsResult> De;
        final /* synthetic */ GamesClientImpl WC;

        GameSearchSuggestionsLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<GamesMetadata.LoadGameSearchSuggestionsResult> var2);

        @Override
        public void l(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class GamesLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<GamesMetadata.LoadGamesResult> De;
        final /* synthetic */ GamesClientImpl WC;

        GamesLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<GamesMetadata.LoadGamesResult> var2);

        @Override
        public void i(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class InboxCountResultImpl
    implements Notifications.InboxCountResult {
        private final Status CM;
        private final Bundle WL;

        InboxCountResultImpl(Status var1, Bundle var2);

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class InboxCountsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Notifications.InboxCountResult> De;
        final /* synthetic */ GamesClientImpl WC;

        InboxCountsLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Notifications.InboxCountResult> var2);

        @Override
        public void f(int var1, Bundle var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static final class InitiateMatchResultImpl
    extends TurnBasedMatchResult
    implements TurnBasedMultiplayer.InitiateMatchResult {
        InitiateMatchResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class InvitationReceivedBinderCallback
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final OnInvitationReceivedListener WM;

        InvitationReceivedBinderCallback(GamesClientImpl var1, OnInvitationReceivedListener var2);

        @Override
        public void n(DataHolder var1);

        @Override
        public void onInvitationRemoved(String var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class InvitationReceivedCallback
    extends b<OnInvitationReceivedListener> {
        final /* synthetic */ GamesClientImpl WC;
        private final Invitation WN;

        InvitationReceivedCallback(GamesClientImpl var1, OnInvitationReceivedListener var2, Invitation var3);

        protected void b(OnInvitationReceivedListener var1);

        protected /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class InvitationRemovedCallback
    extends b<OnInvitationReceivedListener> {
        final /* synthetic */ GamesClientImpl WC;
        private final String WO;

        InvitationRemovedCallback(GamesClientImpl var1, OnInvitationReceivedListener var2, String var3);

        protected void b(OnInvitationReceivedListener var1);

        protected /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class InvitationsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Invitations.LoadInvitationsResult> De;
        final /* synthetic */ GamesClientImpl WC;

        InvitationsLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Invitations.LoadInvitationsResult> var2);

        @Override
        public void m(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class JoinedRoomCallback
    extends AbstractRoomCallback {
        final /* synthetic */ GamesClientImpl WC;

        public JoinedRoomCallback(GamesClientImpl var1, RoomUpdateListener var2, DataHolder var3);

        @Override
        public void a(RoomUpdateListener var1, Room var2, int var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LeaderboardMetadataResultImpl
    extends a
    implements Leaderboards.LeaderboardMetadataResult {
        private final LeaderboardBuffer WP;

        LeaderboardMetadataResultImpl(DataHolder var1);

        @Override
        public LeaderboardBuffer getLeaderboards();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class LeaderboardScoresLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Leaderboards.LoadScoresResult> De;
        final /* synthetic */ GamesClientImpl WC;

        LeaderboardScoresLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Leaderboards.LoadScoresResult> var2);

        @Override
        public void a(DataHolder var1, DataHolder var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class LeaderboardsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> De;
        final /* synthetic */ GamesClientImpl WC;

        LeaderboardsLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> var2);

        @Override
        public void e(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static final class LeaveMatchResultImpl
    extends TurnBasedMatchResult
    implements TurnBasedMultiplayer.LeaveMatchResult {
        LeaveMatchResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class LeftRoomCallback
    extends b<RoomUpdateListener> {
        private final int HF;
        final /* synthetic */ GamesClientImpl WC;
        private final String WQ;

        LeftRoomCallback(GamesClientImpl var1, RoomUpdateListener var2, int var3, String var4);

        public void a(RoomUpdateListener var1);

        public /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadAchievementsResultImpl
    extends a
    implements Achievements.LoadAchievementsResult {
        private final AchievementBuffer WR;

        LoadAchievementsResultImpl(DataHolder var1);

        @Override
        public AchievementBuffer getAchievements();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadAclResultImpl
    extends a
    implements Acls.LoadAclResult {
        LoadAclResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadEventResultImpl
    extends a
    implements Events.LoadEventsResult {
        private final EventBuffer WS;

        LoadEventResultImpl(DataHolder var1);

        @Override
        public EventBuffer getEvents();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadExtendedGamesResultImpl
    extends a
    implements GamesMetadata.LoadExtendedGamesResult {
        private final ExtendedGameBuffer WT;

        LoadExtendedGamesResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadGameInstancesResultImpl
    extends a
    implements GamesMetadata.LoadGameInstancesResult {
        private final GameInstanceBuffer WU;

        LoadGameInstancesResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadGameSearchSuggestionsResultImpl
    extends a
    implements GamesMetadata.LoadGameSearchSuggestionsResult {
        LoadGameSearchSuggestionsResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadGamesResultImpl
    extends a
    implements GamesMetadata.LoadGamesResult {
        private final GameBuffer WV;

        LoadGamesResultImpl(DataHolder var1);

        @Override
        public GameBuffer getGames();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadInvitationsResultImpl
    extends a
    implements Invitations.LoadInvitationsResult {
        private final InvitationBuffer WW;

        LoadInvitationsResultImpl(DataHolder var1);

        @Override
        public InvitationBuffer getInvitations();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadMatchResultImpl
    extends TurnBasedMatchResult
    implements TurnBasedMultiplayer.LoadMatchResult {
        LoadMatchResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadMatchesResultImpl
    implements TurnBasedMultiplayer.LoadMatchesResult {
        private final Status CM;
        private final LoadMatchesResponse WX;

        LoadMatchesResultImpl(Status var1, Bundle var2);

        @Override
        public LoadMatchesResponse getMatches();

        @Override
        public Status getStatus();

        @Override
        public void release();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadOwnerCoverPhotoUrisResultImpl
    implements Players.LoadOwnerCoverPhotoUrisResult {
        private final Status CM;
        private final Bundle Nh;

        LoadOwnerCoverPhotoUrisResultImpl(int var1, Bundle var2);

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadPlayerScoreResultImpl
    extends a
    implements Leaderboards.LoadPlayerScoreResult {
        private final LeaderboardScoreEntity WY;

        LoadPlayerScoreResultImpl(DataHolder var1);

        @Override
        public LeaderboardScore getScore();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadPlayersResultImpl
    extends a
    implements Players.LoadPlayersResult {
        private final PlayerBuffer WZ;

        LoadPlayersResultImpl(DataHolder var1);

        @Override
        public PlayerBuffer getPlayers();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadProfileSettingsResultImpl
    extends a
    implements Players.LoadProfileSettingsResult {
        private final boolean Wp;
        private final boolean Xa;

        LoadProfileSettingsResultImpl(DataHolder var1);

        @Override
        public Status getStatus();

        @Override
        public boolean isProfileVisible();

        @Override
        public boolean isVisibilityExplicitlySet();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadQuestsResultImpl
    extends a
    implements Quests.LoadQuestsResult {
        private final DataHolder II;

        LoadQuestsResultImpl(DataHolder var1);

        @Override
        public QuestBuffer getQuests();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadRequestSummariesResultImpl
    extends a
    implements Requests.LoadRequestSummariesResult {
        LoadRequestSummariesResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadRequestsResultImpl
    implements Requests.LoadRequestsResult {
        private final Status CM;
        private final Bundle Xb;

        LoadRequestsResultImpl(Status var1, Bundle var2);

        @Override
        public GameRequestBuffer getRequests(int var1);

        @Override
        public Status getStatus();

        @Override
        public void release();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadScoresResultImpl
    extends a
    implements Leaderboards.LoadScoresResult {
        private final LeaderboardEntity Xc;
        private final LeaderboardScoreBuffer Xd;

        LoadScoresResultImpl(DataHolder var1, DataHolder var2);

        @Override
        public Leaderboard getLeaderboard();

        @Override
        public LeaderboardScoreBuffer getScores();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadSnapshotsResultImpl
    extends a
    implements Snapshots.LoadSnapshotsResult {
        LoadSnapshotsResultImpl(DataHolder var1);

        @Override
        public SnapshotMetadataBuffer getSnapshots();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadXpForGameCategoriesResultImpl
    implements Players.LoadXpForGameCategoriesResult {
        private final Status CM;
        private final List<String> Xe;
        private final Bundle Xf;

        LoadXpForGameCategoriesResultImpl(Status var1, Bundle var2);

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class LoadXpStreamResultImpl
    extends a
    implements Players.LoadXpStreamResult {
        private final ExperienceEventBuffer Xg;

        LoadXpStreamResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class MatchRemovedCallback
    extends b<OnTurnBasedMatchUpdateReceivedListener> {
        final /* synthetic */ GamesClientImpl WC;
        private final String Xh;

        MatchRemovedCallback(GamesClientImpl var1, OnTurnBasedMatchUpdateReceivedListener var2, String var3);

        protected void b(OnTurnBasedMatchUpdateReceivedListener var1);

        protected /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class MatchUpdateReceivedBinderCallback
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final OnTurnBasedMatchUpdateReceivedListener Xi;

        MatchUpdateReceivedBinderCallback(GamesClientImpl var1, OnTurnBasedMatchUpdateReceivedListener var2);

        @Override
        public void onTurnBasedMatchRemoved(String var1);

        @Override
        public void t(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class MatchUpdateReceivedCallback
    extends b<OnTurnBasedMatchUpdateReceivedListener> {
        final /* synthetic */ GamesClientImpl WC;
        private final TurnBasedMatch Xj;

        MatchUpdateReceivedCallback(GamesClientImpl var1, OnTurnBasedMatchUpdateReceivedListener var2, TurnBasedMatch var3);

        protected void b(OnTurnBasedMatchUpdateReceivedListener var1);

        protected /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class MessageReceivedCallback
    extends b<RealTimeMessageReceivedListener> {
        final /* synthetic */ GamesClientImpl WC;
        private final RealTimeMessage Xk;

        MessageReceivedCallback(GamesClientImpl var1, RealTimeMessageReceivedListener var2, RealTimeMessage var3);

        public void a(RealTimeMessageReceivedListener var1);

        public /* synthetic */ void g(Object var1);

        protected void gT();
    }

    private final class NearbyPlayerDetectedCallback
    extends b<OnNearbyPlayerDetectedListener> {
        private final Player Xl;

        protected void a(OnNearbyPlayerDetectedListener var1);

        protected /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class NotifyAclLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Acls.LoadAclResult> De;
        final /* synthetic */ GamesClientImpl WC;

        NotifyAclLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Acls.LoadAclResult> var2);

        @Override
        public void C(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class NotifyAclUpdatedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Status> De;
        final /* synthetic */ GamesClientImpl WC;

        NotifyAclUpdatedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Status> var2);

        @Override
        public void dx(int var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class OpenSnapshotResultImpl
    extends a
    implements Snapshots.OpenSnapshotResult {
        private final Snapshot Xm;
        private final String Xn;
        private final Snapshot Xo;
        private final Contents Xp;
        private final SnapshotContents Xq;

        OpenSnapshotResultImpl(DataHolder var1, Contents var2);

        OpenSnapshotResultImpl(DataHolder var1, String var2, Contents var3, Contents var4, Contents var5);

        @Override
        public String getConflictId();

        @Override
        public Snapshot getConflictingSnapshot();

        @Deprecated
        @Override
        public Contents getResolutionContents();

        @Override
        public SnapshotContents getResolutionSnapshotContents();

        @Override
        public Snapshot getSnapshot();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class OwnerCoverPhotoUrisLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Players.LoadOwnerCoverPhotoUrisResult> De;
        final /* synthetic */ GamesClientImpl WC;

        OwnerCoverPhotoUrisLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Players.LoadOwnerCoverPhotoUrisResult> var2);

        @Override
        public void d(int var1, Bundle var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class P2PConnectedCallback
    extends b<RoomStatusUpdateListener> {
        final /* synthetic */ GamesClientImpl WC;
        private final String Xr;

        P2PConnectedCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, String var3);

        public void a(RoomStatusUpdateListener var1);

        public /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class P2PDisconnectedCallback
    extends b<RoomStatusUpdateListener> {
        final /* synthetic */ GamesClientImpl WC;
        private final String Xr;

        P2PDisconnectedCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, String var3);

        public void a(RoomStatusUpdateListener var1);

        public /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class PeerConnectedCallback
    extends AbstractPeerStatusCallback {
        final /* synthetic */ GamesClientImpl WC;

        PeerConnectedCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3, String[] var4);

        @Override
        protected void a(RoomStatusUpdateListener var1, Room var2, ArrayList<String> var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class PeerDeclinedCallback
    extends AbstractPeerStatusCallback {
        final /* synthetic */ GamesClientImpl WC;

        PeerDeclinedCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3, String[] var4);

        @Override
        protected void a(RoomStatusUpdateListener var1, Room var2, ArrayList<String> var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class PeerDisconnectedCallback
    extends AbstractPeerStatusCallback {
        final /* synthetic */ GamesClientImpl WC;

        PeerDisconnectedCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3, String[] var4);

        @Override
        protected void a(RoomStatusUpdateListener var1, Room var2, ArrayList<String> var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class PeerInvitedToRoomCallback
    extends AbstractPeerStatusCallback {
        final /* synthetic */ GamesClientImpl WC;

        PeerInvitedToRoomCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3, String[] var4);

        @Override
        protected void a(RoomStatusUpdateListener var1, Room var2, ArrayList<String> var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class PeerJoinedRoomCallback
    extends AbstractPeerStatusCallback {
        final /* synthetic */ GamesClientImpl WC;

        PeerJoinedRoomCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3, String[] var4);

        @Override
        protected void a(RoomStatusUpdateListener var1, Room var2, ArrayList<String> var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class PeerLeftRoomCallback
    extends AbstractPeerStatusCallback {
        final /* synthetic */ GamesClientImpl WC;

        PeerLeftRoomCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3, String[] var4);

        @Override
        protected void a(RoomStatusUpdateListener var1, Room var2, ArrayList<String> var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class PlayerLeaderboardScoreLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Leaderboards.LoadPlayerScoreResult> De;
        final /* synthetic */ GamesClientImpl WC;

        PlayerLeaderboardScoreLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Leaderboards.LoadPlayerScoreResult> var2);

        @Override
        public void E(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class PlayerXpForGameCategoriesLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Players.LoadXpForGameCategoriesResult> De;
        final /* synthetic */ GamesClientImpl WC;

        PlayerXpForGameCategoriesLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Players.LoadXpForGameCategoriesResult> var2);

        @Override
        public void e(int var1, Bundle var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class PlayerXpStreamLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Players.LoadXpStreamResult> De;
        final /* synthetic */ GamesClientImpl WC;

        PlayerXpStreamLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Players.LoadXpStreamResult> var2);

        @Override
        public void P(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class PlayersLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Players.LoadPlayersResult> De;
        final /* synthetic */ GamesClientImpl WC;

        PlayersLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Players.LoadPlayersResult> var2);

        @Override
        public void g(DataHolder var1);

        @Override
        public void h(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class ProfileSettingsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Players.LoadProfileSettingsResult> De;
        final /* synthetic */ GamesClientImpl WC;

        ProfileSettingsLoadedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Players.LoadProfileSettingsResult> var2);

        @Override
        public void Q(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class ProfileSettingsUpdatedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Status> De;
        final /* synthetic */ GamesClientImpl WC;

        ProfileSettingsUpdatedBinderCallback(GamesClientImpl var1, BaseImplementation.b<Status> var2);

        @Override
        public void dz(int var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class QuestAcceptedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<Quests.AcceptQuestResult> Xs;

        public QuestAcceptedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Quests.AcceptQuestResult> var2);

        @Override
        public void L(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class QuestCompletedCallback
    extends b<QuestUpdateListener> {
        final /* synthetic */ GamesClientImpl WC;
        private final Quest WE;

        QuestCompletedCallback(GamesClientImpl var1, QuestUpdateListener var2, Quest var3);

        protected void b(QuestUpdateListener var1);

        protected /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class QuestMilestoneClaimBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<Quests.ClaimMilestoneResult> Xt;
        private final String Xu;

        public QuestMilestoneClaimBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Quests.ClaimMilestoneResult> var2, String var3);

        @Override
        public void K(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class QuestUpdateBinderCallback
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final QuestUpdateListener Xv;

        QuestUpdateBinderCallback(GamesClientImpl var1, QuestUpdateListener var2);

        private Quest S(DataHolder var1);

        @Override
        public void M(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class QuestsLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<Quests.LoadQuestsResult> Xw;

        public QuestsLoadedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Quests.LoadQuestsResult> var2);

        @Override
        public void O(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RealTimeMessageSentCallback
    extends b<RealTimeMultiplayer.ReliableMessageSentCallback> {
        private final int HF;
        final /* synthetic */ GamesClientImpl WC;
        private final String Xx;
        private final int Xy;

        RealTimeMessageSentCallback(GamesClientImpl var1, RealTimeMultiplayer.ReliableMessageSentCallback var2, int var3, int var4, String var5);

        public void a(RealTimeMultiplayer.ReliableMessageSentCallback var1);

        public /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RealTimeReliableMessageBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        final RealTimeMultiplayer.ReliableMessageSentCallback Xz;

        public RealTimeReliableMessageBinderCallbacks(GamesClientImpl var1, RealTimeMultiplayer.ReliableMessageSentCallback var2);

        @Override
        public void b(int var1, int var2, String var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RequestReceivedBinderCallback
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final OnRequestReceivedListener XA;

        RequestReceivedBinderCallback(GamesClientImpl var1, OnRequestReceivedListener var2);

        @Override
        public void o(DataHolder var1);

        @Override
        public void onRequestRemoved(String var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RequestReceivedCallback
    extends b<OnRequestReceivedListener> {
        final /* synthetic */ GamesClientImpl WC;
        private final GameRequest XB;

        RequestReceivedCallback(GamesClientImpl var1, OnRequestReceivedListener var2, GameRequest var3);

        protected void b(OnRequestReceivedListener var1);

        protected /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RequestRemovedCallback
    extends b<OnRequestReceivedListener> {
        final /* synthetic */ GamesClientImpl WC;
        private final String XC;

        RequestRemovedCallback(GamesClientImpl var1, OnRequestReceivedListener var2, String var3);

        protected void b(OnRequestReceivedListener var1);

        protected /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RequestSentBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<Requests.SendRequestResult> XD;

        public RequestSentBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Requests.SendRequestResult> var2);

        @Override
        public void G(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RequestSummariesLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<Requests.LoadRequestSummariesResult> XE;

        public RequestSummariesLoadedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Requests.LoadRequestSummariesResult> var2);

        @Override
        public void H(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RequestsLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<Requests.LoadRequestsResult> XF;

        public RequestsLoadedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Requests.LoadRequestsResult> var2);

        @Override
        public void c(int var1, Bundle var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RequestsUpdatedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<Requests.UpdateRequestsResult> XG;

        public RequestsUpdatedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Requests.UpdateRequestsResult> var2);

        @Override
        public void F(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RoomAutoMatchingCallback
    extends AbstractRoomStatusCallback {
        final /* synthetic */ GamesClientImpl WC;

        RoomAutoMatchingCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3);

        @Override
        public void a(RoomStatusUpdateListener var1, Room var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RoomBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final RoomUpdateListener XH;
        private final RoomStatusUpdateListener XI;
        private final RealTimeMessageReceivedListener XJ;

        public RoomBinderCallbacks(GamesClientImpl var1, RoomUpdateListener var2);

        public RoomBinderCallbacks(GamesClientImpl var1, RoomUpdateListener var2, RoomStatusUpdateListener var3, RealTimeMessageReceivedListener var4);

        @Override
        public void A(DataHolder var1);

        @Override
        public void a(DataHolder var1, String[] var2);

        @Override
        public void b(DataHolder var1, String[] var2);

        @Override
        public void c(DataHolder var1, String[] var2);

        @Override
        public void d(DataHolder var1, String[] var2);

        @Override
        public void e(DataHolder var1, String[] var2);

        @Override
        public void f(DataHolder var1, String[] var2);

        @Override
        public void onLeftRoom(int var1, String var2);

        @Override
        public void onP2PConnected(String var1);

        @Override
        public void onP2PDisconnected(String var1);

        @Override
        public void onRealTimeMessageReceived(RealTimeMessage var1);

        @Override
        public void u(DataHolder var1);

        @Override
        public void v(DataHolder var1);

        @Override
        public void w(DataHolder var1);

        @Override
        public void x(DataHolder var1);

        @Override
        public void y(DataHolder var1);

        @Override
        public void z(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RoomConnectedCallback
    extends AbstractRoomCallback {
        final /* synthetic */ GamesClientImpl WC;

        RoomConnectedCallback(GamesClientImpl var1, RoomUpdateListener var2, DataHolder var3);

        @Override
        public void a(RoomUpdateListener var1, Room var2, int var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RoomConnectingCallback
    extends AbstractRoomStatusCallback {
        final /* synthetic */ GamesClientImpl WC;

        RoomConnectingCallback(GamesClientImpl var1, RoomStatusUpdateListener var2, DataHolder var3);

        @Override
        public void a(RoomStatusUpdateListener var1, Room var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class RoomCreatedCallback
    extends AbstractRoomCallback {
        final /* synthetic */ GamesClientImpl WC;

        public RoomCreatedCallback(GamesClientImpl var1, RoomUpdateListener var2, DataHolder var3);

        @Override
        public void a(RoomUpdateListener var1, Room var2, int var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class SendRequestResultImpl
    extends a
    implements Requests.SendRequestResult {
        private final GameRequest XB;

        SendRequestResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class SignOutCompleteBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Status> De;
        final /* synthetic */ GamesClientImpl WC;

        public SignOutCompleteBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Status> var2);

        @Override
        public void fp();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class SnapshotCommittedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<Snapshots.CommitSnapshotResult> XK;

        public SnapshotCommittedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Snapshots.CommitSnapshotResult> var2);

        @Override
        public void J(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class SnapshotDeletedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Snapshots.DeleteSnapshotResult> De;
        final /* synthetic */ GamesClientImpl WC;

        public SnapshotDeletedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Snapshots.DeleteSnapshotResult> var2);

        @Override
        public void i(int var1, String var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class SnapshotOpenedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<Snapshots.OpenSnapshotResult> XL;

        public SnapshotOpenedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Snapshots.OpenSnapshotResult> var2);

        @Override
        public void a(DataHolder var1, Contents var2);

        @Override
        public void a(DataHolder var1, String var2, Contents var3, Contents var4, Contents var5);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class SnapshotsLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<Snapshots.LoadSnapshotsResult> XM;

        public SnapshotsLoadedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Snapshots.LoadSnapshotsResult> var2);

        @Override
        public void I(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class SubmitScoreBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Leaderboards.SubmitScoreResult> De;
        final /* synthetic */ GamesClientImpl WC;

        public SubmitScoreBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<Leaderboards.SubmitScoreResult> var2);

        @Override
        public void f(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class SubmitScoreResultImpl
    extends a
    implements Leaderboards.SubmitScoreResult {
        private final ScoreSubmissionData XN;

        public SubmitScoreResultImpl(DataHolder var1);

        @Override
        public ScoreSubmissionData getScoreData();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class TurnBasedMatchCanceledBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<TurnBasedMultiplayer.CancelMatchResult> XO;

        public TurnBasedMatchCanceledBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<TurnBasedMultiplayer.CancelMatchResult> var2);

        @Override
        public void h(int var1, String var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class TurnBasedMatchInitiatedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> XP;

        public TurnBasedMatchInitiatedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> var2);

        @Override
        public void q(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class TurnBasedMatchLeftBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<TurnBasedMultiplayer.LeaveMatchResult> XQ;

        public TurnBasedMatchLeftBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<TurnBasedMultiplayer.LeaveMatchResult> var2);

        @Override
        public void s(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class TurnBasedMatchLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<TurnBasedMultiplayer.LoadMatchResult> XR;

        public TurnBasedMatchLoadedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<TurnBasedMultiplayer.LoadMatchResult> var2);

        @Override
        public void p(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class TurnBasedMatchResult
    extends a {
        final TurnBasedMatch Xj;

        TurnBasedMatchResult(DataHolder var1);

        public TurnBasedMatch getMatch();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class TurnBasedMatchUpdatedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<TurnBasedMultiplayer.UpdateMatchResult> XS;

        public TurnBasedMatchUpdatedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<TurnBasedMultiplayer.UpdateMatchResult> var2);

        @Override
        public void r(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class TurnBasedMatchesLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final BaseImplementation.b<TurnBasedMultiplayer.LoadMatchesResult> XT;

        public TurnBasedMatchesLoadedBinderCallbacks(GamesClientImpl var1, BaseImplementation.b<TurnBasedMultiplayer.LoadMatchesResult> var2);

        @Override
        public void b(int var1, Bundle var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class UpdateAchievementResultImpl
    implements Achievements.UpdateAchievementResult {
        private final Status CM;
        private final String Wa;

        UpdateAchievementResultImpl(int var1, String var2);

        @Override
        public String getAchievementId();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static final class UpdateMatchResultImpl
    extends TurnBasedMatchResult
    implements TurnBasedMultiplayer.UpdateMatchResult {
        UpdateMatchResultImpl(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class UpdateRequestsResultImpl
    extends a
    implements Requests.UpdateRequestsResult {
        private final RequestUpdateOutcomes XU;

        UpdateRequestsResultImpl(DataHolder var1);

        @Override
        public Set<String> getRequestIds();

        @Override
        public int getRequestOutcome(String var1);
    }

}

