/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public final class QuestRef
extends d
implements Quest {
    private final int aaK;
    private final Game abx;

    QuestRef(DataHolder var1, int var2, int var3);

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public Quest freeze();

    @Override
    public long getAcceptedTimestamp();

    @Override
    public Uri getBannerImageUri();

    @Override
    public String getBannerImageUrl();

    @Override
    public Milestone getCurrentMilestone();

    @Override
    public String getDescription();

    @Override
    public void getDescription(CharArrayBuffer var1);

    @Override
    public long getEndTimestamp();

    @Override
    public Game getGame();

    @Override
    public Uri getIconImageUri();

    @Override
    public String getIconImageUrl();

    @Override
    public long getLastUpdatedTimestamp();

    @Override
    public String getName();

    @Override
    public void getName(CharArrayBuffer var1);

    @Override
    public String getQuestId();

    @Override
    public long getStartTimestamp();

    @Override
    public int getState();

    @Override
    public int getType();

    @Override
    public int hashCode();

    @Override
    public boolean isEndingSoon();

    @Override
    public List<Milestone> lJ();

    @Override
    public long lK();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

