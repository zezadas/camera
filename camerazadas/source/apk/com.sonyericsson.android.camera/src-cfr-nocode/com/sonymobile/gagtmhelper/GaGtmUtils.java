/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.gagtmhelper;

import android.content.Context;
import com.google.android.gms.tagmanager.ContainerHolder;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class GaGtmUtils {
    private static final int GA_DEFAULT_DISPATCH_PERIOD = 1800;
    private static final String GTM_KEY_DEVICE_BUILD_ID = "gagtm-deviceBuildId";
    private static final String GTM_KEY_DEVICE_BUILD_MODEL = "gagtm-deviceBuildModel";
    private static final String GTM_KEY_DEVICE_BUILD_TYPE = "gagtm-deviceBuildType";
    private static final String GTM_KEY_DEVICE_CUSTOMER_ID = "gagtm-deviceCustomerId";
    private static final String GTM_KEY_DEVICE_CUSTOMIZATION = "gagtm-deviceCustomization";
    private static final String GTM_KEY_DEVICE_CUSTOMIZATION_REVISION = "gagtm-deviceCustomizationRevision";
    private static final String GTM_KEY_DEVICE_NETWORK_MCC = "gagtm-deviceNetworkMcc";
    private static final String GTM_KEY_DEVICE_NETWORK_MNC = "gagtm-deviceNetworkMnc";
    private static final String GTM_KEY_DEVICE_SIM_MCC = "gagtm-deviceSimMcc";
    private static final String GTM_KEY_DEVICE_SIM_MNC = "gagtm-deviceSimMnc";
    private static final String GTM_KEY_EVENT = "event";
    private static final String GTM_KEY_EVENT_ACTION = "gagtm-eventAction";
    private static final String GTM_KEY_EVENT_CATEGORY = "gagtm-eventCategory";
    private static final String GTM_KEY_EVENT_LABEL = "gagtm-eventLabel";
    private static final String GTM_KEY_EVENT_VALUE = "gagtm-eventValue";
    private static final String GTM_KEY_EXCEPTION_DESCRIPTION = "gagtm-exceptionDescription";
    private static final String GTM_KEY_GA_DISPATCH_PERIOD = "gagtm-dispatchPeriod";
    private static final String GTM_KEY_GA_EXCEPTION_DEEP_MODE = "gagtm-exceptionDeepMode";
    private static final String GTM_KEY_GA_EXCEPTION_HASH_LIST = "gagtm-exceptionHashList";
    private static final String GTM_KEY_GA_EXCEPTION_MAX_REPORTED_ROWS = "gagtm-exceptionMaxReportedRows";
    private static final String GTM_KEY_GA_EXCEPTION_MAX_TRAVERSED_ROWS = "gagtm-exceptionMaxTraversedRows";
    private static final String GTM_KEY_GA_EXCEPTION_PACKAGE_NAMES = "gagtm-exceptionPackageNames";
    private static final String GTM_KEY_GA_FORCE_LOCAL_DISPATCH = "gagtm-forceLocalDispatch";
    private static final String GTM_KEY_SCREEN_NAME = "gagtm-screenName";
    private static final String GTM_KEY_TIMING_CATEGORY = "gagtm-timingCategory";
    private static final String GTM_KEY_TIMING_LABEL = "gagtm-timingLabel";
    private static final String GTM_KEY_TIMING_VALUE = "gagtm-timingValue";
    private static final String GTM_KEY_TIMING_VAR = "gagtm-timingVar";
    private static final String LOG_TAG = "GaGtmHelper";
    private static final String SOMC_GA_ENABLED_SETTING = "somc.google_analytics_enabled";
    private static final String SYSTEM_BUILD_CUSTOMER_ID = "ro.somc.customerid";
    private static final String SYSTEM_BUILD_CUSTOMIZATION = "ro.semc.version.cust";
    private static final String SYSTEM_BUILD_CUSTOMIZATION_REVISION = "ro.semc.version.cust_revision";
    private static volatile ContainerHolder mContainerHolder;
    private static final Object mContainerHolderLock;

    static;

    private GaGtmUtils();

    public static ContainerHolder getContainerHolder();

    public static boolean isSomcGaEnabled(Context var0);

    public static void pushAppView(Context var0, String var1);

    public static void pushDeepEvent(Context var0, String var1, String var2, String var3, long var4);

    public static void pushDeepException(Context var0, String var1);

    public static void pushEndSession(Context var0);

    public static void pushEvent(Context var0, String var1, String var2, String var3, long var4);

    public static void pushException(Context var0, String var1);

    public static void pushInitDefaultsToDataLayer(Context var0);

    public static void pushStartSession(Context var0);

    public static void pushTiming(Context var0, String var1, long var2, String var4, String var5);

    public static void pushToDataLayer(Context var0, Map<String, Object> var1);

    public static void readAndSetGaEnabled(Context var0);

    public static void setContainerDefaults(Context var0);

    public static void setContainerHolder(ContainerHolder var0);
}

