/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.gagtmhelper;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class GaGtmSubscriber
extends ContentObserver {
    private static final Uri GA_URI;
    private static final String LOG_TAG = "GaGtmHelper";
    private static final String SOMC_GA_ENABLED_SETTING = "somc.google_analytics_enabled";
    private final Context mContext;
    private boolean mSubscribing;

    static;

    public GaGtmSubscriber(Context var1) throws IllegalArgumentException;

    public GaGtmSubscriber(Context var1, Handler var2) throws IllegalArgumentException;

    @Override
    public void onChange(boolean var1);

    public void subscribeGaSettingChanges();

    public void unsubscribeGaSettingChanges();
}

