/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class ExploreByTouchHelper
extends AccessibilityDelegateCompat {
    private static final String DEFAULT_CLASS_NAME;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private int mFocusedVirtualViewId;
    private int mHoveredVirtualViewId;
    private final AccessibilityManager mManager;
    private ExploreByTouchNodeProvider mNodeProvider;
    private final int[] mTempGlobalRect;
    private final Rect mTempParentRect;
    private final Rect mTempScreenRect;
    private final Rect mTempVisibleRect;
    private final View mView;

    static;

    public ExploreByTouchHelper(View var1);

    static /* synthetic */ AccessibilityNodeInfoCompat access$100(ExploreByTouchHelper var0, int var1);

    static /* synthetic */ boolean access$200(ExploreByTouchHelper var0, int var1, int var2, Bundle var3);

    private boolean clearAccessibilityFocus(int var1);

    private AccessibilityEvent createEvent(int var1, int var2);

    private AccessibilityEvent createEventForChild(int var1, int var2);

    private AccessibilityEvent createEventForHost(int var1);

    private AccessibilityNodeInfoCompat createNode(int var1);

    private AccessibilityNodeInfoCompat createNodeForChild(int var1);

    private AccessibilityNodeInfoCompat createNodeForHost();

    private boolean intersectVisibleToUser(Rect var1);

    private boolean isAccessibilityFocused(int var1);

    private boolean manageFocusForChild(int var1, int var2, Bundle var3);

    private boolean performAction(int var1, int var2, Bundle var3);

    private boolean performActionForChild(int var1, int var2, Bundle var3);

    private boolean performActionForHost(int var1, Bundle var2);

    private boolean requestAccessibilityFocus(int var1);

    private void updateHoveredVirtualView(int var1);

    public boolean dispatchHoverEvent(MotionEvent var1);

    @Override
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View var1);

    public int getFocusedVirtualView();

    protected abstract int getVirtualViewAt(float var1, float var2);

    protected abstract void getVisibleVirtualViews(List<Integer> var1);

    public void invalidateRoot();

    public void invalidateVirtualView(int var1);

    protected abstract boolean onPerformActionForVirtualView(int var1, int var2, Bundle var3);

    protected abstract void onPopulateEventForVirtualView(int var1, AccessibilityEvent var2);

    protected abstract void onPopulateNodeForVirtualView(int var1, AccessibilityNodeInfoCompat var2);

    public boolean sendEventForVirtualView(int var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ExploreByTouchNodeProvider
    extends AccessibilityNodeProviderCompat {
        final /* synthetic */ ExploreByTouchHelper this$0;

        private ExploreByTouchNodeProvider(ExploreByTouchHelper var1);

        /* synthetic */ ExploreByTouchNodeProvider(ExploreByTouchHelper var1,  var2);

        @Override
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int var1);

        @Override
        public boolean performAction(int var1, int var2, Bundle var3);
    }

}

