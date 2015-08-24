/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

class AccessibilityNodeProviderCompatKitKat {
    AccessibilityNodeProviderCompatKitKat() {
    }

    public static Object newAccessibilityNodeProviderBridge(final AccessibilityNodeInfoBridge accessibilityNodeInfoBridge) {
        return new AccessibilityNodeProvider(){

            @Override
            public AccessibilityNodeInfo createAccessibilityNodeInfo(int n) {
                return (AccessibilityNodeInfo)accessibilityNodeInfoBridge.createAccessibilityNodeInfo(n);
            }

            @Override
            public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String string, int n) {
                return accessibilityNodeInfoBridge.findAccessibilityNodeInfosByText(string, n);
            }

            @Override
            public AccessibilityNodeInfo findFocus(int n) {
                return (AccessibilityNodeInfo)accessibilityNodeInfoBridge.findFocus(n);
            }

            @Override
            public boolean performAction(int n, int n2, Bundle bundle) {
                return accessibilityNodeInfoBridge.performAction(n, n2, bundle);
            }
        };
    }

    static interface AccessibilityNodeInfoBridge {
        public Object createAccessibilityNodeInfo(int var1);

        public List<Object> findAccessibilityNodeInfosByText(String var1, int var2);

        public Object findFocus(int var1);

        public boolean performAction(int var1, int var2, Bundle var3);
    }

}

