/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.gagtmhelper;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.tagmanager.Container;
import com.google.android.gms.tagmanager.ContainerHolder;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.TagManager;
import com.sonymobile.gagtmhelper.GaGtmExceptionParser;
import com.sonymobile.gagtmhelper.GaGtmLog;
import com.sonymobile.gagtmhelper.SystemPropertiesProxy;
import java.util.Map;

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
    private static volatile ContainerHolder mContainerHolder = null;
    private static final Object mContainerHolderLock = new Object();

    private GaGtmUtils() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static ContainerHolder getContainerHolder() {
        Object object = mContainerHolderLock;
        synchronized (object) {
            return mContainerHolder;
        }
    }

    public static boolean isSomcGaEnabled(Context context) {
        if (Settings.System.getInt(context.getContentResolver(), "somc.google_analytics_enabled", 1) == 1) {
            return true;
        }
        return false;
    }

    public static void pushAppView(Context context, String string) {
        GaGtmLog.d("GaGtmHelper", "pushAppView screenName=" + string);
        TagManager.getInstance(context).getDataLayer().push(DataLayer.mapOf("event", "appView", "gagtm-screenName", string));
    }

    public static void pushDeepEvent(Context context, String string, String string2, String string3, long l) {
        GaGtmLog.d("GaGtmHelper", "pushDeepEvent category=" + string + " action=" + string2 + " label=" + string3 + " value=" + String.valueOf(l));
        TagManager.getInstance(context).getDataLayer().push(DataLayer.mapOf("event", "deepEvent", "gagtm-eventCategory", string, "gagtm-eventAction", string2, "gagtm-eventLabel", string3, "gagtm-eventValue", String.valueOf(l)));
    }

    public static void pushDeepException(Context context, String string) {
        GaGtmLog.d("GaGtmHelper", "pushDeepException exceptionDescription=" + string);
        TagManager.getInstance(context).getDataLayer().push(DataLayer.mapOf("event", "deepException", "gagtm-exceptionDescription", string));
    }

    public static void pushEndSession(Context context) {
        GaGtmLog.d("GaGtmHelper", "pushEndSession");
        TagManager.getInstance(context).getDataLayer().push(DataLayer.mapOf("event", "endSession"));
    }

    public static void pushEvent(Context context, String string, String string2, String string3, long l) {
        GaGtmLog.d("GaGtmHelper", "pushEvent category=" + string + " action=" + string2 + " label=" + string3 + " value=" + l);
        TagManager.getInstance(context).getDataLayer().push(DataLayer.mapOf("event", "event", "gagtm-eventCategory", string, "gagtm-eventAction", string2, "gagtm-eventLabel", string3, "gagtm-eventValue", String.valueOf(l)));
    }

    public static void pushException(Context context, String string) {
        GaGtmLog.d("GaGtmHelper", "pushException exceptionDescription=" + string);
        TagManager.getInstance(context).getDataLayer().push(DataLayer.mapOf("event", "exception", "gagtm-exceptionDescription", string));
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public static void pushInitDefaultsToDataLayer(Context var0) {
        block15 : {
            // MONITORENTER : com.sonymobile.gagtmhelper.GaGtmUtils.class
            var2_1 = "";
            var7_2 = "";
            var5_3 = "";
            var9_4 = "";
            var3_5 = "";
            var10_7 = "";
            var4_8 = "";
            GaGtmLog.d("GaGtmHelper", "pushInitDefaultsToDataLayer");
            var1_9 = var7_2;
            try {
                var2_1 = var6_11 = SystemPropertiesProxy.get(var0, "ro.semc.version.cust");
                var1_9 = var7_2;
                var7_2 = SystemPropertiesProxy.get(var0, "ro.semc.version.cust_revision");
                var2_1 = var6_11;
                var1_9 = var7_2;
                var5_3 = var8_13 = SystemPropertiesProxy.get(var0, "ro.somc.customerid");
            }
            catch (Exception var6_12) {
                GaGtmLog.d("GaGtmHelper", "SystemProperty exception:" + var6_12.getMessage());
                var6_11 = var2_1;
                var7_2 = var1_9;
            }
            var11_14 = (TelephonyManager)var0.getSystemService("phone");
            var2_1 = var3_5;
            try {
                if (var11_14.getSimState() != 5) ** GOTO lbl39
                var2_1 = var3_5;
                var12_15 = var11_14.getSimOperator();
                var2_1 = var3_5;
                if (var12_15.length() == 5) ** GOTO lbl-1000
                var1_9 = var3_5;
                var8_13 = var9_4;
                var2_1 = var3_5;
                if (var12_15.length() == 6) lbl-1000: // 2 sources:
                {
                    var2_1 = var3_5;
                    var2_1 = var1_9 = var12_15.substring(0, 3);
                    var8_13 = var12_15.substring(3);
                } else {
                    ** GOTO lbl48
                }
                break block15;
lbl39: // 1 sources:
                var2_1 = var3_5;
                GaGtmLog.d("GaGtmHelper", "SIM state is not ready");
                var1_9 = var3_5;
                var8_13 = var9_4;
            }
            catch (Exception var1_10) {
                GaGtmLog.d("GaGtmHelper", "Unexpected exception reading SIM info:" + var1_10.getMessage());
                var1_9 = var2_1;
                var8_13 = var9_4;
            }
        }
        var2_1 = var4_8;
        try {
            var11_14 = var11_14.getNetworkOperator();
            var2_1 = var4_8;
            if (var11_14.length() == 5) ** GOTO lbl-1000
            var3_5 = var4_8;
            var9_4 = var10_7;
            var2_1 = var4_8;
            if (var11_14.length() == 6) lbl-1000: // 2 sources:
            {
                var2_1 = var4_8;
                var2_1 = var3_5 = var11_14.substring(0, 3);
                var9_4 = var11_14.substring(3);
            }
        }
        catch (Exception var3_6) {
            GaGtmLog.d("GaGtmHelper", "Unexpected exception reading network info:" + var3_6.getMessage());
            var3_5 = var2_1;
            var9_4 = var10_7;
        }
        GaGtmLog.d("GaGtmHelper", "Pushing to data layer deviceBuildModel:" + Build.MODEL + ", " + "deviceBuildId: " + Build.ID + ", deviceBuildType:" + Build.TYPE + ", " + "deviceCustomization:" + var6_11 + ", " + "deviceCustomizationRevision:" + var7_2 + ", " + "deviceCustomerId: " + var5_3 + ", deviceSimMcc: " + var1_9 + ", " + "deviceSimMnc: " + var8_13 + ", deviceNetworkMcc: " + var3_5 + ", " + "deviceNetworkMnc: " + var9_4);
        GaGtmUtils.pushToDataLayer(var0, DataLayer.mapOf(new Object[]{"gagtm-deviceBuildModel", Build.MODEL, "gagtm-deviceBuildId", Build.ID, "gagtm-deviceBuildType", Build.TYPE, "gagtm-deviceCustomization", var6_11, "gagtm-deviceCustomizationRevision", var7_2, "gagtm-deviceCustomerId", var5_3, "gagtm-deviceSimMcc", var1_9, "gagtm-deviceSimMnc", var8_13, "gagtm-deviceNetworkMcc", var3_5, "gagtm-deviceNetworkMnc", var9_4}));
        // MONITOREXIT : com.sonymobile.gagtmhelper.GaGtmUtils.class
    }

    public static void pushStartSession(Context context) {
        GaGtmLog.d("GaGtmHelper", "pushStartSession");
        TagManager.getInstance(context).getDataLayer().push(DataLayer.mapOf("event", "startSession"));
    }

    public static void pushTiming(Context context, String string, long l, String string2, String string3) {
        GaGtmLog.d("GaGtmHelper", "pushTiming category=" + string + " value=" + String.valueOf(l) + " var=" + string2 + " label=" + string3);
        TagManager.getInstance(context).getDataLayer().push(DataLayer.mapOf("event", "timing", "gagtm-timingCategory", string, "gagtm-timingValue", String.valueOf(l), "gagtm-timingVar", string2, "gagtm-timingLabel", string3));
    }

    public static void pushToDataLayer(Context context, Map<String, Object> map) {
        TagManager.getInstance(context).getDataLayer().push(map);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void readAndSetGaEnabled(Context object) {
        boolean bl = GaGtmUtils.isSomcGaEnabled((Context)object);
        GaGtmLog.d("GaGtmHelper", "somc.google_analytics_enabled=" + bl);
        object = GoogleAnalytics.getInstance((Context)object);
        bl = !bl;
        object.setAppOptOut(bl);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void setContainerDefaults(Context object) {
        synchronized (GaGtmUtils.class) {
            GaGtmLog.d("GaGtmHelper", "setContainerDefaults");
            if (mContainerHolder == null) {
                GaGtmLog.d("GaGtmHelper", "container holder is null exiting");
            } else {
                Container container = mContainerHolder.getContainer();
                if (container == null) {
                    GaGtmLog.d("GaGtmHelper", "container is null exiting");
                } else {
                    int n;
                    int n2 = n = (int)container.getLong("gagtm-dispatchPeriod");
                    if (n <= 0) {
                        n2 = 1800;
                    }
                    object = GoogleAnalytics.getInstance((Context)object);
                    GaGtmLog.d("GaGtmHelper", "gaDispatchPeriod:" + n2);
                    object.setLocalDispatchPeriod(n2);
                    boolean bl = container.getLong("gagtm-forceLocalDispatch") == 1;
                    GaGtmLog.d("GaGtmHelper", "gaForceLocalDispatch:" + bl);
                    if (bl) {
                        GaGtmLog.d("GaGtmHelper", "gaForceLocalDispatch will be ignored, consider removing it from your container");
                    }
                    GaGtmExceptionParser.setMaxReportedRows((int)container.getLong("gagtm-exceptionMaxReportedRows"));
                    GaGtmExceptionParser.setMaxTraversedRows((int)container.getLong("gagtm-exceptionMaxTraversedRows"));
                    GaGtmExceptionParser.setEnabledPackageNames(container.getString("gagtm-exceptionPackageNames"));
                    GaGtmExceptionParser.setDeepCrashHashList(container.getString("gagtm-exceptionHashList"));
                    GaGtmExceptionParser.setDeepMode(container.getString("gagtm-exceptionDeepMode"));
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void setContainerHolder(ContainerHolder containerHolder) {
        Object object = mContainerHolderLock;
        synchronized (object) {
            mContainerHolder = containerHolder;
            return;
        }
    }
}

