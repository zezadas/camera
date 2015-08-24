/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.internal.aw;
import com.google.android.gms.wearable.internal.d;

public final class ag
implements MessageApi {
    private PendingResult<Status> a(GoogleApiClient googleApiClient, final MessageApi.MessageListener messageListener, final IntentFilter[] arrintentFilter) {
        return googleApiClient.a(new d<Status>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.a(this, messageListener, arrintentFilter);
            }

            @Override
            public /* synthetic */ Result c(Status status) {
                return this.d(status);
            }

            public Status d(Status status) {
                return new Status(13);
            }
        });
    }

    @Override
    public PendingResult<Status> addListener(GoogleApiClient googleApiClient, MessageApi.MessageListener messageListener) {
        return this.a(googleApiClient, messageListener, null);
    }

    @Override
    public PendingResult<Status> removeListener(GoogleApiClient googleApiClient, final MessageApi.MessageListener messageListener) {
        return googleApiClient.a(new d<Status>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.a(this, messageListener);
            }

            @Override
            public /* synthetic */ Result c(Status status) {
                return this.d(status);
            }

            public Status d(Status status) {
                return new Status(13);
            }
        });
    }

    @Override
    public PendingResult<MessageApi.SendMessageResult> sendMessage(GoogleApiClient googleApiClient, final String string, final String string2, final byte[] arrby) {
        return googleApiClient.a(new d<MessageApi.SendMessageResult>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.a(this, string, string2, arrby);
            }

            protected MessageApi.SendMessageResult aJ(Status status) {
                return new a(status, -1);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.aJ(status);
            }
        });
    }

    public static class a
    implements MessageApi.SendMessageResult {
        private final Status CM;
        private final int uQ;

        public a(Status status, int n) {
            this.CM = status;
            this.uQ = n;
        }

        @Override
        public int getRequestId() {
            return this.uQ;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

}

