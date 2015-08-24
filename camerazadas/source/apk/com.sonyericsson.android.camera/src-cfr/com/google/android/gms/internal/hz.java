/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
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
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hg;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hv;
import com.google.android.gms.internal.hw;
import com.google.android.gms.internal.hx;
import com.google.android.gms.internal.hy;
import java.util.List;

public final class hz
implements AppIndexApi,
hu {
    public static Uri a(String list, Uri uri) {
        if (!"android-app".equals(uri.getScheme())) {
            throw new IllegalArgumentException("Uri scheme must be android-app: " + uri);
        }
        if (!list.equals((Object)uri.getHost())) {
            throw new IllegalArgumentException("Uri host must match package name: " + uri);
        }
        list = uri.getPathSegments();
        if (list.isEmpty() || ((String)list.get(0)).isEmpty()) {
            throw new IllegalArgumentException("Uri path must exist: " + uri);
        }
        String string = (String)list.get(0);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(string);
        if (list.size() > 1) {
            builder.authority((String)list.get(1));
            for (int i = 2; i < list.size(); ++i) {
                builder.appendPath((String)list.get(i));
            }
        }
        builder.encodedQuery(uri.getEncodedQuery());
        builder.encodedFragment(uri.getEncodedFragment());
        return builder.build();
    }

    public /* varargs */ PendingResult<Status> a(GoogleApiClient googleApiClient, hs ... arrhs) {
        return googleApiClient.a(new d<Status>(((hy)googleApiClient.a(hd.BN)).getContext().getPackageName(), arrhs){
            final /* synthetic */ String CJ;
            final /* synthetic */ hs[] CK;

            @Override
            protected void a(hv hv) throws RemoteException {
                hv.a(new e(this), this.CJ, this.CK);
            }
        });
    }

    @Override
    public PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Intent intent, String string, Uri uri, List<AppIndexApi.AppIndexingLink> list) {
        return this.a(googleApiClient, new hs(((hy)googleApiClient.a(hd.BN)).getContext().getPackageName(), intent, string, uri, null, list));
    }

    @Override
    public PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Uri uri, String string, Uri uri2, List<AppIndexApi.AppIndexingLink> list) {
        return this.view(googleApiClient, activity, new Intent("android.intent.action.VIEW", hz.a(((hy)googleApiClient.a(hd.BN)).getContext().getPackageName(), uri)), string, uri2, list);
    }

    @Override
    public PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Intent intent) {
        return this.a(googleApiClient, new hs(hs.a(((hy)googleApiClient.a(hd.BN)).getContext().getPackageName(), intent), System.currentTimeMillis(), 3));
    }

    @Override
    public PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Uri uri) {
        return this.viewEnd(googleApiClient, activity, new Intent("android.intent.action.VIEW", hz.a(((hy)googleApiClient.a(hd.BN)).getContext().getPackageName(), uri)));
    }

    private static abstract class a<T>
    implements Result {
        private final Status CM;
        protected final T CN;

        public a(Status status, T t) {
            this.CM = status;
            this.CN = t;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    static class b
    extends a<ParcelFileDescriptor>
    implements hu.a {
        public b(Status status, ParcelFileDescriptor parcelFileDescriptor) {
            super(status, parcelFileDescriptor);
        }
    }

    private static abstract class c<T extends Result>
    extends BaseImplementation.a<T, hy> {
        public c() {
            super(hd.BN);
        }

        @Override
        protected abstract void a(hv var1) throws RemoteException;

        @Override
        protected final void a(hy hy) throws RemoteException {
            this.a(hy.fn());
        }
    }

    private static abstract class d<T extends Result>
    extends c<Status> {
        private d() {
        }

        @Override
        protected /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        protected Status d(Status status) {
            return status;
        }
    }

    private static final class e
    extends hx<Status> {
        public e(BaseImplementation.b<Status> b) {
            super(b);
        }

        @Override
        public void a(Status status) {
            this.CH.b(status);
        }
    }

}

