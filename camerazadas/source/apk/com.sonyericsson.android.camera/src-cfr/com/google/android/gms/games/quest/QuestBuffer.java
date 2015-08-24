/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestRef;

public final class QuestBuffer
extends g<Quest> {
    public QuestBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override
    protected /* synthetic */ Object f(int n, int n2) {
        return this.m(n, n2);
    }

    @Override
    protected String gD() {
        return "external_quest_id";
    }

    protected Quest m(int n, int n2) {
        return new QuestRef(this.II, n, n2);
    }
}

