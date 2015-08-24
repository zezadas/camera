/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.b;
import com.google.android.gms.wearable.internal.aw;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Wearable {
    public static final Api<WearableOptions> API;
    public static final Api.c<aw> CU;
    private static final Api.b<aw, WearableOptions> CV;
    public static final DataApi DataApi;
    public static final MessageApi MessageApi;
    public static final NodeApi NodeApi;
    public static final b avb;

    static;

    private Wearable();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class WearableOptions
    implements Api.ApiOptions.Optional {
        private WearableOptions(Builder var1);

        /* synthetic */ WearableOptions(Builder var1,  var2);

        /*
         * Exception performing whole class analysis ignored.
         */
        public static class Builder {
            public Builder();

            public WearableOptions build();
        }

    }

}

