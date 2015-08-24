/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.QuestUpdateListener;

public interface Quests {
    public static final String EXTRA_QUEST = "quest";
    public static final int SELECT_ACCEPTED = 3;
    public static final int SELECT_COMPLETED = 4;
    public static final int SELECT_COMPLETED_UNCLAIMED = 101;
    public static final int SELECT_ENDING_SOON = 102;
    public static final int SELECT_EXPIRED = 5;
    public static final int SELECT_FAILED = 6;
    public static final int SELECT_OPEN = 2;
    public static final int SELECT_RECENTLY_FAILED = 103;
    public static final int SELECT_UPCOMING = 1;
    public static final int SORT_ORDER_ENDING_SOON_FIRST = 1;
    public static final int SORT_ORDER_RECENTLY_UPDATED_FIRST = 0;
    public static final int[] adb = new int[]{1, 2, 3, 4, 101, 5, 102, 6, 103};

    public PendingResult<AcceptQuestResult> accept(GoogleApiClient var1, String var2);

    public PendingResult<ClaimMilestoneResult> claim(GoogleApiClient var1, String var2, String var3);

    public Intent getQuestIntent(GoogleApiClient var1, String var2);

    public Intent getQuestsIntent(GoogleApiClient var1, int[] var2);

    public PendingResult<LoadQuestsResult> load(GoogleApiClient var1, int[] var2, int var3, boolean var4);

    public /* varargs */ PendingResult<LoadQuestsResult> loadByIds(GoogleApiClient var1, boolean var2, String ... var3);

    public void registerQuestUpdateListener(GoogleApiClient var1, QuestUpdateListener var2);

    public void showStateChangedPopup(GoogleApiClient var1, String var2);

    public void unregisterQuestUpdateListener(GoogleApiClient var1);

    public static interface AcceptQuestResult
    extends Result {
        public Quest getQuest();
    }

    public static interface ClaimMilestoneResult
    extends Result {
        public Milestone getMilestone();

        public Quest getQuest();
    }

    public static interface LoadQuestsResult
    extends Releasable,
    Result {
        public QuestBuffer getQuests();
    }

}

