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
import com.google.android.gms.drive.internal.q;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    static;

    private Drive();

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class a<O extends Api.ApiOptions>
    implements Api.b<q, O> {
        public a();

        protected abstract Bundle a(O var1);

        @Override
        public q a(Context var1, Looper var2, ClientSettings var3, O var4, GoogleApiClient.ConnectionCallbacks var5, GoogleApiClient.OnConnectionFailedListener var6);

        @Override
        public int getPriority();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class b
    implements Api.ApiOptions.Optional {
        private final Bundle Nh;

        private b();

        private b(Bundle var1);

        public Bundle hM();
    }

}

