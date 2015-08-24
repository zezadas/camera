/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.notification;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.notification.GameNotification;
import com.google.android.gms.games.internal.notification.GameNotificationRef;

public final class GameNotificationBuffer
extends DataBuffer<GameNotification> {
    public GameNotification dO(int n) {
        return new GameNotificationRef(this.II, n);
    }

    @Override
    public /* synthetic */ Object get(int n) {
        return this.dO(n);
    }
}

