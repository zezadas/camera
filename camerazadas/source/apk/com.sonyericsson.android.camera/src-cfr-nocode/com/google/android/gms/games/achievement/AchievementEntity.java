/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.achievement;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.achievement.Achievement;
import com.google.android.gms.games.achievement.AchievementEntityCreator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class AchievementEntity
implements SafeParcelable,
Achievement {
    public static final AchievementEntityCreator CREATOR;
    private final int BR;
    private final int FD;
    private final String Tr;
    private final String Wa;
    private final Uri Wb;
    private final String Wc;
    private final Uri Wd;
    private final String We;
    private final int Wf;
    private final String Wg;
    private final PlayerEntity Wh;
    private final int Wi;
    private final String Wj;
    private final long Wk;
    private final long Wl;
    private final String mName;
    private final int mState;

    static;

    AchievementEntity(int var1, String var2, int var3, String var4, String var5, Uri var6, String var7, Uri var8, String var9, int var10, String var11, PlayerEntity var12, int var13, int var14, String var15, long var16, long var18);

    public AchievementEntity(Achievement var1);

    static int a(Achievement var0);

    static boolean a(Achievement var0, Object var1);

    static String b(Achievement var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public Achievement freeze();

    @Override
    public String getAchievementId();

    @Override
    public int getCurrentSteps();

    @Override
    public String getDescription();

    @Override
    public void getDescription(CharArrayBuffer var1);

    @Override
    public String getFormattedCurrentSteps();

    @Override
    public void getFormattedCurrentSteps(CharArrayBuffer var1);

    @Override
    public String getFormattedTotalSteps();

    @Override
    public void getFormattedTotalSteps(CharArrayBuffer var1);

    @Override
    public long getLastUpdatedTimestamp();

    @Override
    public String getName();

    @Override
    public void getName(CharArrayBuffer var1);

    @Override
    public Player getPlayer();

    @Override
    public Uri getRevealedImageUri();

    @Override
    public String getRevealedImageUrl();

    @Override
    public int getState();

    @Override
    public int getTotalSteps();

    @Override
    public int getType();

    @Override
    public Uri getUnlockedImageUri();

    @Override
    public String getUnlockedImageUrl();

    public int getVersionCode();

    @Override
    public long getXpValue();

    public int hashCode();

    @Override
    public boolean isDataValid();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

