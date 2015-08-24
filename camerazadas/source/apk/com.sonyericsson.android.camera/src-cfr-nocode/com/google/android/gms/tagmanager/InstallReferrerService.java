/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.CampaignTrackingService;

/*
 * Exception performing whole class analysis.
 */
public final class InstallReferrerService
extends IntentService {
    CampaignTrackingService apw;
    Context apx;

    public InstallReferrerService();

    public InstallReferrerService(String var1);

    private void a(Context var1, Intent var2);

    @Override
    protected void onHandleIntent(Intent var1);
}

