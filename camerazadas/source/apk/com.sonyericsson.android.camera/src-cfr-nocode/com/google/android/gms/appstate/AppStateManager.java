/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.appstate;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.appstate.AppStateBuffer;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.ib;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class AppStateManager {
    public static final Api<Api.ApiOptions.NoOptions> API;
    static final Api.c<ib> CU;
    private static final Api.b<ib, Api.ApiOptions.NoOptions> CV;
    public static final Scope SCOPE_APP_STATE;

    static;

    private AppStateManager();

    public static ib a(GoogleApiClient var0);

    public static PendingResult<StateDeletedResult> delete(GoogleApiClient var0, int var1);

    private static StateResult e(Status var0);

    static /* synthetic */ StateResult f(Status var0);

    public static int getMaxNumKeys(GoogleApiClient var0);

    public static int getMaxStateSize(GoogleApiClient var0);

    public static PendingResult<StateListResult> list(GoogleApiClient var0);

    public static PendingResult<StateResult> load(GoogleApiClient var0, int var1);

    public static PendingResult<StateResult> resolve(GoogleApiClient var0, int var1, String var2, byte[] var3);

    public static PendingResult<Status> signOut(GoogleApiClient var0);

    public static void update(GoogleApiClient var0, int var1, byte[] var2);

    public static PendingResult<StateResult> updateImmediate(GoogleApiClient var0, int var1, byte[] var2);

    public static interface StateConflictResult
    extends Releasable,
    Result {
        public byte[] getLocalData();

        public String getResolvedVersion();

        public byte[] getServerData();

        public int getStateKey();
    }

    public static interface StateDeletedResult
    extends Result {
        public int getStateKey();
    }

    public static interface StateListResult
    extends Result {
        public AppStateBuffer getStateBuffer();
    }

    public static interface StateLoadedResult
    extends Releasable,
    Result {
        public byte[] getLocalData();

        public int getStateKey();
    }

    public static interface StateResult
    extends Releasable,
    Result {
        public StateConflictResult getConflictResult();

        public StateLoadedResult getLoadedResult();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class a<R extends Result>
    extends BaseImplementation.a<R, ib> {
        public a();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class b
    extends a<StateDeletedResult> {
        private b();

        /* synthetic */ b( var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class c
    extends a<StateListResult> {
        private c();

        /* synthetic */ c(com.google.android.gms.appstate.AppStateManager$1 var1);

        @Override
        public /* synthetic */ Result c(Status var1);

        public StateListResult h(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class d
    extends a<Status> {
        private d();

        /* synthetic */ d( var1);

        @Override
        public /* synthetic */ Result c(Status var1);

        public Status d(Status var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class e
    extends a<StateResult> {
        private e();

        /* synthetic */ e( var1);

        @Override
        public /* synthetic */ Result c(Status var1);

        public StateResult i(Status var1);
    }

}

