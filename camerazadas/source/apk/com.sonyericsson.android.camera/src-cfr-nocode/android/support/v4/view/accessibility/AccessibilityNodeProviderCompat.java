/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompatJellyBean;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompatKitKat;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AccessibilityNodeProviderCompat {
    private static final AccessibilityNodeProviderImpl IMPL;
    private final Object mProvider;

    static;

    public AccessibilityNodeProviderCompat();

    public AccessibilityNodeProviderCompat(Object var1);

    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int var1);

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String var1, int var2);

    public AccessibilityNodeInfoCompat findFocus(int var1);

    public Object getProvider();

    public boolean performAction(int var1, int var2, Bundle var3);

    static interface AccessibilityNodeProviderImpl {
        public Object newAccessibilityNodeProviderBridge(AccessibilityNodeProviderCompat var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityNodeProviderJellyBeanImpl
    extends AccessibilityNodeProviderStubImpl {
        AccessibilityNodeProviderJellyBeanImpl();

        @Override
        public Object newAccessibilityNodeProviderBridge(AccessibilityNodeProviderCompat var1);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityNodeProviderKitKatImpl
    extends AccessibilityNodeProviderStubImpl {
        AccessibilityNodeProviderKitKatImpl();

        @Override
        public Object newAccessibilityNodeProviderBridge(AccessibilityNodeProviderCompat var1);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityNodeProviderStubImpl
    implements AccessibilityNodeProviderImpl {
        AccessibilityNodeProviderStubImpl();

        @Override
        public Object newAccessibilityNodeProviderBridge(AccessibilityNodeProviderCompat var1);
    }

}

