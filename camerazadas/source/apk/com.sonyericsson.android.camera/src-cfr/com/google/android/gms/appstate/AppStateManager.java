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
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ib;
import java.util.List;

public final class AppStateManager {
    public static final Api<Api.ApiOptions.NoOptions> API;
    static final Api.c<ib> CU;
    private static final Api.b<ib, Api.ApiOptions.NoOptions> CV;
    public static final Scope SCOPE_APP_STATE;

    static {
        CU = new Api.c();
        CV = new Api.b<ib, Api.ApiOptions.NoOptions>(){

            @Override
            public /* synthetic */ Api.a a(Context context, Looper looper, ClientSettings clientSettings, Object object, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                return this.b(context, looper, clientSettings, (Api.ApiOptions.NoOptions)object, connectionCallbacks, onConnectionFailedListener);
            }

            public ib b(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                return new ib(context, looper, connectionCallbacks, onConnectionFailedListener, clientSettings.getAccountNameOrDefault(), clientSettings.getScopes().toArray(new String[0]));
            }

            @Override
            public int getPriority() {
                return Integer.MAX_VALUE;
            }
        };
        SCOPE_APP_STATE = new Scope("https://www.googleapis.com/auth/appstate");
        API = new Api<Api.ApiOptions.NoOptions>(CV, CU, SCOPE_APP_STATE);
    }

    private AppStateManager() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static ib a(GoogleApiClient object) {
        boolean bl = true;
        boolean bl2 = object != null;
        o.b(bl2, (Object)"GoogleApiClient parameter is required.");
        o.a(object.isConnected(), "GoogleApiClient must be connected.");
        object = (ib)object.a(CU);
        bl2 = object != null ? bl : false;
        o.a(bl2, "GoogleApiClient is not configured to use the AppState API. Pass AppStateManager.API into GoogleApiClient.Builder#addApi() to use this feature.");
        return object;
    }

    public static PendingResult<StateDeletedResult> delete(GoogleApiClient googleApiClient, final int n) {
        return googleApiClient.b(new b(){

            @Override
            protected void a(ib ib) {
                ib.a(this, n);
            }

            @Override
            public /* synthetic */ Result c(Status status) {
                return this.g(status);
            }

            public StateDeletedResult g(final Status status) {
                return new StateDeletedResult(){

                    @Override
                    public int getStateKey() {
                        return n;
                    }

                    @Override
                    public Status getStatus() {
                        return status;
                    }
                };
            }

        });
    }

    private static StateResult e(final Status status) {
        return new StateResult(){

            @Override
            public StateConflictResult getConflictResult() {
                return null;
            }

            @Override
            public StateLoadedResult getLoadedResult() {
                return null;
            }

            @Override
            public Status getStatus() {
                return status;
            }

            @Override
            public void release() {
            }
        };
    }

    public static int getMaxNumKeys(GoogleApiClient googleApiClient) {
        return AppStateManager.a(googleApiClient).fr();
    }

    public static int getMaxStateSize(GoogleApiClient googleApiClient) {
        return AppStateManager.a(googleApiClient).fq();
    }

    public static PendingResult<StateListResult> list(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new c(){

            @Override
            protected void a(ib ib) {
                ib.a(this);
            }
        });
    }

    public static PendingResult<StateResult> load(GoogleApiClient googleApiClient, final int n) {
        return googleApiClient.a(new e(){

            @Override
            protected void a(ib ib) {
                ib.b(this, n);
            }
        });
    }

    public static PendingResult<StateResult> resolve(GoogleApiClient googleApiClient, final int n, final String string, final byte[] arrby) {
        return googleApiClient.b(new e(){

            @Override
            protected void a(ib ib) {
                ib.a(this, n, string, arrby);
            }
        });
    }

    public static PendingResult<Status> signOut(GoogleApiClient googleApiClient) {
        return googleApiClient.b(new d(){

            @Override
            protected void a(ib ib) {
                ib.b(this);
            }
        });
    }

    public static void update(GoogleApiClient googleApiClient, final int n, final byte[] arrby) {
        googleApiClient.b(new e(){

            @Override
            protected void a(ib ib) {
                ib.a(null, n, arrby);
            }
        });
    }

    public static PendingResult<StateResult> updateImmediate(GoogleApiClient googleApiClient, final int n, final byte[] arrby) {
        return googleApiClient.b(new e(){

            @Override
            protected void a(ib ib) {
                ib.a(this, n, arrby);
            }
        });
    }

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

    public static abstract class a<R extends Result>
    extends BaseImplementation.a<R, ib> {
        public a() {
            super(AppStateManager.CU);
        }
    }

    private static abstract class b
    extends a<StateDeletedResult> {
        private b() {
        }
    }

    private static abstract class c
    extends a<StateListResult> {
        private c() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.h(status);
        }

        public StateListResult h(final Status status) {
            return new StateListResult(){

                @Override
                public AppStateBuffer getStateBuffer() {
                    return new AppStateBuffer(null);
                }

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

    }

    private static abstract class d
    extends a<Status> {
        private d() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        public Status d(Status status) {
            return status;
        }
    }

    private static abstract class e
    extends a<StateResult> {
        private e() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.i(status);
        }

        public StateResult i(Status status) {
            return AppStateManager.e(status);
        }
    }

}

