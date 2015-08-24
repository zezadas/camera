/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Notifications;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class NotificationsImpl
implements Notifications {
    @Override
    public void clear(GoogleApiClient googleApiClient, int n) {
        Games.c(googleApiClient).dC(n);
    }

    @Override
    public void clearAll(GoogleApiClient googleApiClient) {
        this.clear(googleApiClient, 31);
    }

    private static abstract class ContactSettingLoadImpl
    extends Games.BaseGamesApiMethodImpl<Notifications.ContactSettingLoadResult> {
        private ContactSettingLoadImpl() {
        }

        public Notifications.ContactSettingLoadResult aa(final Status status) {
            return new Notifications.ContactSettingLoadResult(){

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.aa(status);
        }

    }

    private static abstract class ContactSettingUpdateImpl
    extends Games.BaseGamesApiMethodImpl<Status> {
        private ContactSettingUpdateImpl() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        public Status d(Status status) {
            return status;
        }
    }

    private static abstract class InboxCountImpl
    extends Games.BaseGamesApiMethodImpl<Notifications.InboxCountResult> {
        private InboxCountImpl() {
        }

        public Notifications.InboxCountResult ab(final Status status) {
            return new Notifications.InboxCountResult(){

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.ab(status);
        }

    }

}

