/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class d
extends Fragment
implements DialogInterface.OnCancelListener,
LoaderManager.LoaderCallbacks<ConnectionResult> {
    private boolean JB;
    private int JC;
    private ConnectionResult JD;
    private final Handler JE;
    private final SparseArray<b> JF;

    public d();

    public static d a(FragmentActivity var0);

    private void a(int var1, ConnectionResult var2);

    static /* synthetic */ void a(d var0);

    static /* synthetic */ void a(d var0, int var1, ConnectionResult var2);

    private void an(int var1);

    private void b(int var1, ConnectionResult var2);

    private void gu();

    public void a(int var1, GoogleApiClient var2, GoogleApiClient.OnConnectionFailedListener var3);

    public void a(Loader<ConnectionResult> var1, ConnectionResult var2);

    public GoogleApiClient ak(int var1);

    public void al(int var1);

    a am(int var1);

    @Override
    public void onActivityResult(int var1, int var2, Intent var3);

    @Override
    public void onAttach(Activity var1);

    @Override
    public void onCancel(DialogInterface var1);

    @Override
    public void onCreate(Bundle var1);

    @Override
    public Loader<ConnectionResult> onCreateLoader(int var1, Bundle var2);

    @Override
    public /* synthetic */ void onLoadFinished(Loader var1, Object var2);

    @Override
    public void onLoaderReset(Loader<ConnectionResult> var1);

    @Override
    public void onSaveInstanceState(Bundle var1);

    @Override
    public void onStart();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class a
    extends Loader<ConnectionResult>
    implements GoogleApiClient.ConnectionCallbacks,
    GoogleApiClient.OnConnectionFailedListener {
        public final GoogleApiClient JG;
        private boolean JH;
        private ConnectionResult JI;

        public a(Context var1, GoogleApiClient var2);

        private void a(ConnectionResult var1);

        public void gv();

        @Override
        public void onConnected(Bundle var1);

        @Override
        public void onConnectionFailed(ConnectionResult var1);

        @Override
        public void onConnectionSuspended(int var1);

        @Override
        protected void onReset();

        @Override
        protected void onStartLoading();

        @Override
        protected void onStopLoading();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class b {
        public final GoogleApiClient JG;
        public final GoogleApiClient.OnConnectionFailedListener JJ;

        private b(GoogleApiClient var1, GoogleApiClient.OnConnectionFailedListener var2);

        /* synthetic */ b(GoogleApiClient var1, GoogleApiClient.OnConnectionFailedListener var2,  var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class c
    implements Runnable {
        private final int JK;
        private final ConnectionResult JL;
        final /* synthetic */ d JM;

        public c(d var1, int var2, ConnectionResult var3);

        @Override
        public void run();
    }

}

