/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hy;
import com.google.android.gms.internal.hz;

public final class hd {
    public static final Api.c<hy> BN = new Api.c();
    private static final Api.b<hy, Api.ApiOptions.NoOptions> BO = new Api.b<hy, Api.ApiOptions.NoOptions>(){

        @Override
        public hy a(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new hy(context, looper, connectionCallbacks, onConnectionFailedListener);
        }

        @Override
        public int getPriority() {
            return Integer.MAX_VALUE;
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> BP = new Api<Api.ApiOptions.NoOptions>(BO, BN, new Scope[0]);
    public static final hu BQ = new hz();

}

