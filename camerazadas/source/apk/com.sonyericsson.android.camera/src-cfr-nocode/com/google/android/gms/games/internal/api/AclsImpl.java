/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.game.Acls;

/*
 * Exception performing whole class analysis ignored.
 */
public final class AclsImpl
implements Acls {
    public AclsImpl();

    private static Acls.LoadAclResult L(Status var0);

    static /* synthetic */ Acls.LoadAclResult M(Status var0);

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadNotifyAclImpl
    extends Games.BaseGamesApiMethodImpl<Acls.LoadAclResult> {
        private LoadNotifyAclImpl();

        public Acls.LoadAclResult N(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class UpdateNotifyAclImpl
    extends Games.BaseGamesApiMethodImpl<Status> {
        private UpdateNotifyAclImpl();

        @Override
        public /* synthetic */ Result c(Status var1);

        public Status d(Status var1);
    }

}

