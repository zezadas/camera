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
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.a;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.e.b;
import com.google.android.gms.common.internal.e.d;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.o;
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
import com.google.android.gms.games.internal.GamesLog;
import com.google.android.gms.games.internal.IGamesCallbacks;
import com.google.android.gms.games.internal.IGamesService;
import com.google.android.gms.games.internal.LibjingleNativeSocket;
import com.google.android.gms.games.internal.PopupManager;
import com.google.android.gms.games.internal.RealTimeSocketImpl;
import com.google.android.gms.games.internal.constants.RequestType;
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
import com.google.android.gms.games.leaderboard.LeaderboardScoreBufferHeader;
import com.google.android.gms.games.leaderboard.LeaderboardScoreEntity;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.ParticipantUtils;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomBuffer;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.QuestEntity;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import com.google.android.gms.games.snapshot.Snapshots;
import com.google.android.gms.internal.kc;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

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

    public GamesClientImpl(Context context, Looper looper, String string, String string2, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String[] arrstring, int n, View view, Games.GamesOptions gamesOptions) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, arrstring);
        this.Ws = new EventIncrementManager(){

            @Override
            public EventIncrementCache ky() {
                return new GameClientEventIncrementCache();
            }
        };
        this.Wy = false;
        this.Wt = string;
        this.Dd = o.i(string2);
        this.Wz = new Binder();
        this.Wu = new HashMap<String, RealTimeSocket>();
        this.Wx = PopupManager.a(this, n);
        this.k(view);
        this.WA = this.hashCode();
        this.WB = gamesOptions;
        this.registerConnectionCallbacks(this);
        this.registerConnectionFailedListener(this);
    }

    private Room R(DataHolder parcelable) {
        RoomBuffer roomBuffer = new RoomBuffer((DataHolder)parcelable);
        parcelable = null;
        try {
            if (roomBuffer.getCount() > 0) {
                parcelable = (Room)((Room)roomBuffer.get(0)).freeze();
            }
            return parcelable;
        }
        finally {
            roomBuffer.release();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private RealTimeSocket bA(String object) {
        String string;
        block5 : {
            string = ((IGamesService)this.gS()).bF((String)object);
            if (string != null) break block5;
            return null;
        }
        try {
            LocalSocket localSocket = new LocalSocket();
            localSocket.connect(new LocalSocketAddress(string));
            return new RealTimeSocketImpl(localSocket, (String)object);
        }
        catch (RemoteException var1_2) {
            GamesLog.q("GamesClientImpl", "Unable to create socket. Service died.");
            do {
                return null;
                break;
            } while (true);
        }
        catch (IOException var1_3) {
            GamesLog.q("GamesClientImpl", "connect() call failed on socket: " + var1_3.getMessage());
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private RealTimeSocket bB(String string) {
        try {
            ParcelFileDescriptor parcelFileDescriptor = ((IGamesService)this.gS()).bK(string);
            if (parcelFileDescriptor != null) {
                GamesLog.o("GamesClientImpl", "Created native libjingle socket.");
                return new LibjingleNativeSocket(parcelFileDescriptor);
            }
            GamesLog.q("GamesClientImpl", "Unable to create socket for " + string);
            return null;
        }
        catch (RemoteException var1_2) {
            GamesLog.q("GamesClientImpl", "Unable to create socket. Service died.");
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private RealTimeSocket bz(String string) {
        RealTimeSocket realTimeSocket = kc.hD() ? this.bB(string) : this.bA(string);
        if (realTimeSocket != null) {
            this.Wu.put(string, realTimeSocket);
        }
        return realTimeSocket;
    }

    private void jZ() {
        this.Wv = null;
    }

    private void kw() {
        for (RealTimeSocket realTimeSocket : this.Wu.values()) {
            try {
                realTimeSocket.close();
            }
            catch (IOException var2_3) {
                GamesLog.c("GamesClientImpl", "IOException:", var2_3);
            }
        }
        this.Wu.clear();
    }

    public int a(RealTimeMultiplayer.ReliableMessageSentCallback reliableMessageSentCallback, byte[] arrby, String string, String string2) {
        try {
            int n = ((IGamesService)this.gS()).a((IGamesCallbacks)new RealTimeReliableMessageBinderCallbacks(reliableMessageSentCallback), arrby, string, string2);
            return n;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return -1;
        }
    }

    public int a(byte[] arrby, String string, String[] arrstring) {
        o.b(arrstring, (Object)"Participant IDs must not be null");
        try {
            int n = ((IGamesService)this.gS()).b(arrby, string, arrstring);
            return n;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return -1;
        }
    }

    public Intent a(int n, int n2, boolean bl) {
        try {
            Intent intent = ((IGamesService)this.gS()).a(n, n2, bl);
            return intent;
        }
        catch (RemoteException var4_5) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent a(int n, byte[] object, int n2, Bitmap bitmap, String string) {
        try {
            object = ((IGamesService)this.gS()).a(n, (byte[])object, n2, string);
            o.b(bitmap, (Object)"Must provide a non null icon");
            object.putExtra("com.google.android.gms.games.REQUEST_ITEM_ICON", bitmap);
            return object;
        }
        catch (RemoteException var2_3) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent a(Room parcelable, int n) {
        try {
            parcelable = ((IGamesService)this.gS()).a((RoomEntity)parcelable.freeze(), n);
            return parcelable;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent a(String object, boolean bl, boolean bl2, int n) {
        try {
            object = ((IGamesService)this.gS()).a((String)object, bl, bl2, n);
            return object;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    @Override
    protected void a(int n, IBinder iBinder, Bundle bundle) {
        if (n == 0 && bundle != null) {
            this.Wy = bundle.getBoolean("show_welcome_popup");
        }
        super.a(n, iBinder, bundle);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void a(IBinder iBinder, Bundle bundle) {
        if (!this.isConnected()) return;
        try {
            ((IGamesService)this.gS()).a(iBinder, bundle);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Requests.LoadRequestsResult> b, int n, int n2, int n3) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new RequestsLoadedBinderCallbacks(b), n, n2, n3);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> b, int n, int n2, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new ExtendedGamesLoadedBinderCallback(b), n, n2, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Players.LoadPlayersResult> b, int n, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new PlayersLoadedBinderCallback(b), n, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<TurnBasedMultiplayer.LoadMatchesResult> b, int n, int[] arrn) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new TurnBasedMatchesLoadedBinderCallbacks(b), n, arrn);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Leaderboards.LoadScoresResult> b, LeaderboardScoreBuffer leaderboardScoreBuffer, int n, int n2) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new LeaderboardScoresLoadedBinderCallback(b), leaderboardScoreBuffer.lA().lB(), n, n2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> b, TurnBasedMatchConfig turnBasedMatchConfig) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new TurnBasedMatchInitiatedBinderCallbacks(b), turnBasedMatchConfig.getVariant(), turnBasedMatchConfig.lH(), turnBasedMatchConfig.getInvitedPlayerIds(), turnBasedMatchConfig.getAutoMatchCriteria());
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(BaseImplementation.b<Snapshots.CommitSnapshotResult> b, Snapshot snapshot, SnapshotMetadataChange snapshotMetadataChange) {
        SnapshotContents snapshotContents = snapshot.getSnapshotContents();
        boolean bl = !snapshotContents.isClosed();
        o.a(bl, "Snapshot already closed");
        a a = snapshotMetadataChange.lM();
        if (a != null) {
            a.a(this.getContext().getCacheDir());
        }
        Contents contents = snapshotContents.getContents();
        snapshotContents.close();
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new SnapshotCommittedBinderCallbacks(b), snapshot.getMetadata().getSnapshotId(), snapshotMetadataChange, contents);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Players.LoadPlayersResult> b, String string) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new PlayersLoadedBinderCallback(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public void a(BaseImplementation.b<Achievements.UpdateAchievementResult> var1_1, String var2_3, int var3_4) {
        if (var1_1 != null) ** GOTO lbl-1000
        var1_1 = null;
        try {}
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
        ** GOTO lbl9
lbl-1000: // 1 sources:
        {
            var1_1 = new AchievementUpdatedBinderCallback((BaseImplementation.b<Achievements.UpdateAchievementResult>)var1_1);
lbl9: // 2 sources:
            ((IGamesService)this.gS()).a((IGamesCallbacks)var1_1, var2_3, var3_4, this.Wx.kO(), this.Wx.kN());
            return;
        }
    }

    public void a(BaseImplementation.b<Leaderboards.LoadScoresResult> b, String string, int n, int n2, int n3, boolean bl) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new LeaderboardScoresLoadedBinderCallback(b), string, n, n2, n3, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Players.LoadPlayersResult> b, String string, int n, boolean bl) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new PlayersLoadedBinderCallback(b), string, n, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    /*
     * Exception decompiling
     */
    public void a(BaseImplementation.b<Players.LoadPlayersResult> var1_1, String var2_3, int var3_4, boolean var4_5, boolean var5_6) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Extractable last case doesn't follow previous
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:436)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    public void a(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> b, String string, int n, boolean bl, boolean bl2, boolean bl3, boolean bl4) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new ExtendedGamesLoadedBinderCallback(b), string, n, bl, bl2, bl3, bl4);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<TurnBasedMultiplayer.LoadMatchesResult> b, String string, int n, int[] arrn) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new TurnBasedMatchesLoadedBinderCallbacks(b), string, n, arrn);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public void a(BaseImplementation.b<Leaderboards.SubmitScoreResult> var1_1, String var2_3, long var3_4, String var5_5) {
        if (var1_1 != null) ** GOTO lbl-1000
        var1_1 = null;
        try {}
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
        ** GOTO lbl9
lbl-1000: // 1 sources:
        {
            var1_1 = new SubmitScoreBinderCallbacks((BaseImplementation.b<Leaderboards.SubmitScoreResult>)var1_1);
lbl9: // 2 sources:
            ((IGamesService)this.gS()).a((IGamesCallbacks)var1_1, var2_3, var3_4, var5_5);
            return;
        }
    }

    public void a(BaseImplementation.b<TurnBasedMultiplayer.LeaveMatchResult> b, String string, String string2) {
        try {
            ((IGamesService)this.gS()).c((IGamesCallbacks)new TurnBasedMatchLeftBinderCallbacks(b), string, string2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Leaderboards.LoadPlayerScoreResult> b, String string, String string2, int n, int n2) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new PlayerLeaderboardScoreLoadedBinderCallback(b), string, string2, n, n2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Requests.LoadRequestsResult> b, String string, String string2, int n, int n2, int n3) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new RequestsLoadedBinderCallbacks(b), string, string2, n, n2, n3);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Leaderboards.LoadScoresResult> b, String string, String string2, int n, int n2, int n3, boolean bl) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new LeaderboardScoresLoadedBinderCallback(b), string, string2, n, n2, n3, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    /*
     * Exception decompiling
     */
    public void a(BaseImplementation.b<Players.LoadPlayersResult> var1_1, String var2_3, String var3_4, int var4_5, boolean var5_6, boolean var6_7) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Extractable last case doesn't follow previous
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:436)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(BaseImplementation.b<Snapshots.OpenSnapshotResult> b, String string, String string2, SnapshotMetadataChange snapshotMetadataChange, SnapshotContents snapshotContents) {
        boolean bl = !snapshotContents.isClosed();
        o.a(bl, "SnapshotContents already closed");
        a a = snapshotMetadataChange.lM();
        if (a != null) {
            a.a(this.getContext().getCacheDir());
        }
        Contents contents = snapshotContents.getContents();
        snapshotContents.close();
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new SnapshotOpenedBinderCallbacks(b), string, string2, snapshotMetadataChange, contents);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> b, String string, String string2, boolean bl) {
        try {
            ((IGamesService)this.gS()).b((IGamesCallbacks)new LeaderboardsLoadedBinderCallback(b), string, string2, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Quests.LoadQuestsResult> b, String string, String string2, boolean bl, String[] arrstring) {
        try {
            this.Ws.flush();
            ((IGamesService)this.gS()).a((IGamesCallbacks)new QuestsLoadedBinderCallbacks(b), string, string2, arrstring, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Quests.LoadQuestsResult> b, String string, String string2, int[] arrn, int n, boolean bl) {
        try {
            this.Ws.flush();
            ((IGamesService)this.gS()).a((IGamesCallbacks)new QuestsLoadedBinderCallbacks(b), string, string2, arrn, n, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Requests.UpdateRequestsResult> b, String string, String string2, String[] arrstring) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new RequestsUpdatedBinderCallbacks(b), string, string2, arrstring);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> b, String string, boolean bl) {
        try {
            ((IGamesService)this.gS()).c((IGamesCallbacks)new LeaderboardsLoadedBinderCallback(b), string, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<TurnBasedMultiplayer.UpdateMatchResult> b, String string, byte[] arrby, String string2, ParticipantResult[] arrparticipantResult) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new TurnBasedMatchUpdatedBinderCallbacks(b), string, arrby, string2, arrparticipantResult);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<TurnBasedMultiplayer.UpdateMatchResult> b, String string, byte[] arrby, ParticipantResult[] arrparticipantResult) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new TurnBasedMatchUpdatedBinderCallbacks(b), string, arrby, arrparticipantResult);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Requests.SendRequestResult> b, String string, String[] arrstring, int n, byte[] arrby, int n2) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new RequestSentBinderCallbacks(b), string, arrstring, n, arrby, n2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Players.LoadPlayersResult> b, boolean bl) {
        try {
            ((IGamesService)this.gS()).c((IGamesCallbacks)new PlayersLoadedBinderCallback(b), bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Status> b, boolean bl, Bundle bundle) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new ContactSettingsUpdatedBinderCallback(b), bl, bundle);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public /* varargs */ void a(BaseImplementation.b<Events.LoadEventsResult> b, boolean bl, String ... arrstring) {
        try {
            this.Ws.flush();
            ((IGamesService)this.gS()).a((IGamesCallbacks)new EventsLoadedBinderCallback(b), bl, arrstring);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Quests.LoadQuestsResult> b, int[] arrn, int n, boolean bl) {
        try {
            this.Ws.flush();
            ((IGamesService)this.gS()).a((IGamesCallbacks)new QuestsLoadedBinderCallbacks(b), arrn, n, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<Players.LoadPlayersResult> b, String[] arrstring) {
        try {
            ((IGamesService)this.gS()).c((IGamesCallbacks)new PlayersLoadedBinderCallback(b), arrstring);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        String string = this.getContext().getResources().getConfiguration().locale.toString();
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.google.android.gms.games.key.isHeadless", this.WB.VD);
        bundle.putBoolean("com.google.android.gms.games.key.showConnectingPopup", this.WB.VE);
        bundle.putInt("com.google.android.gms.games.key.connectingPopupGravity", this.WB.VF);
        bundle.putBoolean("com.google.android.gms.games.key.retryingSignIn", this.WB.VG);
        bundle.putInt("com.google.android.gms.games.key.sdkVariant", this.WB.VH);
        bundle.putString("com.google.android.gms.games.key.forceResolveAccountKey", this.WB.VI);
        bundle.putStringArrayList("com.google.android.gms.games.key.proxyApis", this.WB.VJ);
        l.a(e, 6171000, this.getContext().getPackageName(), this.Dd, this.gR(), this.Wt, this.Wx.kO(), string, bundle);
    }

    public void a(OnInvitationReceivedListener object) {
        try {
            object = new InvitationReceivedBinderCallback((OnInvitationReceivedListener)object);
            ((IGamesService)this.gS()).a((IGamesCallbacks)object, this.WA);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(RoomConfig roomConfig) {
        this.kw();
        try {
            RoomBinderCallbacks roomBinderCallbacks = new RoomBinderCallbacks(this, roomConfig.getRoomUpdateListener(), roomConfig.getRoomStatusUpdateListener(), roomConfig.getMessageReceivedListener());
            ((IGamesService)this.gS()).a((IGamesCallbacks)roomBinderCallbacks, this.Wz, roomConfig.getVariant(), roomConfig.getInvitedPlayerIds(), roomConfig.getAutoMatchCriteria(), roomConfig.isSocketEnabled(), this.WA);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(RoomUpdateListener roomUpdateListener, String string) {
        try {
            ((IGamesService)this.gS()).c((IGamesCallbacks)new RoomBinderCallbacks(this, roomUpdateListener), string);
            this.kw();
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(OnTurnBasedMatchUpdateReceivedListener object) {
        try {
            object = new MatchUpdateReceivedBinderCallback((OnTurnBasedMatchUpdateReceivedListener)object);
            ((IGamesService)this.gS()).b((IGamesCallbacks)object, this.WA);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(QuestUpdateListener object) {
        try {
            object = new QuestUpdateBinderCallback((QuestUpdateListener)object);
            ((IGamesService)this.gS()).d((IGamesCallbacks)object, this.WA);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void a(OnRequestReceivedListener object) {
        try {
            object = new RequestReceivedBinderCallback((OnRequestReceivedListener)object);
            ((IGamesService)this.gS()).c((IGamesCallbacks)object, this.WA);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(Snapshot snapshot) {
        SnapshotContents snapshotContents = snapshot.getSnapshotContents();
        boolean bl = !snapshotContents.isClosed();
        o.a(bl, "Snapshot already closed");
        Contents contents = snapshotContents.getContents();
        snapshotContents.close();
        try {
            ((IGamesService)this.gS()).a(contents);
            return;
        }
        catch (RemoteException var1_3) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    protected IGamesService az(IBinder iBinder) {
        return IGamesService.Stub.aB(iBinder);
    }

    public Intent b(int n, int n2, boolean bl) {
        try {
            Intent intent = ((IGamesService)this.gS()).b(n, n2, bl);
            return intent;
        }
        catch (RemoteException var4_5) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent b(int[] object) {
        try {
            object = ((IGamesService)this.gS()).b((int[])object);
            return object;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public void b(BaseImplementation.b<Status> b) {
        try {
            this.Ws.flush();
            ((IGamesService)this.gS()).a(new SignOutCompleteBinderCallbacks(b));
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void b(BaseImplementation.b<Players.LoadPlayersResult> b, int n, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).b((IGamesCallbacks)new PlayersLoadedBinderCallback(b), n, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public void b(BaseImplementation.b<Achievements.UpdateAchievementResult> var1_1, String var2_3) {
        if (var1_1 != null) ** GOTO lbl-1000
        var1_1 = null;
        try {}
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
        ** GOTO lbl9
lbl-1000: // 1 sources:
        {
            var1_1 = new AchievementUpdatedBinderCallback((BaseImplementation.b<Achievements.UpdateAchievementResult>)var1_1);
lbl9: // 2 sources:
            ((IGamesService)this.gS()).a((IGamesCallbacks)var1_1, var2_3, this.Wx.kO(), this.Wx.kN());
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public void b(BaseImplementation.b<Achievements.UpdateAchievementResult> var1_1, String var2_3, int var3_4) {
        if (var1_1 != null) ** GOTO lbl-1000
        var1_1 = null;
        try {}
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
        ** GOTO lbl9
lbl-1000: // 1 sources:
        {
            var1_1 = new AchievementUpdatedBinderCallback((BaseImplementation.b<Achievements.UpdateAchievementResult>)var1_1);
lbl9: // 2 sources:
            ((IGamesService)this.gS()).b((IGamesCallbacks)var1_1, var2_3, var3_4, this.Wx.kO(), this.Wx.kN());
            return;
        }
    }

    public void b(BaseImplementation.b<Leaderboards.LoadScoresResult> b, String string, int n, int n2, int n3, boolean bl) {
        try {
            ((IGamesService)this.gS()).b((IGamesCallbacks)new LeaderboardScoresLoadedBinderCallback(b), string, n, n2, n3, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void b(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> b, String string, int n, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new ExtendedGamesLoadedBinderCallback(b), string, n, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void b(BaseImplementation.b<Quests.ClaimMilestoneResult> b, String string, String string2) {
        try {
            this.Ws.flush();
            ((IGamesService)this.gS()).f(new QuestMilestoneClaimBinderCallbacks(b, string2), string, string2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void b(BaseImplementation.b<Leaderboards.LoadScoresResult> b, String string, String string2, int n, int n2, int n3, boolean bl) {
        try {
            ((IGamesService)this.gS()).b(new LeaderboardScoresLoadedBinderCallback(b), string, string2, n, n2, n3, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void b(BaseImplementation.b<Achievements.LoadAchievementsResult> b, String string, String string2, boolean bl) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new AchievementsLoadedBinderCallback(b), string, string2, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void b(BaseImplementation.b<Snapshots.OpenSnapshotResult> b, String string, boolean bl) {
        try {
            ((IGamesService)this.gS()).e((IGamesCallbacks)new SnapshotOpenedBinderCallbacks(b), string, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void b(BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> b, boolean bl) {
        try {
            ((IGamesService)this.gS()).b((IGamesCallbacks)new LeaderboardsLoadedBinderCallback(b), bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void b(BaseImplementation.b<Quests.LoadQuestsResult> b, boolean bl, String[] arrstring) {
        try {
            this.Ws.flush();
            ((IGamesService)this.gS()).a((IGamesCallbacks)new QuestsLoadedBinderCallbacks(b), arrstring, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void b(BaseImplementation.b<Requests.UpdateRequestsResult> b, String[] arrstring) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new RequestsUpdatedBinderCallbacks(b), arrstring);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void b(RoomConfig roomConfig) {
        this.kw();
        try {
            RoomBinderCallbacks roomBinderCallbacks = new RoomBinderCallbacks(this, roomConfig.getRoomUpdateListener(), roomConfig.getRoomStatusUpdateListener(), roomConfig.getMessageReceivedListener());
            ((IGamesService)this.gS()).a((IGamesCallbacks)roomBinderCallbacks, this.Wz, roomConfig.getInvitationId(), roomConfig.isSocketEnabled(), this.WA);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public Intent bC(String object) {
        try {
            object = ((IGamesService)this.gS()).bC((String)object);
            return object;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public void bD(String string) {
        try {
            ((IGamesService)this.gS()).a(string, this.Wx.kO(), this.Wx.kN());
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public Intent bx(String object) {
        try {
            object = ((IGamesService)this.gS()).bx((String)object);
            return object;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public void by(String string) {
        try {
            ((IGamesService)this.gS()).bJ(string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void c(BaseImplementation.b<Invitations.LoadInvitationsResult> b, int n) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new InvitationsLoadedBinderCallback(b), n);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void c(BaseImplementation.b<Players.LoadPlayersResult> b, int n, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).c((IGamesCallbacks)new PlayersLoadedBinderCallback(b), n, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public void c(BaseImplementation.b<Achievements.UpdateAchievementResult> var1_1, String var2_3) {
        if (var1_1 != null) ** GOTO lbl-1000
        var1_1 = null;
        try {}
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
        ** GOTO lbl9
lbl-1000: // 1 sources:
        {
            var1_1 = new AchievementUpdatedBinderCallback((BaseImplementation.b<Achievements.UpdateAchievementResult>)var1_1);
lbl9: // 2 sources:
            ((IGamesService)this.gS()).b((IGamesCallbacks)var1_1, var2_3, this.Wx.kO(), this.Wx.kN());
            return;
        }
    }

    public void c(BaseImplementation.b<Players.LoadXpStreamResult> b, String string, int n) {
        try {
            ((IGamesService)this.gS()).b((IGamesCallbacks)new PlayerXpStreamLoadedBinderCallback(b), string, n);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void c(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> b, String string, int n, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).e(new ExtendedGamesLoadedBinderCallback(b), string, n, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void c(BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> b, String string, String string2) {
        try {
            ((IGamesService)this.gS()).d((IGamesCallbacks)new TurnBasedMatchInitiatedBinderCallbacks(b), string, string2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void c(BaseImplementation.b<Snapshots.LoadSnapshotsResult> b, String string, String string2, boolean bl) {
        try {
            ((IGamesService)this.gS()).c((IGamesCallbacks)new SnapshotsLoadedBinderCallbacks(b), string, string2, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void c(BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> b, String string, boolean bl) {
        try {
            ((IGamesService)this.gS()).d((IGamesCallbacks)new LeaderboardsLoadedBinderCallback(b), string, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void c(BaseImplementation.b<Achievements.LoadAchievementsResult> b, boolean bl) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new AchievementsLoadedBinderCallback(b), bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void c(BaseImplementation.b<Requests.UpdateRequestsResult> b, String[] arrstring) {
        try {
            ((IGamesService)this.gS()).b((IGamesCallbacks)new RequestsUpdatedBinderCallbacks(b), arrstring);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected /* varargs */ void c(String ... arrstring) {
        int n = 0;
        boolean bl = false;
        boolean bl2 = false;
        do {
            boolean bl3;
            if (n >= arrstring.length) {
                o.a(bl2, "Games APIs requires %s to function.", "https://www.googleapis.com/auth/games");
                return;
            }
            String string = arrstring[n];
            if (string.equals("https://www.googleapis.com/auth/games")) {
                bl3 = true;
            } else {
                bl3 = bl2;
                if (string.equals("https://www.googleapis.com/auth/games.firstparty")) {
                    bl = true;
                    bl3 = bl2;
                }
            }
            ++n;
            bl2 = bl3;
        } while (true);
    }

    @Override
    public void connect() {
        this.jZ();
        super.connect();
    }

    public int d(byte[] arrby, String string) {
        try {
            int n = ((IGamesService)this.gS()).b(arrby, string, null);
            return n;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return -1;
        }
    }

    public void d(BaseImplementation.b<Players.LoadPlayersResult> b, int n, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).e(new PlayersLoadedBinderCallback(b), n, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void d(BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> b, String string) {
        try {
            ((IGamesService)this.gS()).l(new TurnBasedMatchInitiatedBinderCallbacks(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void d(BaseImplementation.b<Players.LoadXpStreamResult> b, String string, int n) {
        try {
            ((IGamesService)this.gS()).c((IGamesCallbacks)new PlayerXpStreamLoadedBinderCallback(b), string, n);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void d(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> b, String string, int n, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).f(new ExtendedGamesLoadedBinderCallback(b), string, n, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void d(BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> b, String string, String string2) {
        try {
            ((IGamesService)this.gS()).e((IGamesCallbacks)new TurnBasedMatchInitiatedBinderCallbacks(b), string, string2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void d(BaseImplementation.b<Notifications.GameMuteStatusChangeResult> b, String string, boolean bl) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new GameMuteStatusChangedBinderCallback(b), string, bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void d(BaseImplementation.b<Events.LoadEventsResult> b, boolean bl) {
        try {
            this.Ws.flush();
            ((IGamesService)this.gS()).f((IGamesCallbacks)new EventsLoadedBinderCallback(b), bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void dB(int n) {
        this.Wx.setGravity(n);
    }

    public void dC(int n) {
        try {
            ((IGamesService)this.gS()).dC(n);
            return;
        }
        catch (RemoteException var2_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void disconnect() {
        this.Wy = false;
        if (this.isConnected()) {
            try {
                IGamesService iGamesService = (IGamesService)this.gS();
                iGamesService.kx();
                this.Ws.flush();
                iGamesService.q(this.WA);
            }
            catch (RemoteException var1_2) {
                GamesLog.p("GamesClientImpl", "Failed to notify client disconnect.");
            }
        }
        this.kw();
        super.disconnect();
    }

    public void e(BaseImplementation.b<Players.LoadPlayersResult> b, int n, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).d(new PlayersLoadedBinderCallback(b), n, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void e(BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> b, String string) {
        try {
            ((IGamesService)this.gS()).m(new TurnBasedMatchInitiatedBinderCallbacks(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void e(BaseImplementation.b<Invitations.LoadInvitationsResult> b, String string, int n) {
        try {
            ((IGamesService)this.gS()).b((IGamesCallbacks)new InvitationsLoadedBinderCallback(b), string, n, false);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void e(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> b, String string, int n, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).c(new ExtendedGamesLoadedBinderCallback(b), string, n, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void e(BaseImplementation.b<Snapshots.LoadSnapshotsResult> b, boolean bl) {
        try {
            ((IGamesService)this.gS()).d((IGamesCallbacks)new SnapshotsLoadedBinderCallbacks(b), bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void f(BaseImplementation.b<GamesMetadata.LoadGamesResult> b) {
        try {
            ((IGamesService)this.gS()).d(new GamesLoadedBinderCallback(b));
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void f(BaseImplementation.b<TurnBasedMultiplayer.LeaveMatchResult> b, String string) {
        try {
            ((IGamesService)this.gS()).o(new TurnBasedMatchLeftBinderCallbacks(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void f(BaseImplementation.b<Requests.LoadRequestSummariesResult> b, String string, int n) {
        try {
            ((IGamesService)this.gS()).a((IGamesCallbacks)new RequestSummariesLoadedBinderCallbacks(b), string, n);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void f(BaseImplementation.b<Players.LoadPlayersResult> b, String string, int n, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).b((IGamesCallbacks)new PlayersLoadedBinderCallback(b), string, n, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void f(BaseImplementation.b<Players.LoadProfileSettingsResult> b, boolean bl) {
        try {
            ((IGamesService)this.gS()).g((IGamesCallbacks)new ProfileSettingsLoadedBinderCallback(b), bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    @Override
    public Bundle fC() {
        Bundle bundle;
        block3 : {
            try {
                bundle = ((IGamesService)this.gS()).fC();
                if (bundle == null) break block3;
            }
            catch (RemoteException var1_2) {
                GamesLog.p("GamesClientImpl", "service died");
                return null;
            }
            bundle.setClassLoader(GamesClientImpl.class.getClassLoader());
        }
        return bundle;
    }

    public void g(BaseImplementation.b<Players.LoadOwnerCoverPhotoUrisResult> b) {
        try {
            ((IGamesService)this.gS()).j(new OwnerCoverPhotoUrisLoadedBinderCallback(b));
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void g(BaseImplementation.b<TurnBasedMultiplayer.CancelMatchResult> b, String string) {
        try {
            ((IGamesService)this.gS()).n(new TurnBasedMatchCanceledBinderCallbacks(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void g(BaseImplementation.b<Players.LoadPlayersResult> b, String string, int n, boolean bl, boolean bl2) {
        try {
            ((IGamesService)this.gS()).b((IGamesCallbacks)new PlayersLoadedBinderCallback(b), string, null, n, bl, bl2);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void g(BaseImplementation.b<Status> b, boolean bl) {
        try {
            ((IGamesService)this.gS()).h((IGamesCallbacks)new ProfileSettingsUpdatedBinderCallback(b), bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.games.internal.IGamesService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.games.service.START";
    }

    public void h(BaseImplementation.b<Acls.LoadAclResult> b) {
        try {
            ((IGamesService)this.gS()).h(new NotifyAclLoadedBinderCallback(b));
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void h(BaseImplementation.b<TurnBasedMultiplayer.LoadMatchResult> b, String string) {
        try {
            ((IGamesService)this.gS()).p(new TurnBasedMatchLoadedBinderCallbacks(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void h(BaseImplementation.b<Notifications.ContactSettingLoadResult> b, boolean bl) {
        try {
            ((IGamesService)this.gS()).e((IGamesCallbacks)new ContactSettingsLoadedBinderCallback(b), bl);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    @Deprecated
    public void i(BaseImplementation.b<Notifications.ContactSettingLoadResult> b) {
        try {
            ((IGamesService)this.gS()).e((IGamesCallbacks)new ContactSettingsLoadedBinderCallback(b), false);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void i(BaseImplementation.b<Quests.AcceptQuestResult> b, String string) {
        try {
            this.Ws.flush();
            ((IGamesService)this.gS()).u(new QuestAcceptedBinderCallbacks(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.az(iBinder);
    }

    public void j(BaseImplementation.b<Notifications.InboxCountResult> b) {
        try {
            ((IGamesService)this.gS()).t(new InboxCountsLoadedBinderCallback(b), null);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void j(BaseImplementation.b<Snapshots.DeleteSnapshotResult> b, String string) {
        try {
            ((IGamesService)this.gS()).r(new SnapshotDeletedBinderCallbacks(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void k(View view) {
        this.Wx.l(view);
    }

    public void k(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> b, String string) {
        try {
            ((IGamesService)this.gS()).e((IGamesCallbacks)new ExtendedGamesLoadedBinderCallback(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public String ka() {
        try {
            String string = ((IGamesService)this.gS()).ka();
            return string;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public String kb() {
        try {
            String string = ((IGamesService)this.gS()).kb();
            return string;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public Player kc() {
        Object object;
        block9 : {
            this.dJ();
            // MONITORENTER : this
            object = this.Wv;
            if (object != null) return this.Wv;
            object = new PlayerBuffer(((IGamesService)this.gS()).kz());
            {
                catch (RemoteException remoteException) {
                    GamesLog.p("GamesClientImpl", "service died");
                    return this.Wv;
                }
            }
            if (object.getCount() <= 0) break block9;
            this.Wv = (PlayerEntity)object.get(0).freeze();
        }
        object.release();
        // MONITOREXIT : this
        return this.Wv;
        catch (Throwable throwable) {
            object.release();
            throw throwable;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public Game kd() {
        Object object;
        block9 : {
            this.dJ();
            // MONITORENTER : this
            object = this.Ww;
            if (object != null) return this.Ww;
            object = new GameBuffer(((IGamesService)this.gS()).kB());
            {
                catch (RemoteException remoteException) {
                    GamesLog.p("GamesClientImpl", "service died");
                    return this.Ww;
                }
            }
            if (object.getCount() <= 0) break block9;
            this.Ww = (GameEntity)object.get(0).freeze();
        }
        object.release();
        // MONITOREXIT : this
        return this.Ww;
        catch (Throwable throwable) {
            object.release();
            throw throwable;
        }
    }

    public Intent ke() {
        try {
            Intent intent = ((IGamesService)this.gS()).ke();
            return intent;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent kf() {
        try {
            Intent intent = ((IGamesService)this.gS()).kf();
            return intent;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent kg() {
        try {
            Intent intent = ((IGamesService)this.gS()).kg();
            return intent;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent kh() {
        try {
            Intent intent = ((IGamesService)this.gS()).kh();
            return intent;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public void ki() {
        try {
            ((IGamesService)this.gS()).r(this.WA);
            return;
        }
        catch (RemoteException var1_1) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void kj() {
        try {
            ((IGamesService)this.gS()).s(this.WA);
            return;
        }
        catch (RemoteException var1_1) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void kk() {
        try {
            ((IGamesService)this.gS()).u(this.WA);
            return;
        }
        catch (RemoteException var1_1) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void kl() {
        try {
            ((IGamesService)this.gS()).t(this.WA);
            return;
        }
        catch (RemoteException var1_1) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public Intent km() {
        try {
            Intent intent = ((IGamesService)this.gS()).km();
            return intent;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent kn() {
        try {
            Intent intent = ((IGamesService)this.gS()).kn();
            return intent;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public int ko() {
        try {
            int n = ((IGamesService)this.gS()).ko();
            return n;
        }
        catch (RemoteException var2_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return 4368;
        }
    }

    public String kp() {
        try {
            String string = ((IGamesService)this.gS()).kp();
            return string;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public int kq() {
        try {
            int n = ((IGamesService)this.gS()).kq();
            return n;
        }
        catch (RemoteException var2_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return -1;
        }
    }

    public Intent kr() {
        try {
            Intent intent = ((IGamesService)this.gS()).kr();
            return intent;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return null;
        }
    }

    public int ks() {
        try {
            int n = ((IGamesService)this.gS()).ks();
            return n;
        }
        catch (RemoteException var2_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return -1;
        }
    }

    public int kt() {
        try {
            int n = ((IGamesService)this.gS()).kt();
            return n;
        }
        catch (RemoteException var2_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return -1;
        }
    }

    public int ku() {
        try {
            int n = ((IGamesService)this.gS()).ku();
            return n;
        }
        catch (RemoteException var2_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return -1;
        }
    }

    public int kv() {
        try {
            int n = ((IGamesService)this.gS()).kv();
            return n;
        }
        catch (RemoteException var2_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return -1;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void kx() {
        if (!this.isConnected()) return;
        try {
            ((IGamesService)this.gS()).kx();
            return;
        }
        catch (RemoteException var1_1) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void l(BaseImplementation.b<GamesMetadata.LoadGameInstancesResult> b, String string) {
        try {
            ((IGamesService)this.gS()).f((IGamesCallbacks)new GameInstancesLoadedBinderCallback(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void m(BaseImplementation.b<GamesMetadata.LoadGameSearchSuggestionsResult> b, String string) {
        try {
            ((IGamesService)this.gS()).q(new GameSearchSuggestionsLoadedBinderCallback(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void n(BaseImplementation.b<Players.LoadXpForGameCategoriesResult> b, String string) {
        try {
            ((IGamesService)this.gS()).s(new PlayerXpForGameCategoriesLoadedBinderCallback(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void n(String string, int n) {
        this.Ws.n(string, n);
    }

    public void o(BaseImplementation.b<Invitations.LoadInvitationsResult> b, String string) {
        try {
            ((IGamesService)this.gS()).k(new InvitationsLoadedBinderCallback(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void o(String string, int n) {
        try {
            ((IGamesService)this.gS()).o(string, n);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    @Override
    public void onConnected(Bundle bundle) {
        if (this.Wy) {
            this.Wx.kM();
            this.Wy = false;
        }
    }

    @Override
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.Wy = false;
    }

    @Override
    public void onConnectionSuspended(int n) {
    }

    public void p(BaseImplementation.b<Status> b, String string) {
        try {
            ((IGamesService)this.gS()).j(new NotifyAclUpdatedBinderCallback(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void p(String string, int n) {
        try {
            ((IGamesService)this.gS()).p(string, n);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public void q(BaseImplementation.b<Notifications.GameMuteStatusLoadResult> b, String string) {
        try {
            ((IGamesService)this.gS()).i(new GameMuteStatusLoadedBinderCallback(b), string);
            return;
        }
        catch (RemoteException var1_2) {
            GamesLog.p("GamesClientImpl", "service died");
            return;
        }
    }

    public RealTimeSocket t(String object, String string) {
        block3 : {
            if (!(string != null && ParticipantUtils.bV(string))) {
                throw new IllegalArgumentException("Bad participant ID");
            }
            RealTimeSocket realTimeSocket = this.Wu.get(string);
            if (realTimeSocket != null) {
                object = realTimeSocket;
                if (!realTimeSocket.isClosed()) break block3;
            }
            object = this.bz(string);
        }
        return object;
    }

    private abstract class AbstractPeerStatusCallback
    extends AbstractRoomStatusCallback {
        private final ArrayList<String> WD;

        AbstractPeerStatusCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] arrstring) {
            super(roomStatusUpdateListener, dataHolder);
            this.WD = new ArrayList();
            int n = arrstring.length;
            for (int i = 0; i < n; ++i) {
                this.WD.add(arrstring[i]);
            }
        }

        @Override
        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            this.a(roomStatusUpdateListener, room, this.WD);
        }

        protected abstract void a(RoomStatusUpdateListener var1, Room var2, ArrayList<String> var3);
    }

    private abstract class AbstractRoomCallback
    extends d<RoomUpdateListener> {
        AbstractRoomCallback(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            super(roomUpdateListener, dataHolder);
        }

        protected void a(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            this.a(roomUpdateListener, GamesClientImpl.this.R(dataHolder), dataHolder.getStatusCode());
        }

        protected abstract void a(RoomUpdateListener var1, Room var2, int var3);
    }

    private abstract class AbstractRoomStatusCallback
    extends d<RoomStatusUpdateListener> {
        AbstractRoomStatusCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            super(roomStatusUpdateListener, dataHolder);
        }

        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            this.a(roomStatusUpdateListener, GamesClientImpl.this.R(dataHolder));
        }

        protected abstract void a(RoomStatusUpdateListener var1, Room var2);
    }

    private static final class AcceptQuestResultImpl
    extends com.google.android.gms.common.api.a
    implements Quests.AcceptQuestResult {
        private final Quest WE;

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        AcceptQuestResultImpl(DataHolder object) {
            super((DataHolder)object);
            object = new QuestBuffer((DataHolder)object);
            try {
                if (object.getCount() > 0) {
                    this.WE = new QuestEntity((Quest)object.get(0));
                    do {
                        return;
                        break;
                    } while (true);
                }
                this.WE = null;
                return;
            }
            finally {
                object.release();
            }
        }

        @Override
        public Quest getQuest() {
            return this.WE;
        }
    }

    private final class AchievementUpdatedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Achievements.UpdateAchievementResult> De;

        AchievementUpdatedBinderCallback(BaseImplementation.b<Achievements.UpdateAchievementResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void g(int n, String string) {
            this.De.b(new UpdateAchievementResultImpl(n, string));
        }
    }

    private final class AchievementsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Achievements.LoadAchievementsResult> De;

        AchievementsLoadedBinderCallback(BaseImplementation.b<Achievements.LoadAchievementsResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void c(DataHolder dataHolder) {
            this.De.b(new LoadAchievementsResultImpl(dataHolder));
        }
    }

    private static final class CancelMatchResultImpl
    implements TurnBasedMultiplayer.CancelMatchResult {
        private final Status CM;
        private final String WF;

        CancelMatchResultImpl(Status status, String string) {
            this.CM = status;
            this.WF = string;
        }

        @Override
        public String getMatchId() {
            return this.WF;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    private static final class ClaimMilestoneResultImpl
    extends com.google.android.gms.common.api.a
    implements Quests.ClaimMilestoneResult {
        private final Quest WE;
        private final Milestone WG;

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        ClaimMilestoneResultImpl(DataHolder object, String string) {
            block8 : {
                super((DataHolder)object);
                object = new QuestBuffer((DataHolder)object);
                if (object.getCount() <= 0) break block8;
                this.WE = new QuestEntity((Quest)object.get(0));
                List<Milestone> list = this.WE.lJ();
                int n = list.size();
                for (int i = 0; i < n; ++i) {
                    if (!list.get(i).getMilestoneId().equals(string)) continue;
                    this.WG = list.get(i);
                    object.release();
                    return;
                }
                this.WG = null;
                do {
                    return;
                    break;
                } while (true);
            }
            try {
                this.WG = null;
                this.WE = null;
                return;
            }
            catch (Throwable var2_3) {
                throw var2_3;
            }
            finally {
                object.release();
            }
        }

        @Override
        public Milestone getMilestone() {
            return this.WG;
        }

        @Override
        public Quest getQuest() {
            return this.WE;
        }
    }

    private static final class CommitSnapshotResultImpl
    extends com.google.android.gms.common.api.a
    implements Snapshots.CommitSnapshotResult {
        private final SnapshotMetadata WH;

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        CommitSnapshotResultImpl(DataHolder object) {
            super((DataHolder)object);
            object = new SnapshotMetadataBuffer((DataHolder)object);
            try {
                if (object.getCount() > 0) {
                    this.WH = new SnapshotMetadataEntity(object.get(0));
                    do {
                        return;
                        break;
                    } while (true);
                }
                this.WH = null;
                return;
            }
            finally {
                object.release();
            }
        }

        @Override
        public SnapshotMetadata getSnapshotMetadata() {
            return this.WH;
        }
    }

    private final class ConnectedToRoomCallback
    extends AbstractRoomStatusCallback {
        ConnectedToRoomCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            super(roomStatusUpdateListener, dataHolder);
        }

        @Override
        public void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onConnectedToRoom(room);
        }
    }

    private static final class ContactSettingLoadResultImpl
    extends com.google.android.gms.common.api.a
    implements Notifications.ContactSettingLoadResult {
        ContactSettingLoadResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private final class ContactSettingsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Notifications.ContactSettingLoadResult> De;

        ContactSettingsLoadedBinderCallback(BaseImplementation.b<Notifications.ContactSettingLoadResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void D(DataHolder dataHolder) {
            this.De.b(new ContactSettingLoadResultImpl(dataHolder));
        }
    }

    private final class ContactSettingsUpdatedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Status> De;

        ContactSettingsUpdatedBinderCallback(BaseImplementation.b<Status> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void dy(int n) {
            this.De.b(new Status(n));
        }
    }

    private static final class DeleteSnapshotResultImpl
    implements Snapshots.DeleteSnapshotResult {
        private final Status CM;
        private final String WI;

        DeleteSnapshotResultImpl(int n, String string) {
            this.CM = new Status(n);
            this.WI = string;
        }

        @Override
        public String getSnapshotId() {
            return this.WI;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    private final class DisconnectedFromRoomCallback
    extends AbstractRoomStatusCallback {
        DisconnectedFromRoomCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            super(roomStatusUpdateListener, dataHolder);
        }

        @Override
        public void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onDisconnectedFromRoom(room);
        }
    }

    private final class EventsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Events.LoadEventsResult> De;

        EventsLoadedBinderCallback(BaseImplementation.b<Events.LoadEventsResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void d(DataHolder dataHolder) {
            this.De.b(new LoadEventResultImpl(dataHolder));
        }
    }

    private final class ExtendedGamesLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> De;

        ExtendedGamesLoadedBinderCallback(BaseImplementation.b<GamesMetadata.LoadExtendedGamesResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void j(DataHolder dataHolder) {
            this.De.b(new LoadExtendedGamesResultImpl(dataHolder));
        }
    }

    private class GameClientEventIncrementCache
    extends EventIncrementCache {
        public GameClientEventIncrementCache() {
            super(GamesClientImpl.this.getContext().getMainLooper(), 1000);
        }

        @Override
        protected void q(String string, int n) {
            try {
                if (GamesClientImpl.this.isConnected()) {
                    ((IGamesService)GamesClientImpl.this.gS()).n(string, n);
                    return;
                }
                GamesLog.q("GamesClientImpl", "Unable to increment event " + string + " by " + n + " because the games client is no longer connected");
                return;
            }
            catch (RemoteException var1_2) {
                GamesLog.p("GamesClientImpl", "service died");
                return;
            }
        }
    }

    private final class GameInstancesLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<GamesMetadata.LoadGameInstancesResult> De;

        GameInstancesLoadedBinderCallback(BaseImplementation.b<GamesMetadata.LoadGameInstancesResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void k(DataHolder dataHolder) {
            this.De.b(new LoadGameInstancesResultImpl(dataHolder));
        }
    }

    private static final class GameMuteStatusChangeResultImpl
    implements Notifications.GameMuteStatusChangeResult {
        private final Status CM;
        private final String WJ;
        private final boolean WK;

        public GameMuteStatusChangeResultImpl(int n, String string, boolean bl) {
            this.CM = new Status(n);
            this.WJ = string;
            this.WK = bl;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    private final class GameMuteStatusChangedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Notifications.GameMuteStatusChangeResult> De;

        GameMuteStatusChangedBinderCallback(BaseImplementation.b<Notifications.GameMuteStatusChangeResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void a(int n, String string, boolean bl) {
            this.De.b(new GameMuteStatusChangeResultImpl(n, string, bl));
        }
    }

    private static final class GameMuteStatusLoadResultImpl
    implements Notifications.GameMuteStatusLoadResult {
        private final Status CM;
        private final String WJ;
        private final boolean WK;

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public GameMuteStatusLoadResultImpl(DataHolder dataHolder) {
            try {
                this.CM = new Status(dataHolder.getStatusCode());
                if (dataHolder.getCount() > 0) {
                    this.WJ = dataHolder.c("external_game_id", 0, 0);
                    this.WK = dataHolder.d("muted", 0, 0);
                    do {
                        return;
                        break;
                    } while (true);
                }
                this.WJ = null;
                this.WK = false;
                return;
            }
            finally {
                dataHolder.close();
            }
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    private final class GameMuteStatusLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Notifications.GameMuteStatusLoadResult> De;

        GameMuteStatusLoadedBinderCallback(BaseImplementation.b<Notifications.GameMuteStatusLoadResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void B(DataHolder dataHolder) {
            this.De.b(new GameMuteStatusLoadResultImpl(dataHolder));
        }
    }

    private final class GameSearchSuggestionsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<GamesMetadata.LoadGameSearchSuggestionsResult> De;

        GameSearchSuggestionsLoadedBinderCallback(BaseImplementation.b<GamesMetadata.LoadGameSearchSuggestionsResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void l(DataHolder dataHolder) {
            this.De.b(new LoadGameSearchSuggestionsResultImpl(dataHolder));
        }
    }

    private final class GamesLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<GamesMetadata.LoadGamesResult> De;

        GamesLoadedBinderCallback(BaseImplementation.b<GamesMetadata.LoadGamesResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void i(DataHolder dataHolder) {
            this.De.b(new LoadGamesResultImpl(dataHolder));
        }
    }

    private static final class InboxCountResultImpl
    implements Notifications.InboxCountResult {
        private final Status CM;
        private final Bundle WL;

        InboxCountResultImpl(Status status, Bundle bundle) {
            this.CM = status;
            this.WL = bundle;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    private final class InboxCountsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Notifications.InboxCountResult> De;

        InboxCountsLoadedBinderCallback(BaseImplementation.b<Notifications.InboxCountResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void f(int n, Bundle bundle) {
            bundle.setClassLoader(this.getClass().getClassLoader());
            Status status = new Status(n);
            this.De.b(new InboxCountResultImpl(status, bundle));
        }
    }

    private static final class InitiateMatchResultImpl
    extends TurnBasedMatchResult
    implements TurnBasedMultiplayer.InitiateMatchResult {
        InitiateMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private final class InvitationReceivedBinderCallback
    extends AbstractGamesCallbacks {
        private final OnInvitationReceivedListener WM;

        InvitationReceivedBinderCallback(OnInvitationReceivedListener onInvitationReceivedListener) {
            this.WM = onInvitationReceivedListener;
        }

        @Override
        public void n(DataHolder parcelable) {
            InvitationBuffer invitationBuffer;
            block4 : {
                invitationBuffer = new InvitationBuffer((DataHolder)parcelable);
                parcelable = null;
                if (invitationBuffer.getCount() > 0) {
                    parcelable = (Invitation)((Invitation)invitationBuffer.get(0)).freeze();
                }
                if (parcelable == null) break block4;
                GamesClientImpl.this.a((e.b)new InvitationReceivedCallback(this.WM, (Invitation)parcelable));
            }
            return;
            finally {
                invitationBuffer.release();
            }
        }

        @Override
        public void onInvitationRemoved(String string) {
            GamesClientImpl.this.a((e.b)new InvitationRemovedCallback(this.WM, string));
        }
    }

    private final class InvitationReceivedCallback
    extends b<OnInvitationReceivedListener> {
        private final Invitation WN;

        InvitationReceivedCallback(OnInvitationReceivedListener onInvitationReceivedListener, Invitation invitation) {
            super(onInvitationReceivedListener);
            this.WN = invitation;
        }

        protected void b(OnInvitationReceivedListener onInvitationReceivedListener) {
            onInvitationReceivedListener.onInvitationReceived(this.WN);
        }

        protected /* synthetic */ void g(Object object) {
            this.b((OnInvitationReceivedListener)object);
        }

        protected void gT() {
        }
    }

    private final class InvitationRemovedCallback
    extends b<OnInvitationReceivedListener> {
        private final String WO;

        InvitationRemovedCallback(OnInvitationReceivedListener onInvitationReceivedListener, String string) {
            super(onInvitationReceivedListener);
            this.WO = string;
        }

        protected void b(OnInvitationReceivedListener onInvitationReceivedListener) {
            onInvitationReceivedListener.onInvitationRemoved(this.WO);
        }

        protected /* synthetic */ void g(Object object) {
            this.b((OnInvitationReceivedListener)object);
        }

        protected void gT() {
        }
    }

    private final class InvitationsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Invitations.LoadInvitationsResult> De;

        InvitationsLoadedBinderCallback(BaseImplementation.b<Invitations.LoadInvitationsResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void m(DataHolder dataHolder) {
            this.De.b(new LoadInvitationsResultImpl(dataHolder));
        }
    }

    private final class JoinedRoomCallback
    extends AbstractRoomCallback {
        public JoinedRoomCallback(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            super(roomUpdateListener, dataHolder);
        }

        @Override
        public void a(RoomUpdateListener roomUpdateListener, Room room, int n) {
            roomUpdateListener.onJoinedRoom(n, room);
        }
    }

    private static final class LeaderboardMetadataResultImpl
    extends com.google.android.gms.common.api.a
    implements Leaderboards.LeaderboardMetadataResult {
        private final LeaderboardBuffer WP;

        LeaderboardMetadataResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.WP = new LeaderboardBuffer(dataHolder);
        }

        @Override
        public LeaderboardBuffer getLeaderboards() {
            return this.WP;
        }
    }

    private final class LeaderboardScoresLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Leaderboards.LoadScoresResult> De;

        LeaderboardScoresLoadedBinderCallback(BaseImplementation.b<Leaderboards.LoadScoresResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void a(DataHolder dataHolder, DataHolder dataHolder2) {
            this.De.b(new LoadScoresResultImpl(dataHolder, dataHolder2));
        }
    }

    private final class LeaderboardsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> De;

        LeaderboardsLoadedBinderCallback(BaseImplementation.b<Leaderboards.LeaderboardMetadataResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void e(DataHolder dataHolder) {
            this.De.b(new LeaderboardMetadataResultImpl(dataHolder));
        }
    }

    private static final class LeaveMatchResultImpl
    extends TurnBasedMatchResult
    implements TurnBasedMultiplayer.LeaveMatchResult {
        LeaveMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private final class LeftRoomCallback
    extends b<RoomUpdateListener> {
        private final int HF;
        private final String WQ;

        LeftRoomCallback(RoomUpdateListener roomUpdateListener, int n, String string) {
            super(roomUpdateListener);
            this.HF = n;
            this.WQ = string;
        }

        public void a(RoomUpdateListener roomUpdateListener) {
            roomUpdateListener.onLeftRoom(this.HF, this.WQ);
        }

        public /* synthetic */ void g(Object object) {
            this.a((RoomUpdateListener)object);
        }

        protected void gT() {
        }
    }

    private static final class LoadAchievementsResultImpl
    extends com.google.android.gms.common.api.a
    implements Achievements.LoadAchievementsResult {
        private final AchievementBuffer WR;

        LoadAchievementsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.WR = new AchievementBuffer(dataHolder);
        }

        @Override
        public AchievementBuffer getAchievements() {
            return this.WR;
        }
    }

    private static final class LoadAclResultImpl
    extends com.google.android.gms.common.api.a
    implements Acls.LoadAclResult {
        LoadAclResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private static final class LoadEventResultImpl
    extends com.google.android.gms.common.api.a
    implements Events.LoadEventsResult {
        private final EventBuffer WS;

        LoadEventResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.WS = new EventBuffer(dataHolder);
        }

        @Override
        public EventBuffer getEvents() {
            return this.WS;
        }
    }

    private static final class LoadExtendedGamesResultImpl
    extends com.google.android.gms.common.api.a
    implements GamesMetadata.LoadExtendedGamesResult {
        private final ExtendedGameBuffer WT;

        LoadExtendedGamesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.WT = new ExtendedGameBuffer(dataHolder);
        }
    }

    private static final class LoadGameInstancesResultImpl
    extends com.google.android.gms.common.api.a
    implements GamesMetadata.LoadGameInstancesResult {
        private final GameInstanceBuffer WU;

        LoadGameInstancesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.WU = new GameInstanceBuffer(dataHolder);
        }
    }

    private static final class LoadGameSearchSuggestionsResultImpl
    extends com.google.android.gms.common.api.a
    implements GamesMetadata.LoadGameSearchSuggestionsResult {
        LoadGameSearchSuggestionsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private static final class LoadGamesResultImpl
    extends com.google.android.gms.common.api.a
    implements GamesMetadata.LoadGamesResult {
        private final GameBuffer WV;

        LoadGamesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.WV = new GameBuffer(dataHolder);
        }

        @Override
        public GameBuffer getGames() {
            return this.WV;
        }
    }

    private static final class LoadInvitationsResultImpl
    extends com.google.android.gms.common.api.a
    implements Invitations.LoadInvitationsResult {
        private final InvitationBuffer WW;

        LoadInvitationsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.WW = new InvitationBuffer(dataHolder);
        }

        @Override
        public InvitationBuffer getInvitations() {
            return this.WW;
        }
    }

    private static final class LoadMatchResultImpl
    extends TurnBasedMatchResult
    implements TurnBasedMultiplayer.LoadMatchResult {
        LoadMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private static final class LoadMatchesResultImpl
    implements TurnBasedMultiplayer.LoadMatchesResult {
        private final Status CM;
        private final LoadMatchesResponse WX;

        LoadMatchesResultImpl(Status status, Bundle bundle) {
            this.CM = status;
            this.WX = new LoadMatchesResponse(bundle);
        }

        @Override
        public LoadMatchesResponse getMatches() {
            return this.WX;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }

        @Override
        public void release() {
            this.WX.close();
        }
    }

    private static final class LoadOwnerCoverPhotoUrisResultImpl
    implements Players.LoadOwnerCoverPhotoUrisResult {
        private final Status CM;
        private final Bundle Nh;

        LoadOwnerCoverPhotoUrisResultImpl(int n, Bundle bundle) {
            this.CM = new Status(n);
            this.Nh = bundle;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    private static final class LoadPlayerScoreResultImpl
    extends com.google.android.gms.common.api.a
    implements Leaderboards.LoadPlayerScoreResult {
        private final LeaderboardScoreEntity WY;

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        LoadPlayerScoreResultImpl(DataHolder object) {
            super((DataHolder)object);
            object = new LeaderboardScoreBuffer((DataHolder)object);
            try {
                if (object.getCount() > 0) {
                    this.WY = (LeaderboardScoreEntity)object.get(0).freeze();
                    do {
                        return;
                        break;
                    } while (true);
                }
                this.WY = null;
                return;
            }
            finally {
                object.release();
            }
        }

        @Override
        public LeaderboardScore getScore() {
            return this.WY;
        }
    }

    private static final class LoadPlayersResultImpl
    extends com.google.android.gms.common.api.a
    implements Players.LoadPlayersResult {
        private final PlayerBuffer WZ;

        LoadPlayersResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.WZ = new PlayerBuffer(dataHolder);
        }

        @Override
        public PlayerBuffer getPlayers() {
            return this.WZ;
        }
    }

    private static final class LoadProfileSettingsResultImpl
    extends com.google.android.gms.common.api.a
    implements Players.LoadProfileSettingsResult {
        private final boolean Wp;
        private final boolean Xa;

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        LoadProfileSettingsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            try {
                if (dataHolder.getCount() > 0) {
                    int n = dataHolder.ar(0);
                    this.Wp = dataHolder.d("profile_visible", 0, n);
                    this.Xa = dataHolder.d("profile_visibility_explicitly_set", 0, n);
                    do {
                        return;
                        break;
                    } while (true);
                }
                this.Wp = true;
                this.Xa = false;
                return;
            }
            finally {
                dataHolder.close();
            }
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }

        @Override
        public boolean isProfileVisible() {
            return this.Wp;
        }

        @Override
        public boolean isVisibilityExplicitlySet() {
            return this.Xa;
        }
    }

    private static final class LoadQuestsResultImpl
    extends com.google.android.gms.common.api.a
    implements Quests.LoadQuestsResult {
        private final DataHolder II;

        LoadQuestsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.II = dataHolder;
        }

        @Override
        public QuestBuffer getQuests() {
            return new QuestBuffer(this.II);
        }
    }

    private static final class LoadRequestSummariesResultImpl
    extends com.google.android.gms.common.api.a
    implements Requests.LoadRequestSummariesResult {
        LoadRequestSummariesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private static final class LoadRequestsResultImpl
    implements Requests.LoadRequestsResult {
        private final Status CM;
        private final Bundle Xb;

        LoadRequestsResultImpl(Status status, Bundle bundle) {
            this.CM = status;
            this.Xb = bundle;
        }

        @Override
        public GameRequestBuffer getRequests(int n) {
            String string = RequestType.dH(n);
            if (!this.Xb.containsKey(string)) {
                return null;
            }
            return new GameRequestBuffer((DataHolder)this.Xb.get(string));
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }

        @Override
        public void release() {
            for (String string : this.Xb.keySet()) {
                DataHolder object = (DataHolder)this.Xb.getParcelable(string);
                if (object == null) continue;
                object.close();
            }
        }
    }

    private static final class LoadScoresResultImpl
    extends com.google.android.gms.common.api.a
    implements Leaderboards.LoadScoresResult {
        private final LeaderboardEntity Xc;
        private final LeaderboardScoreBuffer Xd;

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        LoadScoresResultImpl(DataHolder object, DataHolder dataHolder) {
            super(dataHolder);
            object = new LeaderboardBuffer((DataHolder)object);
            try {
                this.Xc = object.getCount() > 0 ? (LeaderboardEntity)((Leaderboard)object.get(0)).freeze() : null;
                this.Xd = new LeaderboardScoreBuffer(dataHolder);
                return;
            }
            finally {
                object.release();
            }
        }

        @Override
        public Leaderboard getLeaderboard() {
            return this.Xc;
        }

        @Override
        public LeaderboardScoreBuffer getScores() {
            return this.Xd;
        }
    }

    private static final class LoadSnapshotsResultImpl
    extends com.google.android.gms.common.api.a
    implements Snapshots.LoadSnapshotsResult {
        LoadSnapshotsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override
        public SnapshotMetadataBuffer getSnapshots() {
            return new SnapshotMetadataBuffer(this.II);
        }
    }

    private static final class LoadXpForGameCategoriesResultImpl
    implements Players.LoadXpForGameCategoriesResult {
        private final Status CM;
        private final List<String> Xe;
        private final Bundle Xf;

        LoadXpForGameCategoriesResultImpl(Status status, Bundle bundle) {
            this.CM = status;
            this.Xe = bundle.getStringArrayList("game_category_list");
            this.Xf = bundle;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    private static final class LoadXpStreamResultImpl
    extends com.google.android.gms.common.api.a
    implements Players.LoadXpStreamResult {
        private final ExperienceEventBuffer Xg;

        LoadXpStreamResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Xg = new ExperienceEventBuffer(dataHolder);
        }
    }

    private final class MatchRemovedCallback
    extends b<OnTurnBasedMatchUpdateReceivedListener> {
        private final String Xh;

        MatchRemovedCallback(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener, String string) {
            super(onTurnBasedMatchUpdateReceivedListener);
            this.Xh = string;
        }

        protected void b(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
            onTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchRemoved(this.Xh);
        }

        protected /* synthetic */ void g(Object object) {
            this.b((OnTurnBasedMatchUpdateReceivedListener)object);
        }

        protected void gT() {
        }
    }

    private final class MatchUpdateReceivedBinderCallback
    extends AbstractGamesCallbacks {
        private final OnTurnBasedMatchUpdateReceivedListener Xi;

        MatchUpdateReceivedBinderCallback(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
            this.Xi = onTurnBasedMatchUpdateReceivedListener;
        }

        @Override
        public void onTurnBasedMatchRemoved(String string) {
            GamesClientImpl.this.a((e.b)new MatchRemovedCallback(this.Xi, string));
        }

        @Override
        public void t(DataHolder parcelable) {
            TurnBasedMatchBuffer turnBasedMatchBuffer;
            block4 : {
                turnBasedMatchBuffer = new TurnBasedMatchBuffer((DataHolder)parcelable);
                parcelable = null;
                if (turnBasedMatchBuffer.getCount() > 0) {
                    parcelable = (TurnBasedMatch)((TurnBasedMatch)turnBasedMatchBuffer.get(0)).freeze();
                }
                if (parcelable == null) break block4;
                GamesClientImpl.this.a((e.b)new MatchUpdateReceivedCallback(this.Xi, (TurnBasedMatch)parcelable));
            }
            return;
            finally {
                turnBasedMatchBuffer.release();
            }
        }
    }

    private final class MatchUpdateReceivedCallback
    extends b<OnTurnBasedMatchUpdateReceivedListener> {
        private final TurnBasedMatch Xj;

        MatchUpdateReceivedCallback(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener, TurnBasedMatch turnBasedMatch) {
            super(onTurnBasedMatchUpdateReceivedListener);
            this.Xj = turnBasedMatch;
        }

        protected void b(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
            onTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchReceived(this.Xj);
        }

        protected /* synthetic */ void g(Object object) {
            this.b((OnTurnBasedMatchUpdateReceivedListener)object);
        }

        protected void gT() {
        }
    }

    private final class MessageReceivedCallback
    extends b<RealTimeMessageReceivedListener> {
        private final RealTimeMessage Xk;

        MessageReceivedCallback(RealTimeMessageReceivedListener realTimeMessageReceivedListener, RealTimeMessage realTimeMessage) {
            super(realTimeMessageReceivedListener);
            this.Xk = realTimeMessage;
        }

        public void a(RealTimeMessageReceivedListener realTimeMessageReceivedListener) {
            if (realTimeMessageReceivedListener != null) {
                realTimeMessageReceivedListener.onRealTimeMessageReceived(this.Xk);
            }
        }

        public /* synthetic */ void g(Object object) {
            this.a((RealTimeMessageReceivedListener)object);
        }

        protected void gT() {
        }
    }

    private final class NearbyPlayerDetectedCallback
    extends b<OnNearbyPlayerDetectedListener> {
        private final Player Xl;

        protected void a(OnNearbyPlayerDetectedListener onNearbyPlayerDetectedListener) {
            onNearbyPlayerDetectedListener.a(this.Xl);
        }

        protected /* synthetic */ void g(Object object) {
            this.a((OnNearbyPlayerDetectedListener)object);
        }

        protected void gT() {
        }
    }

    private final class NotifyAclLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Acls.LoadAclResult> De;

        NotifyAclLoadedBinderCallback(BaseImplementation.b<Acls.LoadAclResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void C(DataHolder dataHolder) {
            this.De.b(new LoadAclResultImpl(dataHolder));
        }
    }

    private final class NotifyAclUpdatedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Status> De;

        NotifyAclUpdatedBinderCallback(BaseImplementation.b<Status> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void dx(int n) {
            this.De.b(new Status(n));
        }
    }

    private static final class OpenSnapshotResultImpl
    extends com.google.android.gms.common.api.a
    implements Snapshots.OpenSnapshotResult {
        private final Snapshot Xm;
        private final String Xn;
        private final Snapshot Xo;
        private final Contents Xp;
        private final SnapshotContents Xq;

        OpenSnapshotResultImpl(DataHolder dataHolder, Contents contents) {
            this(dataHolder, null, contents, null, null);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        OpenSnapshotResultImpl(DataHolder dataHolder, String string, Contents contents, Contents contents2, Contents contents3) {
            boolean bl = true;
            super(dataHolder);
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            if (snapshotMetadataBuffer.getCount() == 0) {
                this.Xm = null;
                this.Xo = null;
            } else if (snapshotMetadataBuffer.getCount() == 1) {
                if (dataHolder.getStatusCode() == 4004) {
                    bl = false;
                }
                com.google.android.gms.common.internal.a.I(bl);
                this.Xm = new SnapshotEntity(new SnapshotMetadataEntity(snapshotMetadataBuffer.get(0)), new SnapshotContents(contents));
                this.Xo = null;
            } else {
                this.Xm = new SnapshotEntity(new SnapshotMetadataEntity(snapshotMetadataBuffer.get(0)), new SnapshotContents(contents));
                this.Xo = new SnapshotEntity(new SnapshotMetadataEntity(snapshotMetadataBuffer.get(1)), new SnapshotContents(contents2));
            }
            this.Xn = string;
            this.Xp = contents3;
            this.Xq = new SnapshotContents(contents3);
            return;
            finally {
                snapshotMetadataBuffer.release();
            }
        }

        @Override
        public String getConflictId() {
            return this.Xn;
        }

        @Override
        public Snapshot getConflictingSnapshot() {
            return this.Xo;
        }

        @Deprecated
        @Override
        public Contents getResolutionContents() {
            return this.Xp;
        }

        @Override
        public SnapshotContents getResolutionSnapshotContents() {
            return this.Xq;
        }

        @Override
        public Snapshot getSnapshot() {
            return this.Xm;
        }
    }

    private final class OwnerCoverPhotoUrisLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Players.LoadOwnerCoverPhotoUrisResult> De;

        OwnerCoverPhotoUrisLoadedBinderCallback(BaseImplementation.b<Players.LoadOwnerCoverPhotoUrisResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void d(int n, Bundle bundle) {
            bundle.setClassLoader(this.getClass().getClassLoader());
            this.De.b(new LoadOwnerCoverPhotoUrisResultImpl(n, bundle));
        }
    }

    private final class P2PConnectedCallback
    extends b<RoomStatusUpdateListener> {
        private final String Xr;

        P2PConnectedCallback(RoomStatusUpdateListener roomStatusUpdateListener, String string) {
            super(roomStatusUpdateListener);
            this.Xr = string;
        }

        public void a(RoomStatusUpdateListener roomStatusUpdateListener) {
            if (roomStatusUpdateListener != null) {
                roomStatusUpdateListener.onP2PConnected(this.Xr);
            }
        }

        public /* synthetic */ void g(Object object) {
            this.a((RoomStatusUpdateListener)object);
        }

        protected void gT() {
        }
    }

    private final class P2PDisconnectedCallback
    extends b<RoomStatusUpdateListener> {
        private final String Xr;

        P2PDisconnectedCallback(RoomStatusUpdateListener roomStatusUpdateListener, String string) {
            super(roomStatusUpdateListener);
            this.Xr = string;
        }

        public void a(RoomStatusUpdateListener roomStatusUpdateListener) {
            if (roomStatusUpdateListener != null) {
                roomStatusUpdateListener.onP2PDisconnected(this.Xr);
            }
        }

        public /* synthetic */ void g(Object object) {
            this.a((RoomStatusUpdateListener)object);
        }

        protected void gT() {
        }
    }

    private final class PeerConnectedCallback
    extends AbstractPeerStatusCallback {
        PeerConnectedCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] arrstring) {
            super(roomStatusUpdateListener, dataHolder, arrstring);
        }

        @Override
        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeersConnected(room, arrayList);
        }
    }

    private final class PeerDeclinedCallback
    extends AbstractPeerStatusCallback {
        PeerDeclinedCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] arrstring) {
            super(roomStatusUpdateListener, dataHolder, arrstring);
        }

        @Override
        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerDeclined(room, arrayList);
        }
    }

    private final class PeerDisconnectedCallback
    extends AbstractPeerStatusCallback {
        PeerDisconnectedCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] arrstring) {
            super(roomStatusUpdateListener, dataHolder, arrstring);
        }

        @Override
        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeersDisconnected(room, arrayList);
        }
    }

    private final class PeerInvitedToRoomCallback
    extends AbstractPeerStatusCallback {
        PeerInvitedToRoomCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] arrstring) {
            super(roomStatusUpdateListener, dataHolder, arrstring);
        }

        @Override
        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerInvitedToRoom(room, arrayList);
        }
    }

    private final class PeerJoinedRoomCallback
    extends AbstractPeerStatusCallback {
        PeerJoinedRoomCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] arrstring) {
            super(roomStatusUpdateListener, dataHolder, arrstring);
        }

        @Override
        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerJoined(room, arrayList);
        }
    }

    private final class PeerLeftRoomCallback
    extends AbstractPeerStatusCallback {
        PeerLeftRoomCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] arrstring) {
            super(roomStatusUpdateListener, dataHolder, arrstring);
        }

        @Override
        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerLeft(room, arrayList);
        }
    }

    private final class PlayerLeaderboardScoreLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Leaderboards.LoadPlayerScoreResult> De;

        PlayerLeaderboardScoreLoadedBinderCallback(BaseImplementation.b<Leaderboards.LoadPlayerScoreResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void E(DataHolder dataHolder) {
            this.De.b(new LoadPlayerScoreResultImpl(dataHolder));
        }
    }

    private final class PlayerXpForGameCategoriesLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Players.LoadXpForGameCategoriesResult> De;

        PlayerXpForGameCategoriesLoadedBinderCallback(BaseImplementation.b<Players.LoadXpForGameCategoriesResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void e(int n, Bundle bundle) {
            bundle.setClassLoader(this.getClass().getClassLoader());
            Status status = new Status(n);
            this.De.b(new LoadXpForGameCategoriesResultImpl(status, bundle));
        }
    }

    final class PlayerXpStreamLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Players.LoadXpStreamResult> De;

        PlayerXpStreamLoadedBinderCallback(BaseImplementation.b<Players.LoadXpStreamResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void P(DataHolder dataHolder) {
            this.De.b(new LoadXpStreamResultImpl(dataHolder));
        }
    }

    private final class PlayersLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Players.LoadPlayersResult> De;

        PlayersLoadedBinderCallback(BaseImplementation.b<Players.LoadPlayersResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void g(DataHolder dataHolder) {
            this.De.b(new LoadPlayersResultImpl(dataHolder));
        }

        @Override
        public void h(DataHolder dataHolder) {
            this.De.b(new LoadPlayersResultImpl(dataHolder));
        }
    }

    final class ProfileSettingsLoadedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Players.LoadProfileSettingsResult> De;

        ProfileSettingsLoadedBinderCallback(BaseImplementation.b<Players.LoadProfileSettingsResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void Q(DataHolder dataHolder) {
            this.De.b(new LoadProfileSettingsResultImpl(dataHolder));
        }
    }

    private final class ProfileSettingsUpdatedBinderCallback
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Status> De;

        ProfileSettingsUpdatedBinderCallback(BaseImplementation.b<Status> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void dz(int n) {
            this.De.b(new Status(n));
        }
    }

    private final class QuestAcceptedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Quests.AcceptQuestResult> Xs;

        public QuestAcceptedBinderCallbacks(BaseImplementation.b<Quests.AcceptQuestResult> b) {
            this.Xs = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void L(DataHolder dataHolder) {
            this.Xs.b(new AcceptQuestResultImpl(dataHolder));
        }
    }

    private final class QuestCompletedCallback
    extends b<QuestUpdateListener> {
        private final Quest WE;

        QuestCompletedCallback(QuestUpdateListener questUpdateListener, Quest quest) {
            super(questUpdateListener);
            this.WE = quest;
        }

        protected void b(QuestUpdateListener questUpdateListener) {
            questUpdateListener.onQuestCompleted(this.WE);
        }

        protected /* synthetic */ void g(Object object) {
            this.b((QuestUpdateListener)object);
        }

        protected void gT() {
        }
    }

    private final class QuestMilestoneClaimBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Quests.ClaimMilestoneResult> Xt;
        private final String Xu;

        public QuestMilestoneClaimBinderCallbacks(BaseImplementation.b<Quests.ClaimMilestoneResult> b, String string) {
            this.Xt = o.b(b, (Object)"Holder must not be null");
            this.Xu = o.b(string, (Object)"MilestoneId must not be null");
        }

        @Override
        public void K(DataHolder dataHolder) {
            this.Xt.b(new ClaimMilestoneResultImpl(dataHolder, this.Xu));
        }
    }

    private final class QuestUpdateBinderCallback
    extends AbstractGamesCallbacks {
        private final QuestUpdateListener Xv;

        QuestUpdateBinderCallback(QuestUpdateListener questUpdateListener) {
            this.Xv = questUpdateListener;
        }

        private Quest S(DataHolder parcelable) {
            QuestBuffer questBuffer = new QuestBuffer((DataHolder)parcelable);
            parcelable = null;
            try {
                if (questBuffer.getCount() > 0) {
                    parcelable = (Quest)((Quest)questBuffer.get(0)).freeze();
                }
                return parcelable;
            }
            finally {
                questBuffer.release();
            }
        }

        @Override
        public void M(DataHolder parcelable) {
            if ((parcelable = this.S((DataHolder)parcelable)) != null) {
                GamesClientImpl.this.a((e.b)new QuestCompletedCallback(this.Xv, (Quest)parcelable));
            }
        }
    }

    private final class QuestsLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Quests.LoadQuestsResult> Xw;

        public QuestsLoadedBinderCallbacks(BaseImplementation.b<Quests.LoadQuestsResult> b) {
            this.Xw = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void O(DataHolder dataHolder) {
            this.Xw.b(new LoadQuestsResultImpl(dataHolder));
        }
    }

    private final class RealTimeMessageSentCallback
    extends b<RealTimeMultiplayer.ReliableMessageSentCallback> {
        private final int HF;
        private final String Xx;
        private final int Xy;

        RealTimeMessageSentCallback(RealTimeMultiplayer.ReliableMessageSentCallback reliableMessageSentCallback, int n, int n2, String string) {
            super(reliableMessageSentCallback);
            this.HF = n;
            this.Xy = n2;
            this.Xx = string;
        }

        public void a(RealTimeMultiplayer.ReliableMessageSentCallback reliableMessageSentCallback) {
            if (reliableMessageSentCallback != null) {
                reliableMessageSentCallback.onRealTimeMessageSent(this.HF, this.Xy, this.Xx);
            }
        }

        public /* synthetic */ void g(Object object) {
            this.a((RealTimeMultiplayer.ReliableMessageSentCallback)object);
        }

        protected void gT() {
        }
    }

    private final class RealTimeReliableMessageBinderCallbacks
    extends AbstractGamesCallbacks {
        final RealTimeMultiplayer.ReliableMessageSentCallback Xz;

        public RealTimeReliableMessageBinderCallbacks(RealTimeMultiplayer.ReliableMessageSentCallback reliableMessageSentCallback) {
            this.Xz = reliableMessageSentCallback;
        }

        @Override
        public void b(int n, int n2, String string) {
            GamesClientImpl.this.a((e.b)new RealTimeMessageSentCallback(this.Xz, n, n2, string));
        }
    }

    private final class RequestReceivedBinderCallback
    extends AbstractGamesCallbacks {
        private final OnRequestReceivedListener XA;

        RequestReceivedBinderCallback(OnRequestReceivedListener onRequestReceivedListener) {
            this.XA = onRequestReceivedListener;
        }

        @Override
        public void o(DataHolder parcelable) {
            GameRequestBuffer gameRequestBuffer;
            block4 : {
                gameRequestBuffer = new GameRequestBuffer((DataHolder)parcelable);
                parcelable = null;
                if (gameRequestBuffer.getCount() > 0) {
                    parcelable = (GameRequest)((GameRequest)gameRequestBuffer.get(0)).freeze();
                }
                if (parcelable == null) break block4;
                GamesClientImpl.this.a((e.b)new RequestReceivedCallback(this.XA, (GameRequest)parcelable));
            }
            return;
            finally {
                gameRequestBuffer.release();
            }
        }

        @Override
        public void onRequestRemoved(String string) {
            GamesClientImpl.this.a((e.b)new RequestRemovedCallback(this.XA, string));
        }
    }

    private final class RequestReceivedCallback
    extends b<OnRequestReceivedListener> {
        private final GameRequest XB;

        RequestReceivedCallback(OnRequestReceivedListener onRequestReceivedListener, GameRequest gameRequest) {
            super(onRequestReceivedListener);
            this.XB = gameRequest;
        }

        protected void b(OnRequestReceivedListener onRequestReceivedListener) {
            onRequestReceivedListener.onRequestReceived(this.XB);
        }

        protected /* synthetic */ void g(Object object) {
            this.b((OnRequestReceivedListener)object);
        }

        protected void gT() {
        }
    }

    private final class RequestRemovedCallback
    extends b<OnRequestReceivedListener> {
        private final String XC;

        RequestRemovedCallback(OnRequestReceivedListener onRequestReceivedListener, String string) {
            super(onRequestReceivedListener);
            this.XC = string;
        }

        protected void b(OnRequestReceivedListener onRequestReceivedListener) {
            onRequestReceivedListener.onRequestRemoved(this.XC);
        }

        protected /* synthetic */ void g(Object object) {
            this.b((OnRequestReceivedListener)object);
        }

        protected void gT() {
        }
    }

    private final class RequestSentBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Requests.SendRequestResult> XD;

        public RequestSentBinderCallbacks(BaseImplementation.b<Requests.SendRequestResult> b) {
            this.XD = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void G(DataHolder dataHolder) {
            this.XD.b(new SendRequestResultImpl(dataHolder));
        }
    }

    private final class RequestSummariesLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Requests.LoadRequestSummariesResult> XE;

        public RequestSummariesLoadedBinderCallbacks(BaseImplementation.b<Requests.LoadRequestSummariesResult> b) {
            this.XE = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void H(DataHolder dataHolder) {
            this.XE.b(new LoadRequestSummariesResultImpl(dataHolder));
        }
    }

    private final class RequestsLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Requests.LoadRequestsResult> XF;

        public RequestsLoadedBinderCallbacks(BaseImplementation.b<Requests.LoadRequestsResult> b) {
            this.XF = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void c(int n, Bundle bundle) {
            bundle.setClassLoader(this.getClass().getClassLoader());
            Status status = new Status(n);
            this.XF.b(new LoadRequestsResultImpl(status, bundle));
        }
    }

    private final class RequestsUpdatedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Requests.UpdateRequestsResult> XG;

        public RequestsUpdatedBinderCallbacks(BaseImplementation.b<Requests.UpdateRequestsResult> b) {
            this.XG = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void F(DataHolder dataHolder) {
            this.XG.b(new UpdateRequestsResultImpl(dataHolder));
        }
    }

    private final class RoomAutoMatchingCallback
    extends AbstractRoomStatusCallback {
        RoomAutoMatchingCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            super(roomStatusUpdateListener, dataHolder);
        }

        @Override
        public void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onRoomAutoMatching(room);
        }
    }

    private final class RoomBinderCallbacks
    extends AbstractGamesCallbacks {
        final /* synthetic */ GamesClientImpl WC;
        private final RoomUpdateListener XH;
        private final RoomStatusUpdateListener XI;
        private final RealTimeMessageReceivedListener XJ;

        public RoomBinderCallbacks(GamesClientImpl gamesClientImpl, RoomUpdateListener roomUpdateListener) {
            this.WC = gamesClientImpl;
            this.XH = o.b(roomUpdateListener, (Object)"Callbacks must not be null");
            this.XI = null;
            this.XJ = null;
        }

        public RoomBinderCallbacks(GamesClientImpl gamesClientImpl, RoomUpdateListener roomUpdateListener, RoomStatusUpdateListener roomStatusUpdateListener, RealTimeMessageReceivedListener realTimeMessageReceivedListener) {
            this.WC = gamesClientImpl;
            this.XH = o.b(roomUpdateListener, (Object)"Callbacks must not be null");
            this.XI = roomStatusUpdateListener;
            this.XJ = realTimeMessageReceivedListener;
        }

        @Override
        public void A(DataHolder dataHolder) {
            this.WC.a((e.b)this.WC.new DisconnectedFromRoomCallback(this.XI, dataHolder));
        }

        @Override
        public void a(DataHolder dataHolder, String[] arrstring) {
            this.WC.a((e.b)this.WC.new PeerInvitedToRoomCallback(this.XI, dataHolder, arrstring));
        }

        @Override
        public void b(DataHolder dataHolder, String[] arrstring) {
            this.WC.a((e.b)this.WC.new PeerJoinedRoomCallback(this.XI, dataHolder, arrstring));
        }

        @Override
        public void c(DataHolder dataHolder, String[] arrstring) {
            this.WC.a((e.b)this.WC.new PeerLeftRoomCallback(this.XI, dataHolder, arrstring));
        }

        @Override
        public void d(DataHolder dataHolder, String[] arrstring) {
            this.WC.a((e.b)this.WC.new PeerDeclinedCallback(this.XI, dataHolder, arrstring));
        }

        @Override
        public void e(DataHolder dataHolder, String[] arrstring) {
            this.WC.a((e.b)this.WC.new PeerConnectedCallback(this.XI, dataHolder, arrstring));
        }

        @Override
        public void f(DataHolder dataHolder, String[] arrstring) {
            this.WC.a((e.b)this.WC.new PeerDisconnectedCallback(this.XI, dataHolder, arrstring));
        }

        @Override
        public void onLeftRoom(int n, String string) {
            this.WC.a((e.b)this.WC.new LeftRoomCallback(this.XH, n, string));
        }

        @Override
        public void onP2PConnected(String string) {
            this.WC.a((e.b)this.WC.new P2PConnectedCallback(this.XI, string));
        }

        @Override
        public void onP2PDisconnected(String string) {
            this.WC.a((e.b)this.WC.new P2PDisconnectedCallback(this.XI, string));
        }

        @Override
        public void onRealTimeMessageReceived(RealTimeMessage realTimeMessage) {
            this.WC.a((e.b)this.WC.new MessageReceivedCallback(this.XJ, realTimeMessage));
        }

        @Override
        public void u(DataHolder dataHolder) {
            this.WC.a((e.b)this.WC.new RoomCreatedCallback(this.XH, dataHolder));
        }

        @Override
        public void v(DataHolder dataHolder) {
            this.WC.a((e.b)this.WC.new JoinedRoomCallback(this.XH, dataHolder));
        }

        @Override
        public void w(DataHolder dataHolder) {
            this.WC.a((e.b)this.WC.new RoomConnectingCallback(this.XI, dataHolder));
        }

        @Override
        public void x(DataHolder dataHolder) {
            this.WC.a((e.b)this.WC.new RoomAutoMatchingCallback(this.XI, dataHolder));
        }

        @Override
        public void y(DataHolder dataHolder) {
            this.WC.a((e.b)this.WC.new RoomConnectedCallback(this.XH, dataHolder));
        }

        @Override
        public void z(DataHolder dataHolder) {
            this.WC.a((e.b)this.WC.new ConnectedToRoomCallback(this.XI, dataHolder));
        }
    }

    private final class RoomConnectedCallback
    extends AbstractRoomCallback {
        RoomConnectedCallback(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            super(roomUpdateListener, dataHolder);
        }

        @Override
        public void a(RoomUpdateListener roomUpdateListener, Room room, int n) {
            roomUpdateListener.onRoomConnected(n, room);
        }
    }

    private final class RoomConnectingCallback
    extends AbstractRoomStatusCallback {
        RoomConnectingCallback(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            super(roomStatusUpdateListener, dataHolder);
        }

        @Override
        public void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onRoomConnecting(room);
        }
    }

    private final class RoomCreatedCallback
    extends AbstractRoomCallback {
        public RoomCreatedCallback(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            super(roomUpdateListener, dataHolder);
        }

        @Override
        public void a(RoomUpdateListener roomUpdateListener, Room room, int n) {
            roomUpdateListener.onRoomCreated(n, room);
        }
    }

    private static final class SendRequestResultImpl
    extends com.google.android.gms.common.api.a
    implements Requests.SendRequestResult {
        private final GameRequest XB;

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        SendRequestResultImpl(DataHolder object) {
            super((DataHolder)object);
            object = new GameRequestBuffer((DataHolder)object);
            try {
                if (object.getCount() > 0) {
                    this.XB = (GameRequest)((GameRequest)object.get(0)).freeze();
                    do {
                        return;
                        break;
                    } while (true);
                }
                this.XB = null;
                return;
            }
            finally {
                object.release();
            }
        }
    }

    private final class SignOutCompleteBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Status> De;

        public SignOutCompleteBinderCallbacks(BaseImplementation.b<Status> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void fp() {
            Status status = new Status(0);
            this.De.b(status);
        }
    }

    private final class SnapshotCommittedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Snapshots.CommitSnapshotResult> XK;

        public SnapshotCommittedBinderCallbacks(BaseImplementation.b<Snapshots.CommitSnapshotResult> b) {
            this.XK = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void J(DataHolder dataHolder) {
            this.XK.b(new CommitSnapshotResultImpl(dataHolder));
        }
    }

    final class SnapshotDeletedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Snapshots.DeleteSnapshotResult> De;

        public SnapshotDeletedBinderCallbacks(BaseImplementation.b<Snapshots.DeleteSnapshotResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void i(int n, String string) {
            this.De.b(new DeleteSnapshotResultImpl(n, string));
        }
    }

    private final class SnapshotOpenedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Snapshots.OpenSnapshotResult> XL;

        public SnapshotOpenedBinderCallbacks(BaseImplementation.b<Snapshots.OpenSnapshotResult> b) {
            this.XL = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void a(DataHolder dataHolder, Contents contents) {
            this.XL.b(new OpenSnapshotResultImpl(dataHolder, contents));
        }

        @Override
        public void a(DataHolder dataHolder, String string, Contents contents, Contents contents2, Contents contents3) {
            this.XL.b(new OpenSnapshotResultImpl(dataHolder, string, contents, contents2, contents3));
        }
    }

    private final class SnapshotsLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Snapshots.LoadSnapshotsResult> XM;

        public SnapshotsLoadedBinderCallbacks(BaseImplementation.b<Snapshots.LoadSnapshotsResult> b) {
            this.XM = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void I(DataHolder dataHolder) {
            this.XM.b(new LoadSnapshotsResultImpl(dataHolder));
        }
    }

    private final class SubmitScoreBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<Leaderboards.SubmitScoreResult> De;

        public SubmitScoreBinderCallbacks(BaseImplementation.b<Leaderboards.SubmitScoreResult> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void f(DataHolder dataHolder) {
            this.De.b(new SubmitScoreResultImpl(dataHolder));
        }
    }

    private static final class SubmitScoreResultImpl
    extends com.google.android.gms.common.api.a
    implements Leaderboards.SubmitScoreResult {
        private final ScoreSubmissionData XN;

        public SubmitScoreResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            try {
                this.XN = new ScoreSubmissionData(dataHolder);
                return;
            }
            finally {
                dataHolder.close();
            }
        }

        @Override
        public ScoreSubmissionData getScoreData() {
            return this.XN;
        }
    }

    private final class TurnBasedMatchCanceledBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<TurnBasedMultiplayer.CancelMatchResult> XO;

        public TurnBasedMatchCanceledBinderCallbacks(BaseImplementation.b<TurnBasedMultiplayer.CancelMatchResult> b) {
            this.XO = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void h(int n, String string) {
            Status status = new Status(n);
            this.XO.b(new CancelMatchResultImpl(status, string));
        }
    }

    private final class TurnBasedMatchInitiatedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> XP;

        public TurnBasedMatchInitiatedBinderCallbacks(BaseImplementation.b<TurnBasedMultiplayer.InitiateMatchResult> b) {
            this.XP = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void q(DataHolder dataHolder) {
            this.XP.b(new InitiateMatchResultImpl(dataHolder));
        }
    }

    private final class TurnBasedMatchLeftBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<TurnBasedMultiplayer.LeaveMatchResult> XQ;

        public TurnBasedMatchLeftBinderCallbacks(BaseImplementation.b<TurnBasedMultiplayer.LeaveMatchResult> b) {
            this.XQ = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void s(DataHolder dataHolder) {
            this.XQ.b(new LeaveMatchResultImpl(dataHolder));
        }
    }

    private final class TurnBasedMatchLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<TurnBasedMultiplayer.LoadMatchResult> XR;

        public TurnBasedMatchLoadedBinderCallbacks(BaseImplementation.b<TurnBasedMultiplayer.LoadMatchResult> b) {
            this.XR = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void p(DataHolder dataHolder) {
            this.XR.b(new LoadMatchResultImpl(dataHolder));
        }
    }

    private static abstract class TurnBasedMatchResult
    extends com.google.android.gms.common.api.a {
        final TurnBasedMatch Xj;

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        TurnBasedMatchResult(DataHolder object) {
            super((DataHolder)object);
            object = new TurnBasedMatchBuffer((DataHolder)object);
            try {
                if (object.getCount() > 0) {
                    this.Xj = (TurnBasedMatch)((TurnBasedMatch)object.get(0)).freeze();
                    do {
                        return;
                        break;
                    } while (true);
                }
                this.Xj = null;
                return;
            }
            finally {
                object.release();
            }
        }

        public TurnBasedMatch getMatch() {
            return this.Xj;
        }
    }

    private final class TurnBasedMatchUpdatedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<TurnBasedMultiplayer.UpdateMatchResult> XS;

        public TurnBasedMatchUpdatedBinderCallbacks(BaseImplementation.b<TurnBasedMultiplayer.UpdateMatchResult> b) {
            this.XS = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void r(DataHolder dataHolder) {
            this.XS.b(new UpdateMatchResultImpl(dataHolder));
        }
    }

    private final class TurnBasedMatchesLoadedBinderCallbacks
    extends AbstractGamesCallbacks {
        private final BaseImplementation.b<TurnBasedMultiplayer.LoadMatchesResult> XT;

        public TurnBasedMatchesLoadedBinderCallbacks(BaseImplementation.b<TurnBasedMultiplayer.LoadMatchesResult> b) {
            this.XT = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void b(int n, Bundle bundle) {
            bundle.setClassLoader(this.getClass().getClassLoader());
            Status status = new Status(n);
            this.XT.b(new LoadMatchesResultImpl(status, bundle));
        }
    }

    private static final class UpdateAchievementResultImpl
    implements Achievements.UpdateAchievementResult {
        private final Status CM;
        private final String Wa;

        UpdateAchievementResultImpl(int n, String string) {
            this.CM = new Status(n);
            this.Wa = string;
        }

        @Override
        public String getAchievementId() {
            return this.Wa;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    private static final class UpdateMatchResultImpl
    extends TurnBasedMatchResult
    implements TurnBasedMultiplayer.UpdateMatchResult {
        UpdateMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private static final class UpdateRequestsResultImpl
    extends com.google.android.gms.common.api.a
    implements Requests.UpdateRequestsResult {
        private final RequestUpdateOutcomes XU;

        UpdateRequestsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.XU = RequestUpdateOutcomes.V(dataHolder);
        }

        @Override
        public Set<String> getRequestIds() {
            return this.XU.getRequestIds();
        }

        @Override
        public int getRequestOutcome(String string) {
            return this.XU.getRequestOutcome(string);
        }
    }

}

