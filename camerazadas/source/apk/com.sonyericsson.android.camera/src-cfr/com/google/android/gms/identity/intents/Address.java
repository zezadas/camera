/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.identity.intents;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.internal.lm;

public final class Address {
    public static final Api<AddressOptions> API;
    static final Api.c<lm> CU;
    private static final Api.b<lm, AddressOptions> CV;

    static {
        CU = new Api.c();
        CV = new Api.b<lm, AddressOptions>(){

            @Override
            public lm a(Context context, Looper looper, ClientSettings clientSettings, AddressOptions addressOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                o.b(context instanceof Activity, (Object)"An Activity must be used for Address APIs");
                AddressOptions addressOptions2 = addressOptions;
                if (addressOptions == null) {
                    addressOptions2 = new AddressOptions();
                }
                return new lm((Activity)context, looper, connectionCallbacks, onConnectionFailedListener, clientSettings.getAccountName(), addressOptions2.theme);
            }

            @Override
            public int getPriority() {
                return Integer.MAX_VALUE;
            }
        };
        API = new Api<AddressOptions>(CV, CU, new Scope[0]);
    }

    public static void requestUserAddress(GoogleApiClient googleApiClient, final UserAddressRequest userAddressRequest, final int n) {
        googleApiClient.a(new a(){

            @Override
            protected void a(lm lm) throws RemoteException {
                lm.a(userAddressRequest, n);
                this.b(Status.Jv);
            }
        });
    }

    public static final class AddressOptions
    implements Api.ApiOptions.HasOptions {
        public final int theme;

        public AddressOptions() {
            this.theme = 0;
        }

        public AddressOptions(int n) {
            this.theme = n;
        }
    }

    private static abstract class a
    extends BaseImplementation.a<Status, lm> {
        public a() {
            super(Address.CU);
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        public Status d(Status status) {
            return status;
        }
    }

}

