/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.z;
import java.io.FileOutputStream;
import java.io.IOException;

public class CampaignTrackingService
extends IntentService {
    public CampaignTrackingService() {
        super("CampaignIntentService");
    }

    public CampaignTrackingService(String string) {
        super(string);
    }

    @Override
    public void onHandleIntent(Intent intent) {
        this.processIntent(this, intent);
    }

    public void processIntent(Context object, Intent object2) {
        object2 = object2.getStringExtra("referrer");
        try {
            object = object.openFileOutput("gaInstallData", 0);
            object.write(object2.getBytes());
            object.close();
            z.V("Stored campaign information.");
            return;
        }
        catch (IOException var1_2) {
            z.T("Error storing install campaign.");
            return;
        }
    }
}

