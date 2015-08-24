/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hv;
import com.google.android.gms.internal.hx;
import com.google.android.gms.internal.hy;
import java.util.List;

/*
 * Exception performing whole class analysis ignored.
 */
public final class hz
implements AppIndexApi,
hu {
    public hz();

    public static Uri a(String var0, Uri var1);

    public /* varargs */ PendingResult<Status> a(GoogleApiClient var1, hs ... var2);

    @Override
    public PendingResult<Status> view(GoogleApiClient var1, Activity var2, Intent var3, String var4, Uri var5, List<AppIndexApi.AppIndexingLink> var6);

    @Override
    public PendingResult<Status> view(GoogleApiClient var1, Activity var2, Uri var3, String var4, Uri var5, List<AppIndexApi.AppIndexingLink> var6);

    @Override
    public PendingResult<Status> viewEnd(GoogleApiClient var1, Activity var2, Intent var3);

    @Override
    public PendingResult<Status> viewEnd(GoogleApiClient var1, Activity var2, Uri var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class a<T>
    implements Result {
        private final Status CM;
        protected final T CN;

        public a(Status var1, T var2);

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class b
    extends a<ParcelFileDescriptor>
    implements hu.a {
        public b(Status var1, ParcelFileDescriptor var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class c<T extends Result>
    extends BaseImplementation.a<T, hy> {
        public c();

        @Override
        protected abstract void a(hv var1) throws RemoteException;

        @Override
        protected final void a(hy var1) throws RemoteException;
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class d<T extends Result>
    extends c<Status> {
        private d();

        /* synthetic */ d( var1);

        @Override
        protected /* synthetic */ Result c(Status var1);

        protected Status d(Status var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static final class e
    extends hx<Status> {
        public e(BaseImplementation.b<Status> var1);

        @Override
        public void a(Status var1);
    }

}

