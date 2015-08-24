/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.om;
import com.google.android.gms.internal.oy;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.Payments;
import com.google.android.gms.wallet.wobs.r;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Wallet {
    public static final Api<WalletOptions> API;
    private static final Api.c<oy> CU;
    private static final Api.b<oy, WalletOptions> CV;
    public static final Payments Payments;
    public static final r atJ;
    public static final om atK;

    static;

    private Wallet();

    @Deprecated
    public static void changeMaskedWallet(GoogleApiClient var0, String var1, String var2, int var3);

    @Deprecated
    public static void checkForPreAuthorization(GoogleApiClient var0, int var1);

    @Deprecated
    public static void loadFullWallet(GoogleApiClient var0, FullWalletRequest var1, int var2);

    @Deprecated
    public static void loadMaskedWallet(GoogleApiClient var0, MaskedWalletRequest var1, int var2);

    @Deprecated
    public static void notifyTransactionStatus(GoogleApiClient var0, NotifyTransactionStatusRequest var1);

    static /* synthetic */ Api.c pN();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class WalletOptions
    implements Api.ApiOptions.HasOptions {
        public final int environment;
        public final int theme;

        private WalletOptions();

        /* synthetic */ WalletOptions( var1);

        private WalletOptions(Builder var1);

        /* synthetic */ WalletOptions(Builder var1,  var2);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        public static final class Builder {
            private int atL;
            private int mTheme;

            public Builder();

            static /* synthetic */ int a(Builder var0);

            static /* synthetic */ int b(Builder var0);

            public WalletOptions build();

            public Builder setEnvironment(int var1);

            public Builder setTheme(int var1);
        }

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class a<R extends Result>
    extends BaseImplementation.a<R, oy> {
        public a();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class b
    extends a<Status> {
        public b();

        @Override
        protected /* synthetic */ Result c(Status var1);

        protected Status d(Status var1);
    }

}

