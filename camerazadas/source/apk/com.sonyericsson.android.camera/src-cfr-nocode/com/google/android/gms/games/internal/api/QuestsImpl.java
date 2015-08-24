/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.quest.Quests;

/*
 * Exception performing whole class analysis ignored.
 */
public final class QuestsImpl
implements Quests {
    public QuestsImpl();

    @Override
    public PendingResult<Quests.AcceptQuestResult> accept(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<Quests.ClaimMilestoneResult> claim(GoogleApiClient var1, String var2, String var3);

    @Override
    public Intent getQuestIntent(GoogleApiClient var1, String var2);

    @Override
    public Intent getQuestsIntent(GoogleApiClient var1, int[] var2);

    @Override
    public PendingResult<Quests.LoadQuestsResult> load(GoogleApiClient var1, int[] var2, int var3, boolean var4);

    @Override
    public /* varargs */ PendingResult<Quests.LoadQuestsResult> loadByIds(GoogleApiClient var1, boolean var2, String ... var3);

    @Override
    public void registerQuestUpdateListener(GoogleApiClient var1, QuestUpdateListener var2);

    @Override
    public void showStateChangedPopup(GoogleApiClient var1, String var2);

    @Override
    public void unregisterQuestUpdateListener(GoogleApiClient var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class AcceptImpl
    extends Games.BaseGamesApiMethodImpl<Quests.AcceptQuestResult> {
        private AcceptImpl();

        /* synthetic */ AcceptImpl(com.google.android.gms.games.internal.api.QuestsImpl$1 var1);

        public Quests.AcceptQuestResult ah(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class ClaimImpl
    extends Games.BaseGamesApiMethodImpl<Quests.ClaimMilestoneResult> {
        private ClaimImpl();

        /* synthetic */ ClaimImpl(com.google.android.gms.games.internal.api.QuestsImpl$1 var1);

        public Quests.ClaimMilestoneResult ai(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadsImpl
    extends Games.BaseGamesApiMethodImpl<Quests.LoadQuestsResult> {
        private LoadsImpl();

        /* synthetic */ LoadsImpl(com.google.android.gms.games.internal.api.QuestsImpl$1 var1);

        public Quests.LoadQuestsResult aj(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

}

