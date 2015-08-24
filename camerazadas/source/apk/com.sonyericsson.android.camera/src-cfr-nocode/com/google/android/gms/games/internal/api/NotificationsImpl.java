/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Notifications;
import com.google.android.gms.games.internal.GamesClientImpl;

/*
 * Exception performing whole class analysis ignored.
 */
public final class NotificationsImpl
implements Notifications {
    public NotificationsImpl();

    @Override
    public void clear(GoogleApiClient var1, int var2);

    @Override
    public void clearAll(GoogleApiClient var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class ContactSettingLoadImpl
    extends Games.BaseGamesApiMethodImpl<Notifications.ContactSettingLoadResult> {
        private ContactSettingLoadImpl();

        public Notifications.ContactSettingLoadResult aa(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class ContactSettingUpdateImpl
    extends Games.BaseGamesApiMethodImpl<Status> {
        private ContactSettingUpdateImpl();

        @Override
        public /* synthetic */ Result c(Status var1);

        public Status d(Status var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class InboxCountImpl
    extends Games.BaseGamesApiMethodImpl<Notifications.InboxCountResult> {
        private InboxCountImpl();

        public Notifications.InboxCountResult ab(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

}

