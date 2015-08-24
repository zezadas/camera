/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.util.Log;

public class c
implements DialogInterface.OnClickListener {
    private final Fragment Lt;
    private final int Lu;
    private final Intent mIntent;
    private final Activity nr;

    public c(Activity activity, Intent intent, int n) {
        this.nr = activity;
        this.Lt = null;
        this.mIntent = intent;
        this.Lu = n;
    }

    public c(Fragment fragment, Intent intent, int n) {
        this.nr = null;
        this.Lt = fragment;
        this.mIntent = intent;
        this.Lu = n;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onClick(DialogInterface dialogInterface, int n) {
        try {
            if (this.mIntent != null && this.Lt != null) {
                this.Lt.startActivityForResult(this.mIntent, this.Lu);
            } else if (this.mIntent != null) {
                this.nr.startActivityForResult(this.mIntent, this.Lu);
            }
            dialogInterface.dismiss();
            return;
        }
        catch (ActivityNotFoundException var1_2) {
            Log.e("SettingsRedirect", "Can't redirect to app settings for Google Play services");
            return;
        }
    }
}

