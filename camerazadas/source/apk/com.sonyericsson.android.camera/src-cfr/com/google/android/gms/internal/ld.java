/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.SessionsApi;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import com.google.android.gms.fitness.request.SessionReadRequest;
import com.google.android.gms.fitness.request.aa;
import com.google.android.gms.fitness.request.u;
import com.google.android.gms.fitness.request.w;
import com.google.android.gms.fitness.request.y;
import com.google.android.gms.fitness.result.SessionReadResult;
import com.google.android.gms.fitness.result.SessionStopResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kr;
import com.google.android.gms.internal.ks;
import com.google.android.gms.internal.kt;

public class ld
implements SessionsApi {
    private PendingResult<SessionStopResult> a(GoogleApiClient googleApiClient, final String string, final String string2) {
        return googleApiClient.b(new kk.a<SessionStopResult>(){

            protected SessionStopResult B(Status status) {
                return SessionStopResult.I(status);
            }

            @Override
            protected void a(kk kk) throws RemoteException {
                b b = new b(this);
                String string3 = kk.getContext().getPackageName();
                kk.jb().a(new y.a().bu(string).bv(string2).jB(), b, string3);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.B(status);
            }
        });
    }

    @Override
    public PendingResult<Status> insertSession(GoogleApiClient googleApiClient, final SessionInsertRequest sessionInsertRequest) {
        return googleApiClient.a(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(sessionInsertRequest, (kt)b, string);
            }
        });
    }

    @Override
    public PendingResult<SessionReadResult> readSession(GoogleApiClient googleApiClient, final SessionReadRequest sessionReadRequest) {
        return googleApiClient.a(new kk.a<SessionReadResult>(){

            protected SessionReadResult C(Status status) {
                return SessionReadResult.H(status);
            }

            @Override
            protected void a(kk kk) throws RemoteException {
                a a = new a(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(sessionReadRequest, a, string);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.C(status);
            }
        });
    }

    @Override
    public PendingResult<Status> registerForSessions(GoogleApiClient googleApiClient, final PendingIntent pendingIntent) {
        return googleApiClient.b(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                u u = new u(pendingIntent);
                String string = kk.getContext().getPackageName();
                kk.jb().a(u, (kt)b, string);
            }
        });
    }

    @Override
    public PendingResult<Status> startSession(GoogleApiClient googleApiClient, final Session session) {
        return googleApiClient.b(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                String string = kk.getContext().getPackageName();
                kk.jb().a(new w.a().b(session).jA(), (kt)b, string);
            }
        });
    }

    @Override
    public PendingResult<SessionStopResult> stopSession(GoogleApiClient googleApiClient, String string) {
        return this.a(googleApiClient, null, string);
    }

    @Override
    public PendingResult<Status> unregisterForSessions(GoogleApiClient googleApiClient, final PendingIntent pendingIntent) {
        return googleApiClient.b(new kk.c(){

            @Override
            protected void a(kk kk) throws RemoteException {
                kk.b b = new kk.b(this);
                aa aa = new aa(pendingIntent);
                String string = kk.getContext().getPackageName();
                kk.jb().a(aa, (kt)b, string);
            }
        });
    }

    private static class a
    extends kr.a {
        private final BaseImplementation.b<SessionReadResult> De;

        private a(BaseImplementation.b<SessionReadResult> b) {
            this.De = b;
        }

        @Override
        public void a(SessionReadResult sessionReadResult) throws RemoteException {
            this.De.b(sessionReadResult);
        }
    }

    private static class b
    extends ks.a {
        private final BaseImplementation.b<SessionStopResult> De;

        private b(BaseImplementation.b<SessionStopResult> b) {
            this.De = b;
        }

        @Override
        public void a(SessionStopResult sessionStopResult) {
            this.De.b(sessionStopResult);
        }
    }

}

