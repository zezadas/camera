/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.mz;
import com.google.android.gms.internal.na;
import com.google.android.gms.internal.nb;
import com.google.android.gms.internal.nd;
import com.google.android.gms.internal.ne;
import com.google.android.gms.panorama.Panorama;
import com.google.android.gms.panorama.PanoramaApi;

public class nc
implements PanoramaApi {
    private static void a(Context context, Uri uri) {
        context.revokeUriPermission(uri, 1);
    }

    private static void a(final Context context, nb nb, final na na, final Uri uri, Bundle bundle) throws RemoteException {
        context.grantUriPermission("com.google.android.gms", uri, 1);
        na = new na.a(){

            @Override
            public void a(int n, Bundle bundle, int n2, Intent intent) throws RemoteException {
                nc.a(context, uri);
                na.a(n, bundle, n2, intent);
            }
        };
        try {
            nb.a(na, uri, bundle, true);
            return;
        }
        catch (RemoteException var1_2) {
            nc.a(context, uri);
            throw var1_2;
        }
        catch (RuntimeException var1_3) {
            nc.a(context, uri);
            throw var1_3;
        }
    }

    @Override
    public PendingResult<PanoramaApi.PanoramaResult> loadPanoramaInfo(GoogleApiClient googleApiClient, final Uri uri) {
        return googleApiClient.a(new b(){

            @Override
            protected void a(Context context, nb nb) throws RemoteException {
                nb.a(new c(this), uri, null, false);
            }
        });
    }

    @Override
    public PendingResult<PanoramaApi.PanoramaResult> loadPanoramaInfoAndGrantAccess(GoogleApiClient googleApiClient, final Uri uri) {
        return googleApiClient.a(new b(){

            @Override
            protected void a(Context context, nb nb) throws RemoteException {
                nc.a(context, nb, new c(this), uri, null);
            }
        });
    }

    private static final class a
    extends na.a {
        private final BaseImplementation.b<PanoramaApi.a> De;

        public a(BaseImplementation.b<PanoramaApi.a> b) {
            this.De = b;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void a(int n, Bundle bundle, int n2, Intent intent) {
            void var3_7;
            void var2_4;
            void var4_8;
            if (bundle != null) {
                PendingIntent pendingIntent = (PendingIntent)bundle.getParcelable("pendingIntent");
            } else {
                Object var2_6 = null;
            }
            Status status = new Status(n, null, (PendingIntent)var2_4);
            this.De.b(new mz(status, (Intent)var4_8, (int)var3_7));
        }
    }

    private static abstract class b
    extends d<PanoramaApi.PanoramaResult> {
        private b() {
        }

        protected PanoramaApi.PanoramaResult az(Status status) {
            return new ne(status, null);
        }

        @Override
        protected /* synthetic */ Result c(Status status) {
            return this.az(status);
        }
    }

    private static final class c
    extends na.a {
        private final BaseImplementation.b<PanoramaApi.PanoramaResult> De;

        public c(BaseImplementation.b<PanoramaApi.PanoramaResult> b) {
            this.De = b;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void a(int n, Bundle bundle, int n2, Intent intent) {
            void var2_4;
            void var4_8;
            if (bundle != null) {
                PendingIntent pendingIntent = (PendingIntent)bundle.getParcelable("pendingIntent");
            } else {
                Object var2_6 = null;
            }
            Status status = new Status(n, null, (PendingIntent)var2_4);
            this.De.b(new ne(status, (Intent)var4_8));
        }
    }

    private static abstract class d<R extends Result>
    extends BaseImplementation.a<R, nd> {
        protected d() {
            super(Panorama.CU);
        }

        protected abstract void a(Context var1, nb var2) throws RemoteException;

        @Override
        protected final void a(nd nd) throws RemoteException {
            this.a(nd.getContext(), (nb)nd.gS());
        }
    }

}

