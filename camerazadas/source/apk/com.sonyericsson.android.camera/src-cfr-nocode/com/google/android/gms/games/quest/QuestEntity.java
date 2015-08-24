/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.MilestoneEntity;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestEntityCreator;
import java.util.ArrayList;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class QuestEntity
implements SafeParcelable,
Quest {
    public static final QuestEntityCreator CREATOR;
    private final int BR;
    private final int FD;
    private final String Tr;
    private final long Wk;
    private final GameEntity aay;
    private final String acR;
    private final long acS;
    private final Uri acT;
    private final String acU;
    private final long acV;
    private final Uri acW;
    private final String acX;
    private final long acY;
    private final long acZ;
    private final ArrayList<MilestoneEntity> ada;
    private final String mName;
    private final int mState;

    static;

    QuestEntity(int var1, GameEntity var2, String var3, long var4, Uri var6, String var7, String var8, long var9, long var11, Uri var13, String var14, String var15, long var16, long var18, int var20, int var21, ArrayList<MilestoneEntity> var22);

    public QuestEntity(Quest var1);

    static int a(Quest var0);

    static boolean a(Quest var0, Object var1);

    static String b(Quest var0);

    @Override
    public int describeContents();

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

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isDataValid();

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

