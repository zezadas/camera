/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.om;
import com.google.android.gms.internal.ox;
import com.google.android.gms.internal.oy;
import com.google.android.gms.internal.pa;
import com.google.android.gms.internal.pb;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.Payments;
import com.google.android.gms.wallet.wobs.r;
import java.util.Locale;

public final class Wallet {
    public static final Api<WalletOptions> API;
    private static final Api.c<oy> CU;
    private static final Api.b<oy, WalletOptions> CV;
    public static final Payments Payments;
    public static final r atJ;
    public static final om atK;

    static {
        CU = new Api.c();
        CV = new Api.b<oy, WalletOptions>(){

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public oy a(Context context, Looper looper, ClientSettings clientSettings, WalletOptions walletOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                o.b(context instanceof Activity, (Object)"An Activity must be used for Wallet APIs");
                context = (Activity)context;
                if (walletOptions != null) {
                    do {
                        return new oy((Activity)context, looper, connectionCallbacks, onConnectionFailedListener, walletOptions.environment, clientSettings.getAccountName(), walletOptions.theme);
                        break;
                    } while (true);
                }
                walletOptions = new WalletOptions();
                return new oy((Activity)context, looper, connectionCallbacks, onConnectionFailedListener, walletOptions.environment, clientSettings.getAccountName(), walletOptions.theme);
            }

            @Override
            public int getPriority() {
                return Integer.MAX_VALUE;
            }
        };
        API = new Api<WalletOptions>(CV, CU, new Scope[0]);
        Payments = new ox();
        atJ = new pb();
        atK = new pa();
    }

    private Wallet() {
    }

    @Deprecated
    public static void changeMaskedWallet(GoogleApiClient googleApiClient, String string, String string2, int n) {
        Payments.changeMaskedWallet(googleApiClient, string, string2, n);
    }

    @Deprecated
    public static void checkForPreAuthorization(GoogleApiClient googleApiClient, int n) {
        Payments.checkForPreAuthorization(googleApiClient, n);
    }

    @Deprecated
    public static void loadFullWallet(GoogleApiClient googleApiClient, FullWalletRequest fullWalletRequest, int n) {
        Payments.loadFullWallet(googleApiClient, fullWalletRequest, n);
    }

    @Deprecated
    public static void loadMaskedWallet(GoogleApiClient googleApiClient, MaskedWalletRequest maskedWalletRequest, int n) {
        Payments.loadMaskedWallet(googleApiClient, maskedWalletRequest, n);
    }

    @Deprecated
    public static void notifyTransactionStatus(GoogleApiClient googleApiClient, NotifyTransactionStatusRequest notifyTransactionStatusRequest) {
        Payments.notifyTransactionStatus(googleApiClient, notifyTransactionStatusRequest);
    }

    public static final class WalletOptions
    implements Api.ApiOptions.HasOptions {
        public final int environment;
        public final int theme;

        private WalletOptions() {
            this(new Builder());
        }

        private WalletOptions(Builder builder) {
            this.environment = builder.atL;
            this.theme = builder.mTheme;
        }

        public static final class Builder {
            private int atL = 0;
            private int mTheme = 0;

            public WalletOptions build() {
                return new WalletOptions(this);
            }

            public Builder setEnvironment(int n) {
                if (n == 0 || n == 2 || n == 1) {
                    this.atL = n;
                    return this;
                }
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid environment value %d", n));
            }

            public Builder setTheme(int n) {
                if (n == 0 || n == 1) {
                    this.mTheme = n;
                    return this;
                }
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid theme value %d", n));
            }
        }

    }

    public static abstract class a<R extends Result>
    extends BaseImplementation.a<R, oy> {
        public a() {
            super(CU);
        }
    }

    public static abstract class b
    extends a<Status> {
        @Override
        protected /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        protected Status d(Status status) {
            return status;
        }
    }

}

