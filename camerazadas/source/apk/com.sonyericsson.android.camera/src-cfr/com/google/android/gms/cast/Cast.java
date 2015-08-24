/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ij;
import java.io.IOException;

public final class Cast {
    public static final Api<CastOptions> API;
    static final Api.c<ij> CU;
    private static final Api.b<ij, CastOptions> CV;
    public static final CastApi CastApi;
    public static final String EXTRA_APP_NO_LONGER_RUNNING = "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING";
    public static final int MAX_MESSAGE_LENGTH = 65536;
    public static final int MAX_NAMESPACE_LENGTH = 128;

    static {
        CU = new Api.c();
        CV = new Api.b<ij, CastOptions>(){

            @Override
            public ij a(Context context, Looper looper, ClientSettings clientSettings, CastOptions castOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                o.b(castOptions, (Object)"Setting the API options is required.");
                return new ij(context, looper, castOptions.EK, castOptions.EM, castOptions.EL, connectionCallbacks, onConnectionFailedListener);
            }

            @Override
            public int getPriority() {
                return Integer.MAX_VALUE;
            }
        };
        API = new Api<CastOptions>(CV, CU, new Scope[0]);
        CastApi = new CastApi.a();
    }

    private Cast() {
    }

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

        public static final class a
        implements CastApi {
            @Override
            public ApplicationMetadata getApplicationMetadata(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((ij)googleApiClient.a(Cast.CU)).getApplicationMetadata();
            }

            @Override
            public String getApplicationStatus(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((ij)googleApiClient.a(Cast.CU)).getApplicationStatus();
            }

            @Override
            public double getVolume(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((ij)googleApiClient.a(Cast.CU)).fE();
            }

            @Override
            public boolean isMute(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((ij)googleApiClient.a(Cast.CU)).isMute();
            }

            @Override
            public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient) {
                return googleApiClient.b(new c(){

                    @Override
                    protected void a(ij ij) throws RemoteException {
                        try {
                            ij.b(null, null, this);
                            return;
                        }
                        catch (IllegalStateException var1_2) {
                            this.V(2001);
                            return;
                        }
                    }
                });
            }

