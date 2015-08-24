/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.support.v4.view.accessibility.AccessibilityManagerCompatIcs;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AccessibilityManagerCompat {
    private static final AccessibilityManagerVersionImpl IMPL;

    static;

    public AccessibilityManagerCompat();

    static /* synthetic */ AccessibilityManagerVersionImpl access$000();

    public static boolean addAccessibilityStateChangeListener(AccessibilityManager var0, AccessibilityStateChangeListenerCompat var1);

    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager var0, int var1);

    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager var0);

    public static boolean isTouchExplorationEnabled(AccessibilityManager var0);

    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager var0, AccessibilityStateChangeListenerCompat var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityManagerIcsImpl
    extends AccessibilityManagerStubImpl {
        AccessibilityManagerIcsImpl();

        @Override
        public boolean addAccessibilityStateChangeListener(AccessibilityManager var1, AccessibilityStateChangeListenerCompat var2);

        @Override
        public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager var1, int var2);

        @Override
        public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager var1);

        @Override
        public boolean isTouchExplorationEnabled(AccessibilityManager var1);

        @Override
        public Object newAccessiblityStateChangeListener(AccessibilityStateChangeListenerCompat var1);

        @Override
        public boolean removeAccessibilityStateChangeListener(AccessibilityManager var1, AccessibilityStateChangeListenerCompat var2);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityManagerStubImpl
    implements AccessibilityManagerVersionImpl {
        AccessibilityManagerStubImpl();

        @Override
        public boolean addAccessibilityStateChangeListener(AccessibilityManager var1, AccessibilityStateChangeListenerCompat var2);

        @Override
        public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager var1, int var2);

        @Override
        public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager var1);

        @Override
        public boolean isTouchExplorationEnabled(AccessibilityManager var1);

        @Override
        public Object newAccessiblityStateChangeListener(AccessibilityStateChangeListenerCompat var1);

        @Override
        public boolean removeAccessibilityStateChangeListener(AccessibilityManager var1, AccessibilityStateChangeListenerCompat var2);
    }

    static interface AccessibilityManagerVersionImpl {
        public boolean addAccessibilityStateChangeListener(AccessibilityManager var1, AccessibilityStateChangeListenerCompat var2);

        public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager var1, int var2);

        public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager var1);

        public boolean isTouchExplorationEnabled(AccessibilityManager var1);

        public Object newAccessiblityStateChangeListener(AccessibilityStateChangeListenerCompat var1);

        public boolean removeAccessibilityStateChangeListener(AccessibilityManager var1, AccessibilityStateChangeListenerCompat var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static abstract class AccessibilityStateChangeListenerCompat {
        final Object mListener;

        public AccessibilityStateChangeListenerCompat();

        public abstract void onAccessibilityStateChanged(boolean var1);
    }

}

