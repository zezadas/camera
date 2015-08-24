/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kt;

public interface kk
extends Api.a {
    public Context getContext();

    public kp jb();

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class a<R extends Result>
    extends BaseImplementation.a<R, kk> {
        public a();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class b
    extends kt.a {
        private final BaseImplementation.b<Status> De;

        public b(BaseImplementation.b<Status> var1);

        @Override
        public void k(Status var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class c
    extends a<Status> {
        public c();

        @Override
        protected /* synthetic */ Result c(Status var1);

        protected Status d(Status var1);
    }

}