            @Override
            public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, final String string) {
                return googleApiClient.b(new c(){

                    @Override
                    protected void a(ij ij) throws RemoteException {
                        try {
                            ij.b(string, null, this);
                            return;
                        }
                        catch (IllegalStateException var1_2) {
                            this.V(2001);
                            return;
                        }
                    }
                });
            }

            @Override
            public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, final String string, final String string2) {
                return googleApiClient.b(new c(){

                    @Override
                    protected void a(ij ij) throws RemoteException {
                        try {
                            ij.b(string, string2, this);
                            return;
                        }
                        catch (IllegalStateException var1_2) {
                            this.V(2001);
                            return;
                        }
                    }
                });
            }

            @Override
            public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, final String string) {
                return googleApiClient.b(new c(){

                    @Override
                    protected void a(ij ij) throws RemoteException {
                        try {
                            ij.a(string, false, this);
                            return;
                        }
                        catch (IllegalStateException var1_2) {
                            this.V(2001);
                            return;
                        }
                    }
                });
            }

            @Override
            public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, final String string, final LaunchOptions launchOptions) {
                return googleApiClient.b(new c(){

                    @Override
                    protected void a(ij ij) throws RemoteException {
                        try {
                            ij.a(string, launchOptions, this);
                            return;
                        }
                        catch (IllegalStateException var1_2) {
                            this.V(2001);
                            return;
                        }
                    }
                });
            }

            @Deprecated
            @Override
            public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String string, boolean bl) {
                return this.launchApplication(googleApiClient, string, new LaunchOptions.Builder().setRelaunchIfRunning(bl).build());
            }

            @Override
            public PendingResult<Status> leaveApplication(GoogleApiClient googleApiClient) {
                return googleApiClient.b(new b(){

                    @Override
                    protected void a(ij ij) throws RemoteException {
                        try {
                            ij.d(this);
                            return;
                        }
                        catch (IllegalStateException var1_2) {
                            this.V(2001);
                            return;
                        }
                    }
                });
            }

            @Override
            public void removeMessageReceivedCallbacks(GoogleApiClient googleApiClient, String string) throws IOException, IllegalArgumentException {
                try {
                    ((ij)googleApiClient.a(Cast.CU)).aE(string);
                    return;
                }
                catch (RemoteException var1_2) {
                    throw new IOException("service error");
                }
            }

            @Override
            public void requestStatus(GoogleApiClient googleApiClient) throws IOException, IllegalStateException {
                try {
                    ((ij)googleApiClient.a(Cast.CU)).fD();
                    return;
                }
                catch (RemoteException var1_2) {
                    throw new IOException("service error");
                }
            }

            @Override
            public PendingResult<Status> sendMessage(GoogleApiClient googleApiClient, final String string, final String string2) {
                return googleApiClient.b(new b(){

                    @Override
                    protected void a(ij ij) throws RemoteException {
                        try {
                            ij.a(string, string2, this);
                            return;
                        }
                        catch (IllegalArgumentException var1_2) {
                            this.V(2001);
                            return;
                        }
                        catch (IllegalStateException var1_3) {
                            this.V(2001);
                            return;
                        }
                    }
                });
            }

            @Override
            public void setMessageReceivedCallbacks(GoogleApiClient googleApiClient, String string, MessageReceivedCallback messageReceivedCallback) throws IOException, IllegalStateException {
                try {
                    ((ij)googleApiClient.a(Cast.CU)).a(string, messageReceivedCallback);
                    return;
                }
                catch (RemoteException var1_2) {
                    throw new IOException("service error");
                }
            }

            @Override
            public void setMute(GoogleApiClient googleApiClient, boolean bl) throws IOException, IllegalStateException {
                try {
                    ((ij)googleApiClient.a(Cast.CU)).G(bl);
                    return;
                }
                catch (RemoteException var1_2) {
                    throw new IOException("service error");
                }
            }

            @Override
            public void setVolume(GoogleApiClient googleApiClient, double d) throws IOException, IllegalArgumentException, IllegalStateException {
                try {
                    ((ij)googleApiClient.a(Cast.CU)).a(d);
                    return;
                }
                catch (RemoteException var1_2) {
                    throw new IOException("service error");
                }
            }

            @Override
            public PendingResult<Status> stopApplication(GoogleApiClient googleApiClient) {
                return googleApiClient.b(new b(){

                    @Override
                    protected void a(ij ij) throws RemoteException {
                        try {
                            ij.a("", this);
                            return;
                        }
                        catch (IllegalStateException var1_2) {
                            this.V(2001);
                            return;
                        }
                    }
                });
            }

            @Override
            public PendingResult<Status> stopApplication(GoogleApiClient googleApiClient, final String string) {
                return googleApiClient.b(new b(){

                    @Override
                    protected void a(ij ij) throws RemoteException {
                        if (TextUtils.isEmpty((CharSequence)string)) {
                            this.e(2001, "IllegalArgument: sessionId cannot be null or empty");
                            return;
                        }
                        try {
                            ij.a(string, this);
                            return;
                        }
                        catch (IllegalStateException var1_2) {
                            this.V(2001);
                            return;
                        }
                    }
                });
            }

        }

    }

    public static final class CastOptions
    implements Api.ApiOptions.HasOptions {
        final CastDevice EK;
        final Listener EL;
        private final int EM;

        private CastOptions(Builder builder) {
            this.EK = builder.EN;
            this.EL = builder.EO;
            this.EM = builder.EP;
        }

        public static Builder builder(CastDevice castDevice, Listener listener) {
            return new Builder(castDevice, listener);
        }

        public static final class Builder {
            CastDevice EN;
            Listener EO;
            private int EP;

            private Builder(CastDevice castDevice, Listener listener) {
                o.b(castDevice, (Object)"CastDevice parameter cannot be null");
                o.b(listener, (Object)"CastListener parameter cannot be null");
                this.EN = castDevice;
                this.EO = listener;
                this.EP = 0;
            }

            public CastOptions build() {
                return new CastOptions(this);
            }

            public Builder setVerboseLoggingEnabled(boolean bl) {
                if (bl) {
                    --this.EP;
                    return this;
                }
                this.EP&=-2;
                return this;
            }
        }

    }

    public static class Listener {
        public void W(int n) {
        }

        public void X(int n) {
        }

        public void onApplicationDisconnected(int n) {
        }

        public void onApplicationStatusChanged() {
        }

        public void onVolumeChanged() {
        }
    }

    public static interface MessageReceivedCallback {
        public void onMessageReceived(CastDevice var1, String var2, String var3);
    }

    protected static abstract class a<R extends Result>
    extends BaseImplementation.a<R, ij> {
        public a() {
            super(Cast.CU);
        }

        public void V(int n) {
            this.b(this.c(new Status(n)));
        }

        public void e(int n, String string) {
            this.b(this.c(new Status(n, string, null)));
        }
    }

    private static abstract class b
    extends a<Status> {
        private b() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        public Status d(Status status) {
            return status;
        }
    }

    private static abstract class c
    extends a<ApplicationConnectionResult> {
        private c() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.j(status);
        }

        public ApplicationConnectionResult j(final Status status) {
            return new ApplicationConnectionResult(){

                @Override
                public ApplicationMetadata getApplicationMetadata() {
                    return null;
                }

                @Override
                public String getApplicationStatus() {
                    return null;
                }

                @Override
                public String getSessionId() {
                    return null;
                }

                @Override
                public Status getStatus() {
                    return status;
                }

                @Override
                public boolean getWasLaunched() {
                    return false;
                }
            };
        }

    }

}

