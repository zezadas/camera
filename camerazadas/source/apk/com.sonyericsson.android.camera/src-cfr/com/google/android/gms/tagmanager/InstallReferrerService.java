/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.CampaignTrackingService;
import com.google.android.gms.tagmanager.ay;

public final class InstallReferrerService
extends IntentService {
    CampaignTrackingService apw;
    Context apx;

    public InstallReferrerService() {
        super("InstallReferrerService");
    }

    public InstallReferrerService(String string) {
        super(string);
    }

    private void a(Context context, Intent intent) {
        if (this.apw == null) {
            this.apw = new CampaignTrackingService();
        }
        this.apw.processIntent(context, intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onHandleIntent(Intent intent) {
        String string = intent.getStringExtra("referrer");
        Context context = this.apx != null ? this.apx : this.getApplicationContext();
        ay.d(context, string);
        this.a(context, intent);
    }
}

