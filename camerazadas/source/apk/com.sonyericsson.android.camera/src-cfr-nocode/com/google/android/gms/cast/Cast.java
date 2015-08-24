/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.ij;
import java.io.IOException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Cast {
    public static final Api<CastOptions> API;
    static final Api.c<ij> CU;
    private static final Api.b<ij, CastOptions> CV;
    public static final CastApi CastApi;
    public static final String EXTRA_APP_NO_LONGER_RUNNING = "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING";
    public static final int MAX_MESSAGE_LENGTH = 65536;
    public static final int MAX_NAMESPACE_LENGTH = 128;

    static;

    private Cast();

    public static interface ApplicationConnectionResult
    extends Result {
        public ApplicationMetadata getApplicationMetadata();

        public String getApplicationStatus();

        public String getSessionId();

        public boolean getWasLaunched();
    }

    public static interface CastApi {
        public ApplicationMetadata getApplicationMetadata(GoogleApiClient var1) throws IllegalStateException;

        public String getApplicationStatus(GoogleApiClient var1) throws IllegalStateException;

        public double getVolume(GoogleApiClient var1) throws IllegalStateException;

        public boolean isMute(GoogleApiClient var1) throws IllegalStateException;

        public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient var1);

        public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient var1, String var2);

        public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient var1, String var2, String var3);

        public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient var1, String var2);

        public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient var1, String var2, LaunchOptions var3);

        @Deprecated
        public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient var1, String var2, boolean var3);

        public PendingResult<Status> leaveApplication(GoogleApiClient var1);

        public void removeMessageReceivedCallbacks(GoogleApiClient var1, String var2) throws IOException, IllegalArgumentException;

        public void requestStatus(GoogleApiClient var1) throws IOException, IllegalStateException;

        public PendingResult<Status> sendMessage(GoogleApiClient var1, String var2, String var3);

        public void setMessageReceivedCallbacks(GoogleApiClient var1, String var2, MessageReceivedCallback var3) throws IOException, IllegalStateException;

        public void setMute(GoogleApiClient var1, boolean var2) throws IOException, IllegalStateException;

        public void setVolume(GoogleApiClient var1, double var2) throws IOException, IllegalArgumentException, IllegalStateException;

        public PendingResult<Status> stopApplication(GoogleApiClient var1);

        public PendingResult<Status> stopApplication(GoogleApiClient var1, String var2);

        /*
         * Exception performing whole class analysis ignored.
         */
        public static final class a
        implements CastApi {
            public a();

            @Override
            public ApplicationMetadata getApplicationMetadata(GoogleApiClient var1) throws IllegalStateException;

            @Override
            public String getApplicationStatus(GoogleApiClient var1) throws IllegalStateException;

            @Override
            public double getVolume(GoogleApiClient var1) throws IllegalStateException;

            @Override
            public boolean isMute(GoogleApiClient var1) throws IllegalStateException;

            @Override
            public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient var1);

            @Override
            public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient var1, String var2);

            @Override
            public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient var1, String var2, String var3);

            @Override
            public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient var1, String var2);

            @Override
            public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient var1, String var2, LaunchOptions var3);

            @Deprecated
            @Override
            public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient var1, String var2, boolean var3);

            @Override
            public PendingResult<Status> leaveApplication(GoogleApiClient var1);

            @Override
            public void removeMessageReceivedCallbacks(GoogleApiClient var1, String var2) throws IOException, IllegalArgumentException;

            @Override
            public void requestStatus(GoogleApiClient var1) throws IOException, IllegalStateException;

            @Override
            public PendingResult<Status> sendMessage(GoogleApiClient var1, String var2, String var3);

            @Override
            public void setMessageReceivedCallbacks(GoogleApiClient var1, String var2, MessageReceivedCallback var3) throws IOException, IllegalStateException;

            @Override
            public void setMute(GoogleApiClient var1, boolean var2) throws IOException, IllegalStateException;

            @Override
            public void setVolume(GoogleApiClient var1, double var2) throws IOException, IllegalArgumentException, IllegalStateException;

            @Override
            public PendingResult<Status> stopApplication(GoogleApiClient var1);

            @Override
            public PendingResult<Status> stopApplication(GoogleApiClient var1, String var2);

        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class CastOptions
    implements Api.ApiOptions.HasOptions {
        final CastDevice EK;
        final Listener EL;
        private final int EM;

        private CastOptions(Builder var1);

        /* synthetic */ CastOptions(Builder var1,  var2);

        static /* synthetic */ int a(CastOptions var0);

        public static Builder builder(CastDevice var0, Listener var1);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        public static final class Builder {
            CastDevice EN;
            Listener EO;
            private int EP;

            private Builder(CastDevice var1, Listener var2);

            /* synthetic */ Builder(CastDevice var1, Listener var2,  var3);

            static /* synthetic */ int a(Builder var0);

            public CastOptions build();

            public Builder setVerboseLoggingEnabled(boolean var1);
        }

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class Listener {
        public Listener();

        public void W(int var1);

        public void X(int var1);

        public void onApplicationDisconnected(int var1);

        public void onApplicationStatusChanged();

        public void onVolumeChanged();
    }

    public static interface MessageReceivedCallback {
        public void onMessageReceived(CastDevice var1, String var2, String var3);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    protected static abstract class a<R extends Result>
    extends BaseImplementation.a<R, ij> {
        public a();

        public void V(int var1);

        public void e(int var1, String var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class b
    extends a<Status> {
        private b();

        /* synthetic */ b( var1);

        @Override
        public /* synthetic */ Result c(Status var1);

        public Status d(Status var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class c
    extends a<ApplicationConnectionResult> {
        private c();

        /* synthetic */ c(com.google.android.gms.cast.Cast$1 var1);

        @Override
        public /* synthetic */ Result c(Status var1);

        public ApplicationConnectionResult j(Status var1);

    }

}

