/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.appstate.AppStateBuffer;
import com.google.android.gms.appstate.AppStateManager;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.ia;
import com.google.android.gms.internal.id;

/*
 * Exception performing whole class analysis.
 */
public final class ib
extends com.google.android.gms.common.internal.e<id> {
    private final String Dd;

    public ib(Context var1, Looper var2, GoogleApiClient.ConnectionCallbacks var3, GoogleApiClient.OnConnectionFailedListener var4, String var5, String[] var6);

    protected id I(IBinder var1);

    @Override
    public void a(BaseImplementation.b<AppStateManager.StateListResult> var1);

    public void a(BaseImplementation.b<AppStateManager.StateDeletedResult> var1, int var2);

    public void a(BaseImplementation.b<AppStateManager.StateResult> var1, int var2, String var3, byte[] var4);

    public void a(BaseImplementation.b<AppStateManager.StateResult> var1, int var2, byte[] var3);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    public void b(BaseImplementation.b<Status> var1);

    public void b(BaseImplementation.b<AppStateManager.StateResult> var1, int var2);

    @Override
    protected /* varargs */ void c(String ... var1);

    public int fq();

    public int fr();

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class a
    extends ia {
        private final BaseImplementation.b<AppStateManager.StateDeletedResult> De;

        public a(BaseImplementation.b<AppStateManager.StateDeletedResult> var1);

        @Override
        public void e(int var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class b
    implements AppStateManager.StateDeletedResult {
        private final Status CM;
        private final int Df;

        public b(Status var1, int var2);

        @Override
        public int getStateKey();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class c
    extends ia {
        private final BaseImplementation.b<AppStateManager.StateListResult> De;

        public c(BaseImplementation.b<AppStateManager.StateListResult> var1);

        @Override
        public void a(DataHolder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class d
    extends com.google.android.gms.common.api.a
    implements AppStateManager.StateListResult {
        private final AppStateBuffer Dg;

        public d(DataHolder var1);

        @Override
        public AppStateBuffer getStateBuffer();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class e
    extends ia {
        private final BaseImplementation.b<AppStateManager.StateResult> De;

        public e(BaseImplementation.b<AppStateManager.StateResult> var1);

        @Override
        public void a(int var1, DataHolder var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class f
    extends com.google.android.gms.common.api.a
    implements AppStateManager.StateConflictResult,
    AppStateManager.StateLoadedResult,
    AppStateManager.StateResult {
        private final int Df;
        private final AppStateBuffer Dg;

        public f(int var1, DataHolder var2);

        private boolean fs();

        @Override
        public AppStateManager.StateConflictResult getConflictResult();

        @Override
        public AppStateManager.StateLoadedResult getLoadedResult();

        @Override
        public byte[] getLocalData();

        @Override
        public String getResolvedVersion();

        @Override
        public byte[] getServerData();

        @Override
        public int getStateKey();

        @Override
        public void release();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class g
    extends ia {
        private final BaseImplementation.b<Status> De;

        public g(BaseImplementation.b<Status> var1);

        @Override
        public void fp();
    }

}

