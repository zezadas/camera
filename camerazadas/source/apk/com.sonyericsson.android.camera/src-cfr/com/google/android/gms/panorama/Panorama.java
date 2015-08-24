/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.panorama;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.nc;
import com.google.android.gms.internal.nd;
import com.google.android.gms.panorama.PanoramaApi;

public final class Panorama {
    public static final Api<Api.ApiOptions.NoOptions> API;
    public static final Api.c<nd> CU;
    static final Api.b<nd, Api.ApiOptions.NoOptions> CV;
    public static final PanoramaApi PanoramaApi;

    static {
        CU = new Api.c();
        CV = new Api.b<nd, Api.ApiOptions.NoOptions>(){

            @Override
            public /* synthetic */ Api.a a(Context context, Looper looper, ClientSettings clientSettings, Object object, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                return this.e(context, looper, clientSettings, (Api.ApiOptions.NoOptions)object, connectionCallbacks, onConnectionFailedListener);
            }

            public nd e(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                return new nd(context, looper, connectionCallbacks, onConnectionFailedListener);
            }

            @Override
            public int getPriority() {
                return Integer.MAX_VALUE;
            }
        };
        API = new Api<Api.ApiOptions.NoOptions>(CV, CU, new Scope[0]);
        PanoramaApi = new nc();
    }

    private Panorama() {
    }

}

