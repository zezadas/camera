/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.analytics.ae;

class p
extends BroadcastReceiver {
    static final String ya = p.class.getName();
    private final ae yb;

    p(ae ae) {
        this.yb = ae;
    }

    public static void A(Context context) {
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(context.getPackageName());
        intent.putExtra(ya, true);
        context.sendBroadcast(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onReceive(Context object, Intent intent) {
        boolean bl = false;
        object = intent.getAction();
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(object)) {
            boolean bl2 = intent.getBooleanExtra("noConnectivity", false);
            object = this.yb;
            if (!bl2) {
                bl = true;
            }
            object.A(bl);
            return;
        } else {
            if (!"com.google.analytics.RADIO_POWERED".equals(object) || intent.hasExtra(ya)) return;
            {
                this.yb.ed();
                return;
            }
        }
    }

    public void z(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(this, intentFilter);
        intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.analytics.RADIO_POWERED");
        intentFilter.addCategory(context.getPackageName());
        context.registerReceiver(this, intentFilter);
    }
}

