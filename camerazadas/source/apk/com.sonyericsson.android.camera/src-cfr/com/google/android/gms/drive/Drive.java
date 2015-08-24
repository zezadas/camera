/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.e;
import com.google.android.gms.drive.internal.o;
import com.google.android.gms.drive.internal.q;
import com.google.android.gms.drive.internal.t;
import com.google.android.gms.drive.internal.x;
import java.util.List;

public final class Drive {
    public static final Api<Api.ApiOptions.NoOptions> API;
    public static final Api.c<q> CU;
    public static final DriveApi DriveApi;
    public static final Scope Nc;
    public static final Scope Nd;
    public static final Api<b> Ne;
    public static final com.google.android.gms.drive.b Nf;
    public static final e Ng;
    public static final Scope SCOPE_APPFOLDER;
    public static final Scope SCOPE_FILE;

    static {
        CU = new Api.c();
        SCOPE_FILE = new Scope("https://www.googleapis.com/auth/drive.file");
        SCOPE_APPFOLDER = new Scope("https://www.googleapis.com/auth/drive.appdata");
        Nc = new Scope("https://www.googleapis.com/auth/drive");
        Nd = new Scope("https://www.googleapis.com/auth/drive.apps");
        API = new Api(new a<Api.ApiOptions.NoOptions>(){

            @Override
            protected Bundle a(Api.ApiOptions.NoOptions noOptions) {
                return new Bundle();
            }
        }, CU, new Scope[0]);
        Ne = new Api(new a<b>(){

            @Override
            protected Bundle a(b b) {
                if (b == null) {
                    return new Bundle();
                }
                return b.hM();
            }
        }, CU, new Scope[0]);
        DriveApi = new o();
        Nf = new t();
        Ng = new x();
    }

    private Drive() {
    }

    public static abstract class a<O extends Api.ApiOptions>
    implements Api.b<q, O> {
        protected abstract Bundle a(O var1);

        @Override
        public q a(Context context, Looper looper, ClientSettings clientSettings, O o, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            List<String> list = clientSettings.getScopes();
            return new q(context, looper, clientSettings, connectionCallbacks, onConnectionFailedListener, list.toArray(new String[list.size()]), this.a(o));
        }

        @Override
        public int getPriority() {
            return Integer.MAX_VALUE;
        }
    }

    public static class b
    implements Api.ApiOptions.Optional {
        private final Bundle Nh;

        private b() {
            this(new Bundle());
        }

        private b(Bundle bundle) {
            this.Nh = bundle;
        }

        public Bundle hM() {
            return this.Nh;
        }
    }

}

