/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.na;
import com.google.android.gms.internal.nb;
import com.google.android.gms.internal.nd;
import com.google.android.gms.panorama.PanoramaApi;

/*
 * Exception performing whole class analysis ignored.
 */
public class nc
implements PanoramaApi {
    public nc();

    private static void a(Context var0, Uri var1);

    private static void a(Context var0, nb var1, na var2, Uri var3, Bundle var4) throws RemoteException;

    static /* synthetic */ void b(Context var0, Uri var1);

    static /* synthetic */ void b(Context var0, nb var1, na var2, Uri var3, Bundle var4) throws RemoteException;

    @Override
    public PendingResult<PanoramaApi.PanoramaResult> loadPanoramaInfo(GoogleApiClient var1, Uri var2);

    @Override
    public PendingResult<PanoramaApi.PanoramaResult> loadPanoramaInfoAndGrantAccess(GoogleApiClient var1, Uri var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class a
    extends na.a {
        private final BaseImplementation.b<PanoramaApi.a> De;

        public a(BaseImplementation.b<PanoramaApi.a> var1);

        @Override
        public void a(int var1, Bundle var2, int var3, Intent var4);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class b
    extends d<PanoramaApi.PanoramaResult> {
        private b();

        /* synthetic */ b( var1);

        protected PanoramaApi.PanoramaResult az(Status var1);

        @Override
        protected /* synthetic */ Result c(Status var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class c
    extends na.a {
        private final BaseImplementation.b<PanoramaApi.PanoramaResult> De;

        public c(BaseImplementation.b<PanoramaApi.PanoramaResult> var1);

        @Override
        public void a(int var1, Bundle var2, int var3, Intent var4);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class d<R extends Result>
    extends BaseImplementation.a<R, nd> {
        protected d();

        protected abstract void a(Context var1, nb var2) throws RemoteException;

        @Override
        protected final void a(nd var1) throws RemoteException;
    }

}

