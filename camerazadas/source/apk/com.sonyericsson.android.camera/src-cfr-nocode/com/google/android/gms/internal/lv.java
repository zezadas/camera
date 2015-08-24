/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.lz;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingApi;
import com.google.android.gms.location.LocationClient;
import com.google.android.gms.location.LocationServices;
import java.util.List;

/*
 * Exception performing whole class analysis ignored.
 */
public class lv
implements GeofencingApi {
    public lv();

    @Override
    public PendingResult<Status> addGeofences(GoogleApiClient var1, List<Geofence> var2, PendingIntent var3);

    @Override
    public PendingResult<Status> removeGeofences(GoogleApiClient var1, PendingIntent var2);

    @Override
    public PendingResult<Status> removeGeofences(GoogleApiClient var1, List<String> var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class a
    extends LocationServices.a<Status> {
        private a();

        /* synthetic */ a( var1);

        @Override
        public /* synthetic */ Result c(Status var1);

        public Status d(Status var1);
    }

}

