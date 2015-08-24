/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.CampaignTrackingService;

public final class CampaignTrackingReceiver
extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        String string = intent.getStringExtra("referrer");
        if (!("com.android.vending.INSTALL_REFERRER".equals(intent.getAction()) && string != null)) {
            return;
        }
        intent = new Intent(context, CampaignTrackingService.class);
        intent.putExtra("referrer", string);
        context.startService(intent);
    }
}

