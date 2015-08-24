/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.b;
import com.google.android.gms.wearable.internal.ag;
import com.google.android.gms.wearable.internal.aj;
import com.google.android.gms.wearable.internal.aw;
import com.google.android.gms.wearable.internal.e;
import com.google.android.gms.wearable.internal.f;

public class Wearable {
    public static final Api<WearableOptions> API;
    public static final Api.c<aw> CU;
    private static final Api.b<aw, WearableOptions> CV;
    public static final DataApi DataApi;
    public static final MessageApi MessageApi;
    public static final NodeApi NodeApi;
    public static final b avb;

    static {
        DataApi = new f();
        MessageApi = new ag();
        NodeApi = new aj();
        avb = new e();
        CU = new Api.c();
        CV = new Api.b<aw, WearableOptions>(){

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public aw a(Context context, Looper looper, ClientSettings clientSettings, WearableOptions wearableOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                if (wearableOptions != null) {
                    do {
                        return new aw(context, looper, connectionCallbacks, onConnectionFailedListener);
                        break;
                    } while (true);
                }
                new WearableOptions(new WearableOptions.Builder());
                return new aw(context, looper, connectionCallbacks, onConnectionFailedListener);
            }

            @Override
            public int getPriority() {
                return Integer.MAX_VALUE;
            }
        };
        API = new Api<WearableOptions>(CV, CU, new Scope[0]);
    }

    private Wearable() {
    }

    public static final class WearableOptions
    implements Api.ApiOptions.Optional {
        private WearableOptions(Builder builder) {
        }

        public static class Builder {
            public WearableOptions build() {
                return new WearableOptions(this);
            }
        }

    }

}

