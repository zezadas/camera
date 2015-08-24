/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

class AccessibilityNodeProviderCompatKitKat {
    AccessibilityNodeProviderCompatKitKat();

    public static Object newAccessibilityNodeProviderBridge(AccessibilityNodeInfoBridge var0);

    static interface AccessibilityNodeInfoBridge {
        public Object createAccessibilityNodeInfo(int var1);

        public List<Object> findAccessibilityNodeInfosByText(String var1, int var2);

        public Object findFocus(int var1);

        public boolean performAction(int var1, int var2, Bundle var3);
    }

}

