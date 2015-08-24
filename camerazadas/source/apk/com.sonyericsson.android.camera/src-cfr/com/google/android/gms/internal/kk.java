/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.fitness.Fitness;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kt;

public interface kk
extends Api.a {
    public Context getContext();

    public kp jb();

    public static abstract class a<R extends Result>
    extends BaseImplementation.a<R, kk> {
        public a() {
            super(Fitness.CU);
        }
    }

    public static class b
    extends kt.a {
        private final BaseImplementation.b<Status> De;

        public b(BaseImplementation.b<Status> b) {
            this.De = b;
        }

        @Override
        public void k(Status status) {
            this.De.b(status);
        }
    }

    public static abstract class c
    extends a<Status> {
        @Override
        protected /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        /*
         * Enabled aggressive block sorting
         */
        protected Status d(Status status) {
            boolean bl = !status.isSuccess();
            o.K(bl);
            return status;
        }
    }

}

