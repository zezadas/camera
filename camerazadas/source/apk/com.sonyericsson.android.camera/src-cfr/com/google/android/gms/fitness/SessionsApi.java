/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.c;
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

    public static class ViewIntentBuilder {
        private String Ss;
        private Session St;
        private boolean Su = false;
        private final Context mContext;

        public ViewIntentBuilder(Context context) {
            this.mContext = context;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        private Intent i(Intent object) {
            if (this.Ss == null) {
                return object;
            }
            Intent intent = new Intent((Intent)object).setPackage(this.Ss);
            ResolveInfo resolveInfo = this.mContext.getPackageManager().resolveActivity(intent, 0);
            if (resolveInfo == null) return object;
            object = resolveInfo.activityInfo.name;
            intent.setComponent(new ComponentName(this.Ss, (String)object));
            return intent;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Intent build() {
            boolean bl = this.St != null;
            o.a(bl, "Session must be set");
            Intent intent = new Intent("vnd.google.fitness.VIEW");
            intent.setType(Session.getMimeType(this.St.getActivity()));
            c.a(this.St, intent, "vnd.google.fitness.session");
            if (!this.Su) {
                this.Ss = this.St.getAppPackageName();
            }
            return this.i(intent);
        }

        public ViewIntentBuilder setPreferredApplication(String string) {
            this.Ss = string;
            this.Su = true;
            return this;
        }

        public ViewIntentBuilder setSession(Session session) {
            this.St = session;
            return this;
        }
    }

}

