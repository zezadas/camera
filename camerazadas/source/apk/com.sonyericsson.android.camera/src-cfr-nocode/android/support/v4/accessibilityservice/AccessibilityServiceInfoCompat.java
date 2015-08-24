/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.ResolveInfo;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AccessibilityServiceInfoCompat {
    public static final int CAPABILITY_CAN_FILTER_KEY_EVENTS = 8;
    public static final int CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 4;
    public static final int CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION = 2;
    public static final int CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT = 1;
    public static final int DEFAULT = 1;
    public static final int FEEDBACK_ALL_MASK = -1;
    public static final int FEEDBACK_BRAILLE = 32;
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 8;
    public static final int FLAG_REQUEST_FILTER_KEY_EVENTS = 32;
    public static final int FLAG_REQUEST_TOUCH_EXPLORATION_MODE = 4;
    private static final AccessibilityServiceInfoVersionImpl IMPL;

    static;

    private AccessibilityServiceInfoCompat();

    public static String capabilityToString(int var0);

    public static String feedbackTypeToString(int var0);

    public static String flagToString(int var0);

    public static boolean getCanRetrieveWindowContent(AccessibilityServiceInfo var0);

    public static int getCapabilities(AccessibilityServiceInfo var0);

    public static String getDescription(AccessibilityServiceInfo var0);

    public static String getId(AccessibilityServiceInfo var0);

    public static ResolveInfo getResolveInfo(AccessibilityServiceInfo var0);

    public static String getSettingsActivityName(AccessibilityServiceInfo var0);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityServiceInfoIcsImpl
    extends AccessibilityServiceInfoStubImpl {
        AccessibilityServiceInfoIcsImpl();

        @Override
        public boolean getCanRetrieveWindowContent(AccessibilityServiceInfo var1);

        @Override
        public int getCapabilities(AccessibilityServiceInfo var1);

        @Override
        public String getDescription(AccessibilityServiceInfo var1);

        @Override
        public String getId(AccessibilityServiceInfo var1);

        @Override
        public ResolveInfo getResolveInfo(AccessibilityServiceInfo var1);

        @Override
        public String getSettingsActivityName(AccessibilityServiceInfo var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityServiceInfoJellyBeanMr2
    extends AccessibilityServiceInfoIcsImpl {
        AccessibilityServiceInfoJellyBeanMr2();

        @Override
        public int getCapabilities(AccessibilityServiceInfo var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityServiceInfoStubImpl
    implements AccessibilityServiceInfoVersionImpl {
        AccessibilityServiceInfoStubImpl();

        @Override
        public boolean getCanRetrieveWindowContent(AccessibilityServiceInfo var1);

        @Override
        public int getCapabilities(AccessibilityServiceInfo var1);

        @Override
        public String getDescription(AccessibilityServiceInfo var1);

        @Override
        public String getId(AccessibilityServiceInfo var1);

        @Override
        public ResolveInfo getResolveInfo(AccessibilityServiceInfo var1);

        @Override
        public String getSettingsActivityName(AccessibilityServiceInfo var1);
    }

    static interface AccessibilityServiceInfoVersionImpl {
        public boolean getCanRetrieveWindowContent(AccessibilityServiceInfo var1);

        public int getCapabilities(AccessibilityServiceInfo var1);

        public String getDescription(AccessibilityServiceInfo var1);

        public String getId(AccessibilityServiceInfo var1);

        public ResolveInfo getResolveInfo(AccessibilityServiceInfo var1);

        public String getSettingsActivityName(AccessibilityServiceInfo var1);
    }

}

