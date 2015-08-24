/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.quest.Milestone;
import java.util.List;

public interface Quest
extends Parcelable,
Freezable<Quest> {
    public static final int[] QUEST_STATE_ALL;
    public static final String[] QUEST_STATE_NON_TERMINAL;
    public static final int STATE_ACCEPTED = 3;
    public static final int STATE_COMPLETED = 4;
    public static final int STATE_EXPIRED = 5;
    public static final int STATE_FAILED = 6;
    public static final int STATE_OPEN = 2;
    public static final int STATE_UPCOMING = 1;
    public static final long UNSET_QUEST_TIMESTAMP = -1;

    static;

    public long getAcceptedTimestamp();

    public Uri getBannerImageUri();

    @Deprecated
    public String getBannerImageUrl();

    public Milestone getCurrentMilestone();

    public String getDescription();

    public void getDescription(CharArrayBuffer var1);

    public long getEndTimestamp();

    public Game getGame();

    public Uri getIconImageUri();

    @Deprecated
    public String getIconImageUrl();

    public long getLastUpdatedTimestamp();

    public String getName();

    public void getName(CharArrayBuffer var1);

    public String getQuestId();

    public long getStartTimestamp();

    public int getState();

    public int getType();

    public boolean isEndingSoon();

    public List<Milestone> lJ();

    public long lK();
}

