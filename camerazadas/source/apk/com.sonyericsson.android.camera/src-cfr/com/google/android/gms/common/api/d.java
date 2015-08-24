/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.o;
import java.util.List;

public class d
extends Fragment
implements DialogInterface.OnCancelListener,
LoaderManager.LoaderCallbacks<ConnectionResult> {
    private boolean JB;
    private int JC = -1;
    private ConnectionResult JD;
    private final Handler JE = new Handler(Looper.getMainLooper());
    private final SparseArray<b> JF = new SparseArray();

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static d a(FragmentActivity fragmentActivity) {
        FragmentManager fragmentManager;
        void var0_4;
        block2 : {
            d d;
            o.aT("Must be called from main thread of process");
            fragmentManager = fragmentActivity.getSupportFragmentManager();
            try {
                d = (d)fragmentManager.findFragmentByTag("GmsSupportLifecycleFragment");
                if (d == null) break block2;
                d d2 = d;
            }
            catch (ClassCastException var0_5) {
                throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment", var0_5);
            }
            if (!d.isRemoving()) return var0_4;
        }
        d d = new d();
        fragmentManager.beginTransaction().add(d, "GmsSupportLifecycleFragment").commit();
        fragmentManager.executePendingTransactions();
        return var0_4;
    }

    private void a(int n, ConnectionResult connectionResult) {
        if (!this.JB) {
            this.JB = true;
            this.JC = n;
            this.JD = connectionResult;
            this.JE.post(new c(n, connectionResult));
        }
    }

    private void an(int n) {
        if (n == this.JC) {
            this.gu();
        }
    }

    private void b(int n, ConnectionResult connectionResult) {
        Log.w("GmsSupportLifecycleFragment", "Unresolved error while connecting client. Stopping auto-manage.");
        Object object = this.JF.get(n);
        if (object != null) {
            this.al(n);
            object = object.JJ;
            if (object != null) {
                object.onConnectionFailed(connectionResult);
            }
        }
        this.gu();
    }

    private void gu() {
        this.JB = false;
        this.JC = -1;
        this.JD = null;
        LoaderManager loaderManager = this.getLoaderManager();
        for (int i = 0; i < this.JF.size(); ++i) {
            int n = this.JF.keyAt(i);
            a a = this.am(n);
            if (a != null) {
                a.gv();
            }
            loaderManager.initLoader(n, null, this);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void a(int n, GoogleApiClient object, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        o.b(object, (Object)"GoogleApiClient instance cannot be null");
        boolean bl = this.JF.indexOfKey(n) < 0;
        o.a(bl, "Already managing a GoogleApiClient with id " + n);
        object = new b((GoogleApiClient)object, onConnectionFailedListener);
        this.JF.put(n, (b)object);
        if (this.getActivity() != null) {
            this.getLoaderManager().initLoader(n, null, this);
        }
    }

    public void a(Loader<ConnectionResult> loader, ConnectionResult connectionResult) {
        if (connectionResult.isSuccess()) {
            this.an(loader.getId());
            return;
        }
        this.a(loader.getId(), connectionResult);
    }

    public GoogleApiClient ak(int n) {
        a a;
        if (this.getActivity() != null && (a = this.am(n)) != null) {
            return a.JG;
        }
        return null;
    }

    public void al(int n) {
        this.getLoaderManager().destroyLoader(n);
        this.JF.remove(n);
    }

    a am(int n) {
        try {
            a a = (a)this.getLoaderManager().getLoader(n);
            return a;
        }
        catch (ClassCastException var2_3) {
            throw new IllegalStateException("Unknown loader in SupportLifecycleFragment", var2_3);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onActivityResult(int var1_1, int var2_2, Intent var3_3) {
        var4_4 = 1;
        switch (var1_1) {
            case 2: {
                if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.getActivity()) != 0) break;
                var1_1 = var4_4;
                ** GOTO lbl12
            }
            case 1: {
                if (var2_2 != -1) break;
                var1_1 = var4_4;
                ** GOTO lbl12
            }
        }
        var1_1 = 0;
lbl12: // 3 sources:
        if (var1_1 != 0) {
            this.gu();
            return;
        }
        this.b(this.JC, this.JD);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onAttach(Activity object) {
        super.onAttach((Activity)object);
        for (int i = 0; i < this.JF.size(); ++i) {
            int n = this.JF.keyAt(i);
            object = this.am(n);
            if (object != null && this.JF.valueAt((int)i).JG != object.JG) {
                this.getLoaderManager().restartLoader(n, null, this);
                continue;
            }
            this.getLoaderManager().initLoader(n, null, this);
        }
    }

    @Override
    public void onCancel(DialogInterface dialogInterface) {
        this.b(this.JC, this.JD);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.JB = bundle.getBoolean("resolving_error", false);
            this.JC = bundle.getInt("failed_client_id", -1);
            if (this.JC >= 0) {
                this.JD = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent)bundle.getParcelable("failed_resolution"));
            }
        }
    }

    @Override
    public Loader<ConnectionResult> onCreateLoader(int n, Bundle bundle) {
        return new a(this.getActivity(), this.JF.get((int)n).JG);
    }

    @Override
    public /* synthetic */ void onLoadFinished(Loader loader, Object object) {
        this.a(loader, (ConnectionResult)object);
    }

    @Override
    public void onLoaderReset(Loader<ConnectionResult> loader) {
        if (loader.getId() == this.JC) {
            this.gu();
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.JB);
        if (this.JC >= 0) {
            bundle.putInt("failed_client_id", this.JC);
            bundle.putInt("failed_status", this.JD.getErrorCode());
            bundle.putParcelable("failed_resolution", this.JD.getResolution());
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        if (!this.JB) {
            for (int i = 0; i < this.JF.size(); ++i) {
                this.getLoaderManager().initLoader(this.JF.keyAt(i), null, this);
            }
        }
    }

    static class a
    extends Loader<ConnectionResult>
    implements GoogleApiClient.ConnectionCallbacks,
    GoogleApiClient.OnConnectionFailedListener {
        public final GoogleApiClient JG;
        private boolean JH;
        private ConnectionResult JI;

        public a(Context context, GoogleApiClient googleApiClient) {
            super(context);
            this.JG = googleApiClient;
        }

        private void a(ConnectionResult connectionResult) {
            this.JI = connectionResult;
            if (this.isStarted() && !this.isAbandoned()) {
                this.deliverResult(connectionResult);
            }
        }

        public void gv() {
            if (this.JH) {
                this.JH = false;
                if (this.isStarted() && !this.isAbandoned()) {
                    this.JG.connect();
                }
            }
        }

        @Override
        public void onConnected(Bundle bundle) {
            this.JH = false;
            this.a(ConnectionResult.HE);
        }

        @Override
        public void onConnectionFailed(ConnectionResult connectionResult) {
            this.JH = true;
            this.a(connectionResult);
        }

        @Override
        public void onConnectionSuspended(int n) {
        }

        @Override
        protected void onReset() {
            this.JI = null;
            this.JH = false;
            this.JG.unregisterConnectionCallbacks(this);
            this.JG.unregisterConnectionFailedListener(this);
            this.JG.disconnect();
        }

        @Override
        protected void onStartLoading() {
            super.onStartLoading();
            this.JG.registerConnectionCallbacks(this);
            this.JG.registerConnectionFailedListener(this);
            if (this.JI != null) {
                this.deliverResult(this.JI);
            }
            if (!(this.JG.isConnected() || this.JG.isConnecting() || this.JH)) {
                this.JG.connect();
            }
        }

        @Override
        protected void onStopLoading() {
            this.JG.disconnect();
        }
    }

    private static class b {
        public final GoogleApiClient JG;
        public final GoogleApiClient.OnConnectionFailedListener JJ;

        private b(GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.JG = googleApiClient;
            this.JJ = onConnectionFailedListener;
        }
    }

    private class c
    implements Runnable {
        private final int JK;
        private final ConnectionResult JL;

        public c(int n, ConnectionResult connectionResult) {
            this.JK = n;
            this.JL = connectionResult;
        }

        @Override
        public void run() {
            if (this.JL.hasResolution()) {
                try {
                    int n = d.this.getActivity().getSupportFragmentManager().getFragments().indexOf(d.this);
                    this.JL.startResolutionForResult(d.this.getActivity(), (n + 1 << 16) + 1);
                    return;
                }
                catch (IntentSender.SendIntentException var2_2) {
                    d.this.gu();
                    return;
                }
            }
            if (GooglePlayServicesUtil.isUserRecoverableError(this.JL.getErrorCode())) {
                GooglePlayServicesUtil.showErrorDialogFragment(this.JL.getErrorCode(), d.this.getActivity(), d.this, 2, d.this);
                return;
            }
            d.this.b(this.JK, this.JL);
        }
    }

}

