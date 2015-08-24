/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.quest.MilestoneEntity;

/*
 * Exception performing whole class analysis ignored.
 */
public class MilestoneEntityCreator
implements Parcelable.Creator<MilestoneEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    public MilestoneEntityCreator();

    static void a(MilestoneEntity var0, Parcel var1, int var2);

    @Override
    public MilestoneEntity createFromParcel(Parcel var1);

    public MilestoneEntity[] newArray(int var1);
}

