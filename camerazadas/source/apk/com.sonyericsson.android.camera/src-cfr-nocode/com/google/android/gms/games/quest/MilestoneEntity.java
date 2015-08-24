/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.MilestoneEntityCreator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class MilestoneEntity
implements SafeParcelable,
Milestone {
    public static final MilestoneEntityCreator CREATOR;
    private final int BR;
    private final String Wm;
    private final String Xu;
    private final long acO;
    private final long acP;
    private final byte[] acQ;
    private final int mState;

    static;

    MilestoneEntity(int var1, String var2, long var3, long var5, byte[] var7, int var8, String var9);

    public MilestoneEntity(Milestone var1);

    static int a(Milestone var0);

    static boolean a(Milestone var0, Object var1);

    static String b(Milestone var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public Milestone freeze();

    @Override
    public byte[] getCompletionRewardData();

    @Override
    public long getCurrentProgress();

    @Override
    public String getEventId();

    @Override
    public String getMilestoneId();

    @Override
    public int getState();

    @Override
    public long getTargetProgress();

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isDataValid();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

