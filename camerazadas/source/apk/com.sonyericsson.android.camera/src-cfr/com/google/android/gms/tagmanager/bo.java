/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.google.android.gms.tagmanager.cx;

class bo
extends BroadcastReceiver {
    static final String ya = bo.class.getName();
    private final cx apS;

    bo(cx cx) {
        this.apS = cx;
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
    public void onReceive(Context object, Intent object2) {
        object = object2.getAction();
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(object)) {
            Bundle bundle = object2.getExtras();
            object = Boolean.FALSE;
            if (bundle != null) {
                object = object2.getExtras().getBoolean("noConnectivity");
            }
            object2 = this.apS;
            boolean bl = !object.booleanValue();
            object2.A(bl);
            return;
        } else {
            if (!"com.google.analytics.RADIO_POWERED".equals(object) || object2.hasExtra(ya)) return;
            {
                this.apS.ed();
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

