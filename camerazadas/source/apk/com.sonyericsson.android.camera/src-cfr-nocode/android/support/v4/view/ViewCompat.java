/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.graphics.Paint;
import android.os.Bundle;
import android.support.annotation.IntDef;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.util.WeakHashMap;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ViewCompat {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    private static final long FAKE_FRAME_TIME = 10;
    static final ViewCompatImpl IMPL;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    public static final int LAYER_TYPE_HARDWARE = 2;
    public static final int LAYER_TYPE_NONE = 0;
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
    public static final int MEASURED_SIZE_MASK = 16777215;
    public static final int MEASURED_STATE_MASK = -16777216;
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;
    public static final int OVER_SCROLL_ALWAYS = 0;
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    public static final int OVER_SCROLL_NEVER = 2;
    private static final String TAG = "ViewCompat";

    static;

    public ViewCompat();

    public static ViewPropertyAnimatorCompat animate(View var0);

    public static boolean canScrollHorizontally(View var0, int var1);

    public static boolean canScrollVertically(View var0, int var1);

    public static void dispatchFinishTemporaryDetach(View var0);

    public static void dispatchStartTemporaryDetach(View var0);

    public static int getAccessibilityLiveRegion(View var0);

    public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View var0);

    public static float getAlpha(View var0);

    public static int getImportantForAccessibility(View var0);

    public static int getLabelFor(View var0);

    public static int getLayerType(View var0);

    public static int getLayoutDirection(View var0);

    public static int getMeasuredHeightAndState(View var0);

    public static int getMeasuredState(View var0);

    public static int getMeasuredWidthAndState(View var0);

    public static int getMinimumHeight(View var0);

    public static int getMinimumWidth(View var0);

    public static int getOverScrollMode(View var0);

    public static int getPaddingEnd(View var0);

    public static int getPaddingStart(View var0);

    public static ViewParent getParentForAccessibility(View var0);

    public static float getTranslationX(View var0);

    public static float getTranslationY(View var0);

    public static boolean hasTransientState(View var0);

    public static boolean isOpaque(View var0);

    public static void onInitializeAccessibilityEvent(View var0, AccessibilityEvent var1);

    public static void onInitializeAccessibilityNodeInfo(View var0, AccessibilityNodeInfoCompat var1);

    public static void onPopulateAccessibilityEvent(View var0, AccessibilityEvent var1);

    public static boolean performAccessibilityAction(View var0, int var1, Bundle var2);

    public static void postInvalidateOnAnimation(View var0);

    public static void postInvalidateOnAnimation(View var0, int var1, int var2, int var3, int var4);

    public static void postOnAnimation(View var0, Runnable var1);

    public static void postOnAnimationDelayed(View var0, Runnable var1, long var2);

    public static int resolveSizeAndState(int var0, int var1, int var2);

    public static void setAccessibilityDelegate(View var0, AccessibilityDelegateCompat var1);

    public static void setAccessibilityLiveRegion(View var0, int var1);

    public static void setAlpha(View var0, float var1);

    public static void setHasTransientState(View var0, boolean var1);

    public static void setImportantForAccessibility(View var0, int var1);

    public static void setLabelFor(View var0, int var1);

    public static void setLayerPaint(View var0, Paint var1);

    public static void setLayerType(View var0, int var1, Paint var2);

    public static void setLayoutDirection(View var0, int var1);

    public static void setOverScrollMode(View var0, int var1);

    public static void setPaddingRelative(View var0, int var1, int var2, int var3, int var4);

    public static void setRotation(View var0, float var1);

    public static void setRotationX(View var0, float var1);

    public static void setRotationY(View var0, float var1);

    public static void setScaleX(View var0, float var1);

    public static void setScaleY(View var0, float var1);

    public static void setTranslationX(View var0, float var1);

    public static void setTranslationY(View var0, float var1);

    public static void setX(View var0, float var1);

    public static void setY(View var0, float var1);

    public float getPivotX(View var1);

    public float getPivotY(View var1);

    public float getRotation(View var1);

    public float getRotationX(View var1);

    public float getRotationY(View var1);

    public float getScaleX(View var1);

    public float getScaleY(View var1);

    public float getX(View var1);

    public float getY(View var1);

    public void setPivotX(View var1, float var2);

    public void setPivotY(View var1, float var2);

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 2})
    private static @interface AccessibilityLiveRegion {
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class BaseViewCompatImpl
    implements ViewCompatImpl {
        private Method mDispatchFinishTemporaryDetach;
        private Method mDispatchStartTemporaryDetach;
        private boolean mTempDetachBound;
        WeakHashMap<View, ViewPropertyAnimatorCompat> mViewPropertyAnimatorCompatMap;

        BaseViewCompatImpl();

        private void bindTempDetach();

        @Override
        public ViewPropertyAnimatorCompat animate(View var1);

        @Override
        public boolean canScrollHorizontally(View var1, int var2);

        @Override
        public boolean canScrollVertically(View var1, int var2);

        @Override
        public void dispatchFinishTemporaryDetach(View var1);

        @Override
        public void dispatchStartTemporaryDetach(View var1);

        @Override
        public int getAccessibilityLiveRegion(View var1);

        @Override
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View var1);

        @Override
        public float getAlpha(View var1);

        long getFrameTime();

        @Override
        public int getImportantForAccessibility(View var1);

        @Override
        public int getLabelFor(View var1);

        @Override
        public int getLayerType(View var1);

        @Override
        public int getLayoutDirection(View var1);

        @Override
        public int getMeasuredHeightAndState(View var1);

        @Override
        public int getMeasuredState(View var1);

        @Override
        public int getMeasuredWidthAndState(View var1);

        @Override
        public int getMinimumHeight(View var1);

        @Override
        public int getMinimumWidth(View var1);

        @Override
        public int getOverScrollMode(View var1);

        @Override
        public int getPaddingEnd(View var1);

        @Override
        public int getPaddingStart(View var1);

        @Override
        public ViewParent getParentForAccessibility(View var1);

        @Override
        public float getPivotX(View var1);

        @Override
        public float getPivotY(View var1);

        @Override
        public float getRotation(View var1);

        @Override
        public float getRotationX(View var1);

        @Override
        public float getRotationY(View var1);

        @Override
        public float getScaleX(View var1);

        @Override
        public float getScaleY(View var1);

        @Override
        public float getTranslationX(View var1);

        @Override
        public float getTranslationY(View var1);

        @Override
        public float getX(View var1);

        @Override
        public float getY(View var1);

        @Override
        public boolean hasTransientState(View var1);

        @Override
        public boolean isOpaque(View var1);

        @Override
        public void onInitializeAccessibilityEvent(View var1, AccessibilityEvent var2);

        @Override
        public void onInitializeAccessibilityNodeInfo(View var1, AccessibilityNodeInfoCompat var2);

        @Override
        public void onPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

        @Override
        public boolean performAccessibilityAction(View var1, int var2, Bundle var3);

        @Override
        public void postInvalidateOnAnimation(View var1);

        @Override
        public void postInvalidateOnAnimation(View var1, int var2, int var3, int var4, int var5);

        @Override
        public void postOnAnimation(View var1, Runnable var2);

        @Override
        public void postOnAnimationDelayed(View var1, Runnable var2, long var3);

        @Override
        public int resolveSizeAndState(int var1, int var2, int var3);

        @Override
        public void setAccessibilityDelegate(View var1, AccessibilityDelegateCompat var2);

        @Override
        public void setAccessibilityLiveRegion(View var1, int var2);

        @Override
        public void setAlpha(View var1, float var2);

        @Override
        public void setHasTransientState(View var1, boolean var2);

        @Override
        public void setImportantForAccessibility(View var1, int var2);

        @Override
        public void setLabelFor(View var1, int var2);

        @Override
        public void setLayerPaint(View var1, Paint var2);

        @Override
        public void setLayerType(View var1, int var2, Paint var3);

        @Override
        public void setLayoutDirection(View var1, int var2);

        @Override
        public void setOverScrollMode(View var1, int var2);

        @Override
        public void setPaddingRelative(View var1, int var2, int var3, int var4, int var5);

        @Override
        public void setPivotX(View var1, float var2);

        @Override
        public void setPivotY(View var1, float var2);

        @Override
        public void setRotation(View var1, float var2);

        @Override
        public void setRotationX(View var1, float var2);

        @Override
        public void setRotationY(View var1, float var2);

        @Override
        public void setScaleX(View var1, float var2);

        @Override
        public void setScaleY(View var1, float var2);

        @Override
        public void setTranslationX(View var1, float var2);

        @Override
        public void setTranslationY(View var1, float var2);

        @Override
        public void setX(View var1, float var2);

        @Override
        public void setY(View var1, float var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class EclairMr1ViewCompatImpl
    extends BaseViewCompatImpl {
        EclairMr1ViewCompatImpl();

        @Override
        public boolean isOpaque(View var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class GBViewCompatImpl
    extends EclairMr1ViewCompatImpl {
        GBViewCompatImpl();

        @Override
        public int getOverScrollMode(View var1);

        @Override
        public void setOverScrollMode(View var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class HCViewCompatImpl
    extends GBViewCompatImpl {
        HCViewCompatImpl();

        @Override
        public float getAlpha(View var1);

        @Override
        long getFrameTime();

        @Override
        public int getLayerType(View var1);

        @Override
        public int getMeasuredHeightAndState(View var1);

        @Override
        public int getMeasuredState(View var1);

        @Override
        public int getMeasuredWidthAndState(View var1);

        @Override
        public float getPivotX(View var1);

        @Override
        public float getPivotY(View var1);

        @Override
        public float getRotation(View var1);

        @Override
        public float getRotationX(View var1);

        @Override
        public float getRotationY(View var1);

        @Override
        public float getScaleX(View var1);

        @Override
        public float getScaleY(View var1);

        @Override
        public float getTranslationX(View var1);

        @Override
        public float getTranslationY(View var1);

        @Override
        public float getX(View var1);

        @Override
        public float getY(View var1);

        @Override
        public int resolveSizeAndState(int var1, int var2, int var3);

        @Override
        public void setAlpha(View var1, float var2);

        @Override
        public void setLayerPaint(View var1, Paint var2);

        @Override
        public void setLayerType(View var1, int var2, Paint var3);

        @Override
        public void setPivotX(View var1, float var2);

        @Override
        public void setPivotY(View var1, float var2);

        @Override
        public void setRotation(View var1, float var2);

        @Override
        public void setRotationX(View var1, float var2);

        @Override
        public void setRotationY(View var1, float var2);

        @Override
        public void setScaleX(View var1, float var2);

        @Override
        public void setScaleY(View var1, float var2);

        @Override
        public void setTranslationX(View var1, float var2);

        @Override
        public void setTranslationY(View var1, float var2);

        @Override
        public void setX(View var1, float var2);

        @Override
        public void setY(View var1, float var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ICSViewCompatImpl
    extends HCViewCompatImpl {
        ICSViewCompatImpl();

        @Override
        public ViewPropertyAnimatorCompat animate(View var1);

        @Override
        public boolean canScrollHorizontally(View var1, int var2);

        @Override
        public boolean canScrollVertically(View var1, int var2);

        @Override
        public void onInitializeAccessibilityEvent(View var1, AccessibilityEvent var2);

        @Override
        public void onInitializeAccessibilityNodeInfo(View var1, AccessibilityNodeInfoCompat var2);

        @Override
        public void onPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

        @Override
        public void setAccessibilityDelegate(View var1, AccessibilityDelegateCompat var2);
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 2, 4})
    private static @interface ImportantForAccessibility {
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class JBViewCompatImpl
    extends ICSViewCompatImpl {
        JBViewCompatImpl();

        @Override
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View var1);

        @Override
        public int getImportantForAccessibility(View var1);

        @Override
        public int getMinimumHeight(View var1);

        @Override
        public int getMinimumWidth(View var1);

        @Override
        public ViewParent getParentForAccessibility(View var1);

        @Override
        public boolean hasTransientState(View var1);

        @Override
        public boolean performAccessibilityAction(View var1, int var2, Bundle var3);

        @Override
        public void postInvalidateOnAnimation(View var1);

        @Override
        public void postInvalidateOnAnimation(View var1, int var2, int var3, int var4, int var5);

        @Override
        public void postOnAnimation(View var1, Runnable var2);

        @Override
        public void postOnAnimationDelayed(View var1, Runnable var2, long var3);

        @Override
        public void setHasTransientState(View var1, boolean var2);

        @Override
        public void setImportantForAccessibility(View var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class JbMr1ViewCompatImpl
    extends JBViewCompatImpl {
        JbMr1ViewCompatImpl();

        @Override
        public int getLabelFor(View var1);

        @Override
        public int getLayoutDirection(View var1);

        @Override
        public int getPaddingEnd(View var1);

        @Override
        public int getPaddingStart(View var1);

        @Override
        public void setLabelFor(View var1, int var2);

        @Override
        public void setLayerPaint(View var1, Paint var2);

        @Override
        public void setLayoutDirection(View var1, int var2);

        @Override
        public void setPaddingRelative(View var1, int var2, int var3, int var4, int var5);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class KitKatViewCompatImpl
    extends JbMr1ViewCompatImpl {
        KitKatViewCompatImpl();

        @Override
        public int getAccessibilityLiveRegion(View var1);

        @Override
        public void setAccessibilityLiveRegion(View var1, int var2);

        @Override
        public void setImportantForAccessibility(View var1, int var2);
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 2})
    private static @interface LayerType {
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 2, 3})
    private static @interface LayoutDirectionMode {
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 1})
    private static @interface OverScroll {
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1})
    private static @interface ResolvedLayoutDirectionMode {
    }

    static interface ViewCompatImpl {
        public ViewPropertyAnimatorCompat animate(View var1);

        public boolean canScrollHorizontally(View var1, int var2);

        public boolean canScrollVertically(View var1, int var2);

        public void dispatchFinishTemporaryDetach(View var1);

        public void dispatchStartTemporaryDetach(View var1);

        public int getAccessibilityLiveRegion(View var1);

        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View var1);

        public float getAlpha(View var1);

        public int getImportantForAccessibility(View var1);

        public int getLabelFor(View var1);

        public int getLayerType(View var1);

        public int getLayoutDirection(View var1);

        public int getMeasuredHeightAndState(View var1);

        public int getMeasuredState(View var1);

        public int getMeasuredWidthAndState(View var1);

        public int getMinimumHeight(View var1);

        public int getMinimumWidth(View var1);

        public int getOverScrollMode(View var1);

        public int getPaddingEnd(View var1);

        public int getPaddingStart(View var1);

        public ViewParent getParentForAccessibility(View var1);

        public float getPivotX(View var1);

        public float getPivotY(View var1);

        public float getRotation(View var1);

        public float getRotationX(View var1);

        public float getRotationY(View var1);

        public float getScaleX(View var1);

        public float getScaleY(View var1);

        public float getTranslationX(View var1);

        public float getTranslationY(View var1);

        public float getX(View var1);

        public float getY(View var1);

        public boolean hasTransientState(View var1);

        public boolean isOpaque(View var1);

        public void onInitializeAccessibilityEvent(View var1, AccessibilityEvent var2);

        public void onInitializeAccessibilityNodeInfo(View var1, AccessibilityNodeInfoCompat var2);

        public void onPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

        public boolean performAccessibilityAction(View var1, int var2, Bundle var3);

        public void postInvalidateOnAnimation(View var1);

        public void postInvalidateOnAnimation(View var1, int var2, int var3, int var4, int var5);

        public void postOnAnimation(View var1, Runnable var2);

        public void postOnAnimationDelayed(View var1, Runnable var2, long var3);

        public int resolveSizeAndState(int var1, int var2, int var3);

        public void setAccessibilityDelegate(View var1, AccessibilityDelegateCompat var2);

        public void setAccessibilityLiveRegion(View var1, int var2);

        public void setAlpha(View var1, float var2);

        public void setHasTransientState(View var1, boolean var2);

        public void setImportantForAccessibility(View var1, int var2);

        public void setLabelFor(View var1, int var2);

        public void setLayerPaint(View var1, Paint var2);

        public void setLayerType(View var1, int var2, Paint var3);

        public void setLayoutDirection(View var1, int var2);

        public void setOverScrollMode(View var1, int var2);

        public void setPaddingRelative(View var1, int var2, int var3, int var4, int var5);

        public void setPivotX(View var1, float var2);

        public void setPivotY(View var1, float var2);

        public void setRotation(View var1, float var2);

        public void setRotationX(View var1, float var2);

        public void setRotationY(View var1, float var2);

        public void setScaleX(View var1, float var2);

        public void setScaleY(View var1, float var2);

        public void setTranslationX(View var1, float var2);

        public void setTranslationY(View var1, float var2);

        public void setX(View var1, float var2);

        public void setY(View var1, float var2);
    }

}

