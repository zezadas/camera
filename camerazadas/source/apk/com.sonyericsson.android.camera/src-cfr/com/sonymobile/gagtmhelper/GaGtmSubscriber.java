/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.gagtmhelper;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import com.sonymobile.gagtmhelper.GaGtmLog;
import com.sonymobile.gagtmhelper.GaGtmUtils;

public class GaGtmSubscriber
extends ContentObserver {
    private static final Uri GA_URI = Settings.System.getUriFor("somc.google_analytics_enabled");
    private static final String LOG_TAG = "GaGtmHelper";
    private static final String SOMC_GA_ENABLED_SETTING = "somc.google_analytics_enabled";
    private final Context mContext;
    private boolean mSubscribing = false;

    public GaGtmSubscriber(Context context) throws IllegalArgumentException {
        super(null);
        if (context == null) {
            throw new IllegalArgumentException("context is not allowed to be null");
        }
        this.mContext = context;
    }

    public GaGtmSubscriber(Context context, Handler handler) throws IllegalArgumentException {
        super(handler);
        if (context == null) {
            throw new IllegalArgumentException("context is not allowed to be null");
        }
        this.mContext = context;
    }

    @Override
    public void onChange(boolean bl) {
        GaGtmLog.d("GaGtmHelper", "onChange");
        GaGtmUtils.readAndSetGaEnabled(this.mContext);
    }

    public void subscribeGaSettingChanges() {
        GaGtmLog.d("GaGtmHelper", "subscribeGaSettingChanges");
        GaGtmUtils.readAndSetGaEnabled(this.mContext);
        if (!this.mSubscribing) {
            this.mContext.getContentResolver().registerContentObserver(GA_URI, false, this);
            this.mSubscribing = true;
        }
    }

    public void unsubscribeGaSettingChanges() {
        GaGtmLog.d("GaGtmHelper", "unsubscribeGaSettingChanges");
        if (this.mSubscribing) {
            this.mContext.getContentResolver().unregisterContentObserver(this);
            this.mSubscribing = false;
        }
    }
}

