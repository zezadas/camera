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
import com.google.android.gms.fitness.SessionsApi;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import com.google.android.gms.fitness.request.SessionReadRequest;
import com.google.android.gms.fitness.result.SessionReadResult;
import com.google.android.gms.fitness.result.SessionStopResult;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kr;
import com.google.android.gms.internal.ks;

/*
 * Exception performing whole class analysis ignored.
 */
public class ld
implements SessionsApi {
    public ld();

    private PendingResult<SessionStopResult> a(GoogleApiClient var1, String var2, String var3);

    @Override
    public PendingResult<Status> insertSession(GoogleApiClient var1, SessionInsertRequest var2);

    @Override
    public PendingResult<SessionReadResult> readSession(GoogleApiClient var1, SessionReadRequest var2);

    @Override
    public PendingResult<Status> registerForSessions(GoogleApiClient var1, PendingIntent var2);

    @Override
    public PendingResult<Status> startSession(GoogleApiClient var1, Session var2);

    @Override
    public PendingResult<SessionStopResult> stopSession(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<Status> unregisterForSessions(GoogleApiClient var1, PendingIntent var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends kr.a {
        private final BaseImplementation.b<SessionReadResult> De;

        private a(BaseImplementation.b<SessionReadResult> var1);

        /* synthetic */ a(BaseImplementation.b var1,  var2);

        @Override
        public void a(SessionReadResult var1) throws RemoteException;
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class b
    extends ks.a {
        private final BaseImplementation.b<SessionStopResult> De;

        private b(BaseImplementation.b<SessionStopResult> var1);

        /* synthetic */ b(BaseImplementation.b var1,  var2);

        @Override
        public void a(SessionStopResult var1);
    }

}

