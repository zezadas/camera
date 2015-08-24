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
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.b;
import com.google.android.gms.plus.internal.e;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    static;

    private Plus();

    public static e a(GoogleApiClient var0, Api.c<e> var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class PlusOptions
    implements Api.ApiOptions.Optional {
        final String alb;
        final Set<String> alc;

        private PlusOptions();

        /* synthetic */ PlusOptions( var1);

        private PlusOptions(Builder var1);

        /* synthetic */ PlusOptions(Builder var1,  var2);

        public static Builder builder();

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        public static final class Builder {
            String alb;
            final Set<String> alc;

            public Builder();

            public /* varargs */ Builder addActivityTypes(String ... var1);

            public PlusOptions build();

            public Builder setServerClientId(String var1);
        }

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class a<R extends Result>
    extends BaseImplementation.a<R, e> {
        public a();
    }

}

