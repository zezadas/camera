/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.lu;
import com.google.android.gms.internal.lv;
import com.google.android.gms.internal.lz;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.GeofencingApi;

public class LocationServices {
    public static final Api<Api.ApiOptions.NoOptions> API;
    private static final Api.c<lz> CU;
    private static final Api.b<lz, Api.ApiOptions.NoOptions> CV;
    public static FusedLocationProviderApi FusedLocationApi;
    public static GeofencingApi GeofencingApi;

    static {
        CU = new Api.c();
        CV = new Api.b<lz, Api.ApiOptions.NoOptions>(){

            @Override
            public /* synthetic */ Api.a a(Context context, Looper looper, ClientSettings clientSettings, Object object, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                return this.d(context, looper, clientSettings, (Api.ApiOptions.NoOptions)object, connectionCallbacks, onConnectionFailedListener);
            }

            public lz d(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                return new lz(context, looper, context.getPackageName(), connectionCallbacks, onConnectionFailedListener, "locationServices", clientSettings.getAccountName());
            }

            @Override
            public int getPriority() {
                return Integer.MAX_VALUE;
            }
        };
        API = new Api<Api.ApiOptions.NoOptions>(CV, CU, new Scope[0]);
        FusedLocationApi = new lu();
        GeofencingApi = new lv();
    }

    private LocationServices() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static lz e(GoogleApiClient object) {
        boolean bl = true;
        boolean bl2 = object != null;
        o.b(bl2, (Object)"GoogleApiClient parameter is required.");
        object = (lz)object.a(CU);
        bl2 = object != null ? bl : false;
        o.a(bl2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return object;
    }

    public static abstract class a<R extends Result>
    extends BaseImplementation.a<R, lz> {
        public a() {
            super(CU);
        }
    }

}

