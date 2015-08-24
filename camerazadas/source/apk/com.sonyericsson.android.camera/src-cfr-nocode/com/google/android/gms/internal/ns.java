/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;

/*
 * Exception performing whole class analysis ignored.
 */
public final class ns
implements Moments {
    public ns();

    @Override
    public PendingResult<Moments.LoadMomentsResult> load(GoogleApiClient var1);

    @Override
    public PendingResult<Moments.LoadMomentsResult> load(GoogleApiClient var1, int var2, String var3, Uri var4, String var5, String var6);

    @Override
    public PendingResult<Status> remove(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<Status> write(GoogleApiClient var1, Moment var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class a
    extends Plus.a<Moments.LoadMomentsResult> {
        private a();

        /* synthetic */ a(com.google.android.gms.internal.ns$1 var1);

        public Moments.LoadMomentsResult aC(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class b
    extends Plus.a<Status> {
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
    extends Plus.a<Status> {
        private c();

        /* synthetic */ c( var1);

        @Override
        public /* synthetic */ Result c(Status var1);

        public Status d(Status var1);
    }

}

