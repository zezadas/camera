/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.fitness.BleApi;
import com.google.android.gms.fitness.ConfigApi;
import com.google.android.gms.fitness.HistoryApi;
import com.google.android.gms.fitness.RecordingApi;
import com.google.android.gms.fitness.SensorsApi;
import com.google.android.gms.fitness.SessionsApi;
import com.google.android.gms.fitness.a;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kl;
import com.google.android.gms.internal.kv;
import com.google.android.gms.internal.kx;
import com.google.android.gms.internal.ky;
import com.google.android.gms.internal.kz;
import com.google.android.gms.internal.la;
import com.google.android.gms.internal.lb;
import com.google.android.gms.internal.lc;
import com.google.android.gms.internal.ld;
import com.google.android.gms.internal.le;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class Fitness {
    public static final String ACTION_TRACK = "vnd.google.fitness.TRACK";
    public static final String ACTION_VIEW = "vnd.google.fitness.VIEW";
    public static final String ACTION_VIEW_GOAL = "vnd.google.fitness.VIEW_GOAL";
    public static final Api<Api.ApiOptions.NoOptions> API;
    public static final BleApi BleApi;
    public static final Api.c<kk> CU;
    private static final Api.b<kk, Api.ApiOptions.NoOptions> CV;
    public static final ConfigApi ConfigApi;
    public static final String EXTRA_END_TIME = "vnd.google.fitness.end_time";
    public static final String EXTRA_START_TIME = "vnd.google.fitness.start_time";
    public static final HistoryApi HistoryApi;
    public static final RecordingApi RecordingApi;
    public static final Scope SCOPE_ACTIVITY_READ;
    public static final Scope SCOPE_ACTIVITY_READ_WRITE;
    public static final Scope SCOPE_BODY_READ;
    public static final Scope SCOPE_BODY_READ_WRITE;
    public static final Scope SCOPE_LOCATION_READ;
    public static final Scope SCOPE_LOCATION_READ_WRITE;
    public static final SensorsApi SensorsApi;
    public static final SessionsApi SessionsApi;
    public static final kv Sn;

    static {
        CU = new Api.c();
        CV = new Api.b<kk, Api.ApiOptions.NoOptions>(){

            @Override
            public /* synthetic */ Api.a a(Context context, Looper looper, ClientSettings clientSettings, Object object, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                return this.c(context, looper, clientSettings, (Api.ApiOptions.NoOptions)object, connectionCallbacks, onConnectionFailedListener);
            }

            public kk c(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions arrstring, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                arrstring = a.d(clientSettings.getScopes());
                return new kl(context, looper, connectionCallbacks, onConnectionFailedListener, clientSettings.getAccountNameOrDefault(), arrstring);
            }

            @Override
            public int getPriority() {
                return Integer.MAX_VALUE;
            }
        };
        API = new Api<Api.ApiOptions.NoOptions>(CV, CU, new Scope[0]);
        SensorsApi = new lc();
        RecordingApi = new lb();
        SessionsApi = new ld();
        HistoryApi = new kz();
        ConfigApi = new ky();
        BleApi = Fitness.iy();
        Sn = new la();
        SCOPE_ACTIVITY_READ = new Scope("https://www.googleapis.com/auth/fitness.activity.read");
        SCOPE_ACTIVITY_READ_WRITE = new Scope("https://www.googleapis.com/auth/fitness.activity.write");
        SCOPE_LOCATION_READ = new Scope("https://www.googleapis.com/auth/fitness.location.read");
        SCOPE_LOCATION_READ_WRITE = new Scope("https://www.googleapis.com/auth/fitness.location.write");
        SCOPE_BODY_READ = new Scope("https://www.googleapis.com/auth/fitness.body.read");
        SCOPE_BODY_READ_WRITE = new Scope("https://www.googleapis.com/auth/fitness.body.write");
    }

    private Fitness() {
    }

    public static long getEndTime(Intent intent, TimeUnit timeUnit) {
        long l = intent.getLongExtra("vnd.google.fitness.end_time", -1);
        if (l == -1) {
            return -1;
        }
        return timeUnit.convert(l, TimeUnit.MILLISECONDS);
    }

    public static long getStartTime(Intent intent, TimeUnit timeUnit) {
        long l = intent.getLongExtra("vnd.google.fitness.start_time", -1);
        if (l == -1) {
            return -1;
        }
        return timeUnit.convert(l, TimeUnit.MILLISECONDS);
    }

    private static BleApi iy() {
        if (Build.VERSION.SDK_INT >= 18) {
            return new kx();
        }
        return new le();
    }

}

