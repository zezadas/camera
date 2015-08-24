/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

class AccessibilityManagerCompatIcs {
    AccessibilityManagerCompatIcs();

    public static boolean addAccessibilityStateChangeListener(AccessibilityManager var0, Object var1);

    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager var0, int var1);

    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager var0);

    public static boolean isTouchExplorationEnabled(AccessibilityManager var0);

    public static Object newAccessibilityStateChangeListener(AccessibilityStateChangeListenerBridge var0);

    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager var0, Object var1);

    static interface AccessibilityStateChangeListenerBridge {
        public void onAccessibilityStateChanged(boolean var1);
    }

}

