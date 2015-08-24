/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import com.google.android.gms.fitness.request.SessionReadRequest;
import com.google.android.gms.fitness.result.SessionReadResult;
import com.google.android.gms.fitness.result.SessionStopResult;

public interface SessionsApi {
    public PendingResult<Status> insertSession(GoogleApiClient var1, SessionInsertRequest var2);

    public PendingResult<SessionReadResult> readSession(GoogleApiClient var1, SessionReadRequest var2);

    public PendingResult<Status> registerForSessions(GoogleApiClient var1, PendingIntent var2);

    public PendingResult<Status> startSession(GoogleApiClient var1, Session var2);

    public PendingResult<SessionStopResult> stopSession(GoogleApiClient var1, String var2);

    public PendingResult<Status> unregisterForSessions(GoogleApiClient var1, PendingIntent var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class ViewIntentBuilder {
        private String Ss;
        private Session St;
        private boolean Su;
        private final Context mContext;

        public ViewIntentBuilder(Context var1);

        private Intent i(Intent var1);

        public Intent build();

        public ViewIntentBuilder setPreferredApplication(String var1);

        public ViewIntentBuilder setSession(Session var1);
    }

}

