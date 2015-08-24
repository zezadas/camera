/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AccessibilityNodeInfoCompat {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
    public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
    public static final int ACTION_CLEAR_FOCUS = 2;
    public static final int ACTION_CLEAR_SELECTION = 8;
    public static final int ACTION_CLICK = 16;
    public static final int ACTION_COPY = 16384;
    public static final int ACTION_CUT = 65536;
    public static final int ACTION_FOCUS = 1;
    public static final int ACTION_LONG_CLICK = 32;
    public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
    public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
    public static final int ACTION_PASTE = 32768;
    public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
    public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
    public static final int ACTION_SCROLL_BACKWARD = 8192;
    public static final int ACTION_SCROLL_FORWARD = 4096;
    public static final int ACTION_SELECT = 4;
    public static final int ACTION_SET_SELECTION = 131072;
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;
    private static final AccessibilityNodeInfoImpl IMPL;
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;
    private final Object mInfo;

    static;

    public AccessibilityNodeInfoCompat(Object var1);

    private static String getActionSymbolicName(int var0);

    public static AccessibilityNodeInfoCompat obtain();

    public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat var0);

    public static AccessibilityNodeInfoCompat obtain(View var0);

    public static AccessibilityNodeInfoCompat obtain(View var0, int var1);

    static AccessibilityNodeInfoCompat wrapNonNullInstance(Object var0);

    public void addAction(int var1);

    public void addChild(View var1);

    public void addChild(View var1, int var2);

    public boolean equals(Object var1);

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String var1);

    public AccessibilityNodeInfoCompat findFocus(int var1);

    public AccessibilityNodeInfoCompat focusSearch(int var1);

    public int getActions();

    public void getBoundsInParent(Rect var1);

    public void getBoundsInScreen(Rect var1);

    public AccessibilityNodeInfoCompat getChild(int var1);

    public int getChildCount();

    public CharSequence getClassName();

    public CharSequence getContentDescription();

    public Object getInfo();

    public int getLiveRegion();

    public int getMovementGranularities();

    public CharSequence getPackageName();

    public AccessibilityNodeInfoCompat getParent();

    public CharSequence getText();

    public String getViewIdResourceName();

    public int getWindowId();

    public int hashCode();

    public boolean isAccessibilityFocused();

    public boolean isCheckable();

    public boolean isChecked();

    public boolean isClickable();

    public boolean isEnabled();

    public boolean isFocusable();

    public boolean isFocused();

    public boolean isLongClickable();

    public boolean isPassword();

    public boolean isScrollable();

    public boolean isSelected();

    public boolean isVisibleToUser();

    public boolean performAction(int var1);

    public boolean performAction(int var1, Bundle var2);

    public void recycle();

    public void setAccessibilityFocused(boolean var1);

    public void setBoundsInParent(Rect var1);

    public void setBoundsInScreen(Rect var1);

    public void setCheckable(boolean var1);

    public void setChecked(boolean var1);

    public void setClassName(CharSequence var1);

    public void setClickable(boolean var1);

    public void setContentDescription(CharSequence var1);

    public void setEnabled(boolean var1);

    public void setFocusable(boolean var1);

    public void setFocused(boolean var1);

    public void setLiveRegion(int var1);

    public void setLongClickable(boolean var1);

    public void setMovementGranularities(int var1);

    public void setPackageName(CharSequence var1);

    public void setParent(View var1);

    public void setParent(View var1, int var2);

    public void setPassword(boolean var1);

    public void setScrollable(boolean var1);

    public void setSelected(boolean var1);

    public void setSource(View var1);

    public void setSource(View var1, int var2);

    public void setText(CharSequence var1);

    public void setViewIdResourceName(String var1);

    public void setVisibleToUser(boolean var1);

    public String toString();

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityNodeInfoIcsImpl
    extends AccessibilityNodeInfoStubImpl {
        AccessibilityNodeInfoIcsImpl();

        @Override
        public void addAction(Object var1, int var2);

        @Override
        public void addChild(Object var1, View var2);

        @Override
        public List<Object> findAccessibilityNodeInfosByText(Object var1, String var2);

        @Override
        public int getActions(Object var1);

        @Override
        public void getBoundsInParent(Object var1, Rect var2);

        @Override
        public void getBoundsInScreen(Object var1, Rect var2);

        @Override
        public Object getChild(Object var1, int var2);

        @Override
        public int getChildCount(Object var1);

        @Override
        public CharSequence getClassName(Object var1);

        @Override
        public CharSequence getContentDescription(Object var1);

        @Override
        public CharSequence getPackageName(Object var1);

        @Override
        public Object getParent(Object var1);

        @Override
        public CharSequence getText(Object var1);

        @Override
        public int getWindowId(Object var1);

        @Override
        public boolean isCheckable(Object var1);

        @Override
        public boolean isChecked(Object var1);

        @Override
        public boolean isClickable(Object var1);

        @Override
        public boolean isEnabled(Object var1);

        @Override
        public boolean isFocusable(Object var1);

        @Override
        public boolean isFocused(Object var1);

        @Override
        public boolean isLongClickable(Object var1);

        @Override
        public boolean isPassword(Object var1);

        @Override
        public boolean isScrollable(Object var1);

        @Override
        public boolean isSelected(Object var1);

        @Override
        public Object obtain();

        @Override
        public Object obtain(View var1);

        @Override
        public Object obtain(Object var1);

        @Override
        public boolean performAction(Object var1, int var2);

        @Override
        public void recycle(Object var1);

        @Override
        public void setBoundsInParent(Object var1, Rect var2);

        @Override
        public void setBoundsInScreen(Object var1, Rect var2);

        @Override
        public void setCheckable(Object var1, boolean var2);

        @Override
        public void setChecked(Object var1, boolean var2);

        @Override
        public void setClassName(Object var1, CharSequence var2);

        @Override
        public void setClickable(Object var1, boolean var2);

        @Override
        public void setContentDescription(Object var1, CharSequence var2);

        @Override
        public void setEnabled(Object var1, boolean var2);

        @Override
        public void setFocusable(Object var1, boolean var2);

        @Override
        public void setFocused(Object var1, boolean var2);

        @Override
        public void setLongClickable(Object var1, boolean var2);

        @Override
        public void setPackageName(Object var1, CharSequence var2);

        @Override
        public void setParent(Object var1, View var2);

        @Override
        public void setPassword(Object var1, boolean var2);

        @Override
        public void setScrollable(Object var1, boolean var2);

        @Override
        public void setSelected(Object var1, boolean var2);

        @Override
        public void setSource(Object var1, View var2);

        @Override
        public void setText(Object var1, CharSequence var2);
    }

    static interface AccessibilityNodeInfoImpl {
        public void addAction(Object var1, int var2);

        public void addChild(Object var1, View var2);

        public void addChild(Object var1, View var2, int var3);

        public List<Object> findAccessibilityNodeInfosByText(Object var1, String var2);

        public Object findFocus(Object var1, int var2);

        public Object focusSearch(Object var1, int var2);

        public int getActions(Object var1);

        public void getBoundsInParent(Object var1, Rect var2);

        public void getBoundsInScreen(Object var1, Rect var2);

        public Object getChild(Object var1, int var2);

        public int getChildCount(Object var1);

        public CharSequence getClassName(Object var1);

        public CharSequence getContentDescription(Object var1);

        public int getLiveRegion(Object var1);

        public int getMovementGranularities(Object var1);

        public CharSequence getPackageName(Object var1);

        public Object getParent(Object var1);

        public CharSequence getText(Object var1);

        public String getViewIdResourceName(Object var1);

        public int getWindowId(Object var1);

        public boolean isAccessibilityFocused(Object var1);

        public boolean isCheckable(Object var1);

        public boolean isChecked(Object var1);

        public boolean isClickable(Object var1);

        public boolean isEnabled(Object var1);

        public boolean isFocusable(Object var1);

        public boolean isFocused(Object var1);

        public boolean isLongClickable(Object var1);

        public boolean isPassword(Object var1);

        public boolean isScrollable(Object var1);

        public boolean isSelected(Object var1);

        public boolean isVisibleToUser(Object var1);

        public Object obtain();

        public Object obtain(View var1);

        public Object obtain(View var1, int var2);

        public Object obtain(Object var1);

        public boolean performAction(Object var1, int var2);

        public boolean performAction(Object var1, int var2, Bundle var3);

        public void recycle(Object var1);

        public void setAccessibilityFocused(Object var1, boolean var2);

        public void setBoundsInParent(Object var1, Rect var2);

        public void setBoundsInScreen(Object var1, Rect var2);

        public void setCheckable(Object var1, boolean var2);

        public void setChecked(Object var1, boolean var2);

        public void setClassName(Object var1, CharSequence var2);

        public void setClickable(Object var1, boolean var2);

        public void setContentDescription(Object var1, CharSequence var2);

        public void setEnabled(Object var1, boolean var2);

        public void setFocusable(Object var1, boolean var2);

        public void setFocused(Object var1, boolean var2);

        public void setLiveRegion(Object var1, int var2);

        public void setLongClickable(Object var1, boolean var2);

        public void setMovementGranularities(Object var1, int var2);

        public void setPackageName(Object var1, CharSequence var2);

        public void setParent(Object var1, View var2);

        public void setParent(Object var1, View var2, int var3);

        public void setPassword(Object var1, boolean var2);

        public void setScrollable(Object var1, boolean var2);

        public void setSelected(Object var1, boolean var2);

        public void setSource(Object var1, View var2);

        public void setSource(Object var1, View var2, int var3);

        public void setText(Object var1, CharSequence var2);

        public void setViewIdResourceName(Object var1, String var2);

        public void setVisibleToUser(Object var1, boolean var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityNodeInfoJellybeanImpl
    extends AccessibilityNodeInfoIcsImpl {
        AccessibilityNodeInfoJellybeanImpl();

        @Override
        public void addChild(Object var1, View var2, int var3);

        @Override
        public Object findFocus(Object var1, int var2);

        @Override
        public Object focusSearch(Object var1, int var2);

        @Override
        public int getMovementGranularities(Object var1);

        @Override
        public boolean isAccessibilityFocused(Object var1);

        @Override
        public boolean isVisibleToUser(Object var1);

        @Override
        public Object obtain(View var1, int var2);

        @Override
        public boolean performAction(Object var1, int var2, Bundle var3);

        @Override
        public void setAccessibilityFocused(Object var1, boolean var2);

        @Override
        public void setMovementGranularities(Object var1, int var2);

        @Override
        public void setParent(Object var1, View var2, int var3);

        @Override
        public void setSource(Object var1, View var2, int var3);

        @Override
        public void setVisibleToUser(Object var1, boolean var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityNodeInfoJellybeanMr2Impl
    extends AccessibilityNodeInfoJellybeanImpl {
        AccessibilityNodeInfoJellybeanMr2Impl();

        @Override
        public String getViewIdResourceName(Object var1);

        @Override
        public void setViewIdResourceName(Object var1, String var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityNodeInfoKitKatImpl
    extends AccessibilityNodeInfoJellybeanMr2Impl {
        AccessibilityNodeInfoKitKatImpl();

        @Override
        public int getLiveRegion(Object var1);

        @Override
        public void setLiveRegion(Object var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityNodeInfoStubImpl
    implements AccessibilityNodeInfoImpl {
        AccessibilityNodeInfoStubImpl();

        @Override
        public void addAction(Object var1, int var2);

        @Override
        public void addChild(Object var1, View var2);

        @Override
        public void addChild(Object var1, View var2, int var3);

        @Override
        public List<Object> findAccessibilityNodeInfosByText(Object var1, String var2);

        @Override
        public Object findFocus(Object var1, int var2);

        @Override
        public Object focusSearch(Object var1, int var2);

        @Override
        public int getActions(Object var1);

        @Override
        public void getBoundsInParent(Object var1, Rect var2);

        @Override
        public void getBoundsInScreen(Object var1, Rect var2);

        @Override
        public Object getChild(Object var1, int var2);

        @Override
        public int getChildCount(Object var1);

        @Override
        public CharSequence getClassName(Object var1);

        @Override
        public CharSequence getContentDescription(Object var1);

        @Override
        public int getLiveRegion(Object var1);

        @Override
        public int getMovementGranularities(Object var1);

        @Override
        public CharSequence getPackageName(Object var1);

        @Override
        public Object getParent(Object var1);

        @Override
        public CharSequence getText(Object var1);

        @Override
        public String getViewIdResourceName(Object var1);

        @Override
        public int getWindowId(Object var1);

        @Override
        public boolean isAccessibilityFocused(Object var1);

        @Override
        public boolean isCheckable(Object var1);

        @Override
        public boolean isChecked(Object var1);

        @Override
        public boolean isClickable(Object var1);

        @Override
        public boolean isEnabled(Object var1);

        @Override
        public boolean isFocusable(Object var1);

        @Override
        public boolean isFocused(Object var1);

        @Override
        public boolean isLongClickable(Object var1);

        @Override
        public boolean isPassword(Object var1);

        @Override
        public boolean isScrollable(Object var1);

        @Override
        public boolean isSelected(Object var1);

        @Override
        public boolean isVisibleToUser(Object var1);

        @Override
        public Object obtain();

        @Override
        public Object obtain(View var1);

        @Override
        public Object obtain(View var1, int var2);

        @Override
        public Object obtain(Object var1);

        @Override
        public boolean performAction(Object var1, int var2);

        @Override
        public boolean performAction(Object var1, int var2, Bundle var3);

        @Override
        public void recycle(Object var1);

        @Override
        public void setAccessibilityFocused(Object var1, boolean var2);

        @Override
        public void setBoundsInParent(Object var1, Rect var2);

        @Override
        public void setBoundsInScreen(Object var1, Rect var2);

        @Override
        public void setCheckable(Object var1, boolean var2);

        @Override
        public void setChecked(Object var1, boolean var2);

        @Override
        public void setClassName(Object var1, CharSequence var2);

        @Override
        public void setClickable(Object var1, boolean var2);

        @Override
        public void setContentDescription(Object var1, CharSequence var2);

        @Override
        public void setEnabled(Object var1, boolean var2);

        @Override
        public void setFocusable(Object var1, boolean var2);

        @Override
        public void setFocused(Object var1, boolean var2);

        @Override
        public void setLiveRegion(Object var1, int var2);

        @Override
        public void setLongClickable(Object var1, boolean var2);

        @Override
        public void setMovementGranularities(Object var1, int var2);

        @Override
        public void setPackageName(Object var1, CharSequence var2);

        @Override
        public void setParent(Object var1, View var2);

        @Override
        public void setParent(Object var1, View var2, int var3);

        @Override
        public void setPassword(Object var1, boolean var2);

        @Override
        public void setScrollable(Object var1, boolean var2);

        @Override
        public void setSelected(Object var1, boolean var2);

        @Override
        public void setSource(Object var1, View var2);

        @Override
        public void setSource(Object var1, View var2, int var3);

        @Override
        public void setText(Object var1, CharSequence var2);

        @Override
        public void setViewIdResourceName(Object var1, String var2);

        @Override
        public void setVisibleToUser(Object var1, boolean var2);
    }

}

