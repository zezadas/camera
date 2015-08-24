/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.lz;
import com.google.android.gms.location.ActivityRecognition;
import com.google.android.gms.location.ActivityRecognitionApi;

public class lr
implements ActivityRecognitionApi {
    @Override
    public PendingResult<Status> removeActivityUpdates(GoogleApiClient googleApiClient, final PendingIntent pendingIntent) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(lz lz) throws RemoteException {
                lz.removeActivityUpdates(pendingIntent);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public PendingResult<Status> requestActivityUpdates(GoogleApiClient googleApiClient, final long l, final PendingIntent pendingIntent) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(lz lz) throws RemoteException {
                lz.requestActivityUpdates(l, pendingIntent);
                this.b(Status.Jv);
            }
        });
    }

    private static abstract class a
    extends ActivityRecognition.a<Status> {
        private a() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        public Status d(Status status) {
            return status;
        }
    }

}

