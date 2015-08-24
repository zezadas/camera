/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompatIcs;
import android.support.v4.view.AccessibilityDelegateCompatJellyBean;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AccessibilityDelegateCompat {
    private static final Object DEFAULT_DELEGATE;
    private static final AccessibilityDelegateImpl IMPL;
    final Object mBridge;

    static;

    public AccessibilityDelegateCompat();

    public boolean dispatchPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View var1);

    Object getBridge();

    public void onInitializeAccessibilityEvent(View var1, AccessibilityEvent var2);

    public void onInitializeAccessibilityNodeInfo(View var1, AccessibilityNodeInfoCompat var2);

    public void onPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

    public boolean onRequestSendAccessibilityEvent(ViewGroup var1, View var2, AccessibilityEvent var3);

    public boolean performAccessibilityAction(View var1, int var2, Bundle var3);

    public void sendAccessibilityEvent(View var1, int var2);

    public void sendAccessibilityEventUnchecked(View var1, AccessibilityEvent var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityDelegateIcsImpl
    extends AccessibilityDelegateStubImpl {
        AccessibilityDelegateIcsImpl();

        @Override
        public boolean dispatchPopulateAccessibilityEvent(Object var1, View var2, AccessibilityEvent var3);

        @Override
        public Object newAccessiblityDelegateBridge(AccessibilityDelegateCompat var1);

        @Override
        public Object newAccessiblityDelegateDefaultImpl();

        @Override
        public void onInitializeAccessibilityEvent(Object var1, View var2, AccessibilityEvent var3);

        @Override
        public void onInitializeAccessibilityNodeInfo(Object var1, View var2, AccessibilityNodeInfoCompat var3);

        @Override
        public void onPopulateAccessibilityEvent(Object var1, View var2, AccessibilityEvent var3);

        @Override
        public boolean onRequestSendAccessibilityEvent(Object var1, ViewGroup var2, View var3, AccessibilityEvent var4);

        @Override
        public void sendAccessibilityEvent(Object var1, View var2, int var3);

        @Override
        public void sendAccessibilityEventUnchecked(Object var1, View var2, AccessibilityEvent var3);

    }

    static interface AccessibilityDelegateImpl {
        public boolean dispatchPopulateAccessibilityEvent(Object var1, View var2, AccessibilityEvent var3);

        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(Object var1, View var2);

        public Object newAccessiblityDelegateBridge(AccessibilityDelegateCompat var1);

        public Object newAccessiblityDelegateDefaultImpl();

        public void onInitializeAccessibilityEvent(Object var1, View var2, AccessibilityEvent var3);

        public void onInitializeAccessibilityNodeInfo(Object var1, View var2, AccessibilityNodeInfoCompat var3);

        public void onPopulateAccessibilityEvent(Object var1, View var2, AccessibilityEvent var3);

        public boolean onRequestSendAccessibilityEvent(Object var1, ViewGroup var2, View var3, AccessibilityEvent var4);

        public boolean performAccessibilityAction(Object var1, View var2, int var3, Bundle var4);

        public void sendAccessibilityEvent(Object var1, View var2, int var3);

        public void sendAccessibilityEventUnchecked(Object var1, View var2, AccessibilityEvent var3);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityDelegateJellyBeanImpl
    extends AccessibilityDelegateIcsImpl {
        AccessibilityDelegateJellyBeanImpl();

        @Override
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(Object var1, View var2);

        @Override
        public Object newAccessiblityDelegateBridge(AccessibilityDelegateCompat var1);

        @Override
        public boolean performAccessibilityAction(Object var1, View var2, int var3, Bundle var4);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityDelegateStubImpl
    implements AccessibilityDelegateImpl {
        AccessibilityDelegateStubImpl();

        @Override
        public boolean dispatchPopulateAccessibilityEvent(Object var1, View var2, AccessibilityEvent var3);

        @Override
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(Object var1, View var2);

        @Override
        public Object newAccessiblityDelegateBridge(AccessibilityDelegateCompat var1);

        @Override
        public Object newAccessiblityDelegateDefaultImpl();

        @Override
        public void onInitializeAccessibilityEvent(Object var1, View var2, AccessibilityEvent var3);

        @Override
        public void onInitializeAccessibilityNodeInfo(Object var1, View var2, AccessibilityNodeInfoCompat var3);

        @Override
        public void onPopulateAccessibilityEvent(Object var1, View var2, AccessibilityEvent var3);

        @Override
        public boolean onRequestSendAccessibilityEvent(Object var1, ViewGroup var2, View var3, AccessibilityEvent var4);

        @Override
        public boolean performAccessibilityAction(Object var1, View var2, int var3, Bundle var4);

        @Override
        public void sendAccessibilityEvent(Object var1, View var2, int var3);

        @Override
        public void sendAccessibilityEventUnchecked(Object var1, View var2, AccessibilityEvent var3);
    }

}

