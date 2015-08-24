/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;

public class CampaignTrackingService
extends IntentService {
    public CampaignTrackingService();

    public CampaignTrackingService(String var1);

    @Override
    public void onHandleIntent(Intent var1);

    public void processIntent(Context var1, Intent var2);
}

