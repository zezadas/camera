/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.np;
import com.google.android.gms.internal.nq;
import com.google.android.gms.internal.nr;
import com.google.android.gms.internal.ns;
import com.google.android.gms.internal.nt;
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.b;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.internal.h;
import java.util.HashSet;
import java.util.Set;

public final class Plus {
    public static final Api<PlusOptions> API;
    public static final Account AccountApi;
    public static final Api.c<e> CU;
    static final Api.b<e, PlusOptions> CV;
    public static final Moments MomentsApi;
    public static final People PeopleApi;
    public static final Scope SCOPE_PLUS_LOGIN;
    public static final Scope SCOPE_PLUS_PROFILE;
    public static final b akZ;
    public static final com.google.android.gms.plus.a ala;

    static {
        CU = new Api.c();
        CV = new Api.b<e, PlusOptions>(){

            @Override
            public e a(Context context, Looper looper, ClientSettings arrstring, PlusOptions object, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
                String[] arrstring2 = object;
                if (object == null) {
                    arrstring2 = new PlusOptions();
                }
                object = arrstring.getAccountNameOrDefault();
                arrstring = arrstring.getScopesArray();
                arrstring2 = arrstring2.alc.toArray(new String[0]);
                String string = context.getPackageName();
                String string2 = context.getPackageName();
                PlusCommonExtras plusCommonExtras = new PlusCommonExtras();
                return new e(context, looper, connectionCallbacks, onConnectionFailedListener, new h((String)object, arrstring, arrstring2, new String[0], string, string2, null, plusCommonExtras));
            }

            @Override
            public int getPriority() {
                return 2;
            }
        };
        API = new Api<PlusOptions>(CV, CU, new Scope[0]);
        SCOPE_PLUS_LOGIN = new Scope("https://www.googleapis.com/auth/plus.login");
        SCOPE_PLUS_PROFILE = new Scope("https://www.googleapis.com/auth/plus.me");
        MomentsApi = new ns();
        PeopleApi = new nt();
        AccountApi = new np();
        akZ = new nr();
        ala = new nq();
    }

    private Plus() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static e a(GoogleApiClient object, Api.c<e> c) {
        boolean bl = true;
        boolean bl2 = object != null;
        o.b(bl2, (Object)"GoogleApiClient parameter is required.");
        o.a(object.isConnected(), "GoogleApiClient must be connected.");
        object = (e)object.a(c);
        bl2 = object != null ? bl : false;
        o.a(bl2, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
        return object;
    }

    public static final class PlusOptions
    implements Api.ApiOptions.Optional {
        final String alb;
        final Set<String> alc;

        private PlusOptions() {
            this.alb = null;
            this.alc = new HashSet<String>();
        }

        private PlusOptions(Builder builder) {
            this.alb = builder.alb;
            this.alc = builder.alc;
        }

        public static Builder builder() {
            return new Builder();
        }

        public static final class Builder {
            String alb;
            final Set<String> alc = new HashSet<String>();

            public /* varargs */ Builder addActivityTypes(String ... arrstring) {
                o.b(arrstring, (Object)"activityTypes may not be null.");
                for (int i = 0; i < arrstring.length; ++i) {
                    this.alc.add(arrstring[i]);
                }
                return this;
            }

            public PlusOptions build() {
                return new PlusOptions(this);
            }

            public Builder setServerClientId(String string) {
                this.alb = string;
                return this;
            }
        }

    }

    public static abstract class a<R extends Result>
    extends BaseImplementation.a<R, e> {
        public a() {
            super(Plus.CU);
        }
    }

}

