/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.identity.intents;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.internal.lm;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Address {
    public static final Api<AddressOptions> API;
    static final Api.c<lm> CU;
    private static final Api.b<lm, AddressOptions> CV;

    static;

    public Address();

    public static void requestUserAddress(GoogleApiClient var0, UserAddressRequest var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class AddressOptions
    implements Api.ApiOptions.HasOptions {
        public final int theme;

        public AddressOptions();

        public AddressOptions(int var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class a
    extends BaseImplementation.a<Status, lm> {
        public a();

        @Override
        public /* synthetic */ Result c(Status var1);

        public Status d(Status var1);
    }

}

