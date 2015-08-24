/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.quest.QuestEntity;

/*
 * Exception performing whole class analysis ignored.
 */
public class QuestEntityCreator
implements Parcelable.Creator<QuestEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    public QuestEntityCreator();

    static void a(QuestEntity var0, Parcel var1, int var2);

    @Override
    public QuestEntity createFromParcel(Parcel var1);

    public QuestEntity[] newArray(int var1);
}

