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
import com.google.android.gms.location.ActivityRecognition;
import com.google.android.gms.location.ActivityRecognitionApi;

/*
 * Exception performing whole class analysis ignored.
 */
public class lr
implements ActivityRecognitionApi {
    public lr();

    @Override
    public PendingResult<Status> removeActivityUpdates(GoogleApiClient var1, PendingIntent var2);

    @Override
    public PendingResult<Status> requestActivityUpdates(GoogleApiClient var1, long var2, PendingIntent var4);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class a
    extends ActivityRecognition.a<Status> {
        private a();

        /* synthetic */ a( var1);

        @Override
        public /* synthetic */ Result c(Status var1);

        public Status d(Status var1);
    }

}

