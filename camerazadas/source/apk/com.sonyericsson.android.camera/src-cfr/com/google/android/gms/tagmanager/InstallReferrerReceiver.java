/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.tagmanager.InstallReferrerService;
import com.google.android.gms.tagmanager.ay;

public final class InstallReferrerReceiver
extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        String string = intent.getStringExtra("referrer");
        if (!("com.android.vending.INSTALL_REFERRER".equals(intent.getAction()) && string != null)) {
            return;
        }
        ay.cF(string);
        intent = new Intent(context, InstallReferrerService.class);
        intent.putExtra("referrer", string);
        context.startService(intent);
    }
}

