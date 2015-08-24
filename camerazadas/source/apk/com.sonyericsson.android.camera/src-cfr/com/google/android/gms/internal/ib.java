/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.appstate.AppState;
import com.google.android.gms.appstate.AppStateBuffer;
import com.google.android.gms.appstate.AppStateManager;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ia;
import com.google.android.gms.internal.ic;
import com.google.android.gms.internal.id;

public final class ib
extends com.google.android.gms.common.internal.e<id> {
    private final String Dd;

    public ib(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String string, String[] arrstring) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, arrstring);
        this.Dd = o.i(string);
    }

    protected id I(IBinder iBinder) {
        return id.a.K(iBinder);
    }

    @Override
    public void a(BaseImplementation.b<AppStateManager.StateListResult> b) {
        try {
            ((id)this.gS()).a(new c(b));
            return;
        }
        catch (RemoteException var1_2) {
            Log.w("AppStateClient", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<AppStateManager.StateDeletedResult> b, int n) {
        try {
            ((id)this.gS()).b(new a(b), n);
            return;
        }
        catch (RemoteException var1_2) {
            Log.w("AppStateClient", "service died");
            return;
        }
    }

    public void a(BaseImplementation.b<AppStateManager.StateResult> b, int n, String string, byte[] arrby) {
        try {
            ((id)this.gS()).a(new e(b), n, string, arrby);
            return;
        }
        catch (RemoteException var1_2) {
            Log.w("AppStateClient", "service died");
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public void a(BaseImplementation.b<AppStateManager.StateResult> var1_1, int var2_3, byte[] var3_4) {
        if (var1_1 != null) ** GOTO lbl-1000
        var1_1 = null;
        try {}
        catch (RemoteException var1_2) {
            Log.w("AppStateClient", "service died");
            return;
        }
        ** GOTO lbl9
lbl-1000: // 1 sources:
        {
            var1_1 = new e((BaseImplementation.b<AppStateManager.StateResult>)var1_1);
lbl9: // 2 sources:
            ((id)this.gS()).a((ic)var1_1, var2_3, var3_4);
            return;
        }
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        l.a((k)e, 6171000, this.getContext().getPackageName(), this.Dd, this.gR());
    }

    public void b(BaseImplementation.b<Status> b) {
        try {
            ((id)this.gS()).b(new g(b));
            return;
        }
        catch (RemoteException var1_2) {
            Log.w("AppStateClient", "service died");
            return;
        }
    }

    public void b(BaseImplementation.b<AppStateManager.StateResult> b, int n) {
        try {
            ((id)this.gS()).a(new e(b), n);
            return;
        }
        catch (RemoteException var1_2) {
            Log.w("AppStateClient", "service died");
            return;
        }
    }

    @Override
    protected /* varargs */ void c(String ... arrstring) {
        boolean bl = false;
        for (int i = 0; i < arrstring.length; ++i) {
            if (!arrstring[i].equals("https://www.googleapis.com/auth/appstate")) continue;
            bl = true;
        }
        o.a(bl, String.format("App State APIs requires %s to function.", "https://www.googleapis.com/auth/appstate"));
    }

    public int fq() {
        try {
            int n = ((id)this.gS()).fq();
            return n;
        }
        catch (RemoteException var2_2) {
            Log.w("AppStateClient", "service died");
            return 2;
        }
    }

    public int fr() {
        try {
            int n = ((id)this.gS()).fr();
            return n;
        }
        catch (RemoteException var2_2) {
            Log.w("AppStateClient", "service died");
            return 2;
        }
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.appstate.internal.IAppStateService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.appstate.service.START";
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.I(iBinder);
    }

    private static final class a
    extends ia {
        private final BaseImplementation.b<AppStateManager.StateDeletedResult> De;

        public a(BaseImplementation.b<AppStateManager.StateDeletedResult> b) {
            this.De = o.b(b, (Object)"Result holder must not be null");
        }

        @Override
        public void e(int n, int n2) {
            Status status = new Status(n);
            this.De.b(new b(status, n2));
        }
    }

    private static final class b
    implements AppStateManager.StateDeletedResult {
        private final Status CM;
        private final int Df;

        public b(Status status, int n) {
            this.CM = status;
            this.Df = n;
        }

        @Override
        public int getStateKey() {
            return this.Df;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    private static final class c
    extends ia {
        private final BaseImplementation.b<AppStateManager.StateListResult> De;

        public c(BaseImplementation.b<AppStateManager.StateListResult> b) {
            this.De = o.b(b, (Object)"Result holder must not be null");
        }

        @Override
        public void a(DataHolder dataHolder) {
            this.De.b(new d(dataHolder));
        }
    }

    private static final class d
    extends com.google.android.gms.common.api.a
    implements AppStateManager.StateListResult {
        private final AppStateBuffer Dg;

        public d(DataHolder dataHolder) {
            super(dataHolder);
            this.Dg = new AppStateBuffer(dataHolder);
        }

        @Override
        public AppStateBuffer getStateBuffer() {
            return this.Dg;
        }
    }

    private static final class e
    extends ia {
        private final BaseImplementation.b<AppStateManager.StateResult> De;

        public e(BaseImplementation.b<AppStateManager.StateResult> b) {
            this.De = o.b(b, (Object)"Result holder must not be null");
        }

        @Override
        public void a(int n, DataHolder dataHolder) {
            this.De.b(new f(n, dataHolder));
        }
    }

    private static final class f
    extends com.google.android.gms.common.api.a
    implements AppStateManager.StateConflictResult,
    AppStateManager.StateLoadedResult,
    AppStateManager.StateResult {
        private final int Df;
        private final AppStateBuffer Dg;

        public f(int n, DataHolder dataHolder) {
            super(dataHolder);
            this.Df = n;
            this.Dg = new AppStateBuffer(dataHolder);
        }

        private boolean fs() {
            if (this.CM.getStatusCode() == 2000) {
                return true;
            }
            return false;
        }

        @Override
        public AppStateManager.StateConflictResult getConflictResult() {
            if (this.fs()) {
                return this;
            }
            return null;
        }

        @Override
        public AppStateManager.StateLoadedResult getLoadedResult() {
            f f = this;
            if (this.fs()) {
                f = null;
            }
            return f;
        }

        @Override
        public byte[] getLocalData() {
            if (this.Dg.getCount() == 0) {
                return null;
            }
            return this.Dg.get(0).getLocalData();
        }

        @Override
        public String getResolvedVersion() {
            if (this.Dg.getCount() == 0) {
                return null;
            }
            return this.Dg.get(0).getConflictVersion();
        }

        @Override
        public byte[] getServerData() {
            if (this.Dg.getCount() == 0) {
                return null;
            }
            return this.Dg.get(0).getConflictData();
        }

        @Override
        public int getStateKey() {
            return this.Df;
        }

        @Override
        public void release() {
            this.Dg.close();
        }
    }

    private static final class g
    extends ia {
        private final BaseImplementation.b<Status> De;

        public g(BaseImplementation.b<Status> b) {
            this.De = o.b(b, (Object)"Holder must not be null");
        }

        @Override
        public void fp() {
            Status status = new Status(0);
            this.De.b(status);
        }
    }

}

