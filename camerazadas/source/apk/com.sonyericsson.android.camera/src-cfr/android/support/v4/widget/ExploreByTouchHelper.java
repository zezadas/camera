/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewParentCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.util.LinkedList;
import java.util.List;

public abstract class ExploreByTouchHelper
extends AccessibilityDelegateCompat {
    private static final String DEFAULT_CLASS_NAME = View.class.getName();
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private int mFocusedVirtualViewId = Integer.MIN_VALUE;
    private int mHoveredVirtualViewId = Integer.MIN_VALUE;
    private final AccessibilityManager mManager;
    private ExploreByTouchNodeProvider mNodeProvider;
    private final int[] mTempGlobalRect = new int[2];
    private final Rect mTempParentRect = new Rect();
    private final Rect mTempScreenRect = new Rect();
    private final Rect mTempVisibleRect = new Rect();
    private final View mView;

    public ExploreByTouchHelper(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.mView = view;
        this.mManager = (AccessibilityManager)view.getContext().getSystemService("accessibility");
    }

    private boolean clearAccessibilityFocus(int n) {
        if (this.isAccessibilityFocused(n)) {
            this.mFocusedVirtualViewId = Integer.MIN_VALUE;
            this.mView.invalidate();
            this.sendEventForVirtualView(n, 65536);
            return true;
        }
        return false;
    }

    private AccessibilityEvent createEvent(int n, int n2) {
        switch (n) {
            default: {
                return this.createEventForChild(n, n2);
            }
            case -1: 
        }
        return this.createEventForHost(n2);
    }

    private AccessibilityEvent createEventForChild(int n, int n2) {
        AccessibilityEvent accessibilityEvent = AccessibilityEvent.obtain(n2);
        accessibilityEvent.setEnabled(true);
        accessibilityEvent.setClassName((CharSequence)DEFAULT_CLASS_NAME);
        this.onPopulateEventForVirtualView(n, accessibilityEvent);
        if (accessibilityEvent.getText().isEmpty() && accessibilityEvent.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEvent.setPackageName((CharSequence)this.mView.getContext().getPackageName());
        AccessibilityEventCompat.asRecord(accessibilityEvent).setSource(this.mView, n);
        return accessibilityEvent;
    }

    private AccessibilityEvent createEventForHost(int n) {
        AccessibilityEvent accessibilityEvent = AccessibilityEvent.obtain(n);
        ViewCompat.onInitializeAccessibilityEvent(this.mView, accessibilityEvent);
        return accessibilityEvent;
    }

    private AccessibilityNodeInfoCompat createNode(int n) {
        switch (n) {
            default: {
                return this.createNodeForChild(n);
            }
            case -1: 
        }
        return this.createNodeForHost();
    }

    /*
     * Enabled aggressive block sorting
     */
    private AccessibilityNodeInfoCompat createNodeForChild(int n) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain();
        accessibilityNodeInfoCompat.setEnabled(true);
        accessibilityNodeInfoCompat.setClassName((CharSequence)DEFAULT_CLASS_NAME);
        this.onPopulateNodeForVirtualView(n, accessibilityNodeInfoCompat);
        if (accessibilityNodeInfoCompat.getText() == null && accessibilityNodeInfoCompat.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoCompat.getBoundsInParent(this.mTempParentRect);
        if (this.mTempParentRect.isEmpty()) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int n2 = accessibilityNodeInfoCompat.getActions();
        if ((n2 & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((n2 & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoCompat.setPackageName((CharSequence)this.mView.getContext().getPackageName());
        accessibilityNodeInfoCompat.setSource(this.mView, n);
        accessibilityNodeInfoCompat.setParent(this.mView);
        if (this.mFocusedVirtualViewId == n) {
            accessibilityNodeInfoCompat.setAccessibilityFocused(true);
            accessibilityNodeInfoCompat.addAction(128);
        } else {
            accessibilityNodeInfoCompat.setAccessibilityFocused(false);
            accessibilityNodeInfoCompat.addAction(64);
        }
        if (this.intersectVisibleToUser(this.mTempParentRect)) {
            accessibilityNodeInfoCompat.setVisibleToUser(true);
            accessibilityNodeInfoCompat.setBoundsInParent(this.mTempParentRect);
        }
        this.mView.getLocationOnScreen(this.mTempGlobalRect);
        n = this.mTempGlobalRect[0];
        n2 = this.mTempGlobalRect[1];
        this.mTempScreenRect.set(this.mTempParentRect);
        this.mTempScreenRect.offset(n, n2);
        accessibilityNodeInfoCompat.setBoundsInScreen(this.mTempScreenRect);
        return accessibilityNodeInfoCompat;
    }

    private AccessibilityNodeInfoCompat createNodeForHost() {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain(this.mView);
        ViewCompat.onInitializeAccessibilityNodeInfo(this.mView, accessibilityNodeInfoCompat);
        Object object = new LinkedList<Integer>();
        this.getVisibleVirtualViews((List<Integer>)object);
        for (Integer n : object) {
            accessibilityNodeInfoCompat.addChild(this.mView, n);
        }
        return accessibilityNodeInfoCompat;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean intersectVisibleToUser(Rect rect) {
        if (rect == null || rect.isEmpty() || this.mView.getWindowVisibility() != 0) return false;
        Object object = this.mView.getParent();
        while (object instanceof View) {
            if (ViewCompat.getAlpha((View)(object = (View)object)) <= 0.0f || object.getVisibility() != 0) return false;
            {
                object = object.getParent();
                continue;
            }
        }
        if (object != null && this.mView.getLocalVisibleRect(this.mTempVisibleRect)) return rect.intersect(this.mTempVisibleRect);
        return false;
    }

    private boolean isAccessibilityFocused(int n) {
        if (this.mFocusedVirtualViewId == n) {
            return true;
        }
        return false;
    }

    private boolean manageFocusForChild(int n, int n2, Bundle bundle) {
        switch (n2) {
            default: {
                return false;
            }
            case 64: {
                return this.requestAccessibilityFocus(n);
            }
            case 128: 
        }
        return this.clearAccessibilityFocus(n);
    }

    private boolean performAction(int n, int n2, Bundle bundle) {
        switch (n) {
            default: {
                return this.performActionForChild(n, n2, bundle);
            }
            case -1: 
        }
        return this.performActionForHost(n2, bundle);
    }

    private boolean performActionForChild(int n, int n2, Bundle bundle) {
        switch (n2) {
            default: {
                return this.onPerformActionForVirtualView(n, n2, bundle);
            }
            case 64: 
            case 128: 
        }
        return this.manageFocusForChild(n, n2, bundle);
    }

    private boolean performActionForHost(int n, Bundle bundle) {
        return ViewCompat.performAccessibilityAction(this.mView, n, bundle);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean requestAccessibilityFocus(int n) {
        if (!(this.mManager.isEnabled() && AccessibilityManagerCompat.isTouchExplorationEnabled(this.mManager) && !this.isAccessibilityFocused(n))) {
            return false;
        }
        this.mFocusedVirtualViewId = n;
        this.mView.invalidate();
        this.sendEventForVirtualView(n, 32768);
        return true;
    }

    private void updateHoveredVirtualView(int n) {
        if (this.mHoveredVirtualViewId == n) {
            return;
        }
        int n2 = this.mHoveredVirtualViewId;
        this.mHoveredVirtualViewId = n;
        this.sendEventForVirtualView(n, 128);
        this.sendEventForVirtualView(n2, 256);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        boolean bl = true;
        if (!this.mManager.isEnabled()) return false;
        if (!AccessibilityManagerCompat.isTouchExplorationEnabled(this.mManager)) {
            return false;
        }
        switch (motionEvent.getAction()) {
            default: {
                return false;
            }
            case 7: 
            case 9: {
                int n = this.getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
                this.updateHoveredVirtualView(n);
                if (n == Integer.MIN_VALUE) return false;
                return bl;
            }
            case 10: 
        }
        if (this.mFocusedVirtualViewId == Integer.MIN_VALUE) return false;
        this.updateHoveredVirtualView(Integer.MIN_VALUE);
        return true;
    }

    @Override
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new ExploreByTouchNodeProvider();
        }
        return this.mNodeProvider;
    }

    public int getFocusedVirtualView() {
        return this.mFocusedVirtualViewId;
    }

    protected abstract int getVirtualViewAt(float var1, float var2);

    protected abstract void getVisibleVirtualViews(List<Integer> var1);

    public void invalidateRoot() {
        this.invalidateVirtualView(-1);
    }

    public void invalidateVirtualView(int n) {
        this.sendEventForVirtualView(n, 2048);
    }

    protected abstract boolean onPerformActionForVirtualView(int var1, int var2, Bundle var3);

    protected abstract void onPopulateEventForVirtualView(int var1, AccessibilityEvent var2);

    protected abstract void onPopulateNodeForVirtualView(int var1, AccessibilityNodeInfoCompat var2);

    /*
     * Enabled aggressive block sorting
     */
    public boolean sendEventForVirtualView(int n, int n2) {
        ViewParent viewParent;
        if (!(n != Integer.MIN_VALUE && this.mManager.isEnabled() && (viewParent = this.mView.getParent()) != null)) {
            return false;
        }
        AccessibilityEvent accessibilityEvent = this.createEvent(n, n2);
        return ViewParentCompat.requestSendAccessibilityEvent(viewParent, this.mView, accessibilityEvent);
    }

    private class ExploreByTouchNodeProvider
    extends AccessibilityNodeProviderCompat {
        private ExploreByTouchNodeProvider() {
        }

        @Override
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int n) {
            return ExploreByTouchHelper.this.createNode(n);
        }

        @Override
        public boolean performAction(int n, int n2, Bundle bundle) {
            return ExploreByTouchHelper.this.performAction(n, n2, bundle);
        }
    }

}

