/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.gs;

public final class AdActivity
extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    private ds lc;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void U() {
        if (this.lc == null) return;
        try {
            this.lc.U();
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Could not forward setContentViewSet to ad overlay:", var1_1);
            return;
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.lc = dr.b(this);
        if (this.lc == null) {
            gs.W("Could not create ad overlay.");
            this.finish();
            return;
        }
        try {
            this.lc.onCreate(bundle);
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not forward onCreate to ad overlay:", var1_2);
            this.finish();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    protected void onDestroy() {
        try {
            if (this.lc != null) {
                this.lc.onDestroy();
            }
        }
        catch (RemoteException var1_1) {
            gs.d("Could not forward onDestroy to ad overlay:", var1_1);
        }
        super.onDestroy();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    protected void onPause() {
        try {
            if (this.lc != null) {
                this.lc.onPause();
            }
        }
        catch (RemoteException var1_1) {
            gs.d("Could not forward onPause to ad overlay:", var1_1);
            this.finish();
        }
        super.onPause();
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        try {
            if (this.lc != null) {
                this.lc.onRestart();
            }
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Could not forward onRestart to ad overlay:", var1_1);
            this.finish();
            return;
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        try {
            if (this.lc != null) {
                this.lc.onResume();
            }
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Could not forward onResume to ad overlay:", var1_1);
            this.finish();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.lc != null) {
                this.lc.onSaveInstanceState(bundle);
            }
        }
        catch (RemoteException var2_2) {
            gs.d("Could not forward onSaveInstanceState to ad overlay:", var2_2);
            this.finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override
    protected void onStart() {
        super.onStart();
        try {
            if (this.lc != null) {
                this.lc.onStart();
            }
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Could not forward onStart to ad overlay:", var1_1);
            this.finish();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    protected void onStop() {
        try {
            if (this.lc != null) {
                this.lc.onStop();
            }
        }
        catch (RemoteException var1_1) {
            gs.d("Could not forward onStop to ad overlay:", var1_1);
            this.finish();
        }
        super.onStop();
    }

    @Override
    public void setContentView(int n) {
        super.setContentView(n);
        this.U();
    }

    @Override
    public void setContentView(View view) {
        super.setContentView(view);
        this.U();
    }

    @Override
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.U();
    }
}

