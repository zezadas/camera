/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.game.Acls;

public final class AclsImpl
implements Acls {
    private static Acls.LoadAclResult L(final Status status) {
        return new Acls.LoadAclResult(){

            @Override
            public Status getStatus() {
                return status;
            }

            @Override
            public void release() {
            }
        };
    }

    private static abstract class LoadNotifyAclImpl
    extends Games.BaseGamesApiMethodImpl<Acls.LoadAclResult> {
        private LoadNotifyAclImpl() {
        }

        public Acls.LoadAclResult N(Status status) {
            return AclsImpl.L(status);
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.N(status);
        }
    }

    private static abstract class UpdateNotifyAclImpl
    extends Games.BaseGamesApiMethodImpl<Status> {
        private UpdateNotifyAclImpl() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        public Status d(Status status) {
            return status;
        }
    }

}

