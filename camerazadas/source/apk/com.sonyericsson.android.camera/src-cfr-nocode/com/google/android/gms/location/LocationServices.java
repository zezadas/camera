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
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.lz;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.GeofencingApi;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class LocationServices {
    public static final Api<Api.ApiOptions.NoOptions> API;
    private static final Api.c<lz> CU;
    private static final Api.b<lz, Api.ApiOptions.NoOptions> CV;
    public static FusedLocationProviderApi FusedLocationApi;
    public static GeofencingApi GeofencingApi;

    static;

    private LocationServices();

    public static lz e(GoogleApiClient var0);

    static /* synthetic */ Api.c lU();

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class a<R extends Result>
    extends BaseImplementation.a<R, lz> {
        public a();
    }

}

