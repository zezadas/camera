/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.os.Parcelable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AccessibilityRecordCompat {
    private static final AccessibilityRecordImpl IMPL;
    private final Object mRecord;

    static;

    public AccessibilityRecordCompat(Object var1);

    public static AccessibilityRecordCompat obtain();

    public static AccessibilityRecordCompat obtain(AccessibilityRecordCompat var0);

    public boolean equals(Object var1);

    public int getAddedCount();

    public CharSequence getBeforeText();

    public CharSequence getClassName();

    public CharSequence getContentDescription();

    public int getCurrentItemIndex();

    public int getFromIndex();

    public Object getImpl();

    public int getItemCount();

    public int getMaxScrollX();

    public int getMaxScrollY();

    public Parcelable getParcelableData();

    public int getRemovedCount();

    public int getScrollX();

    public int getScrollY();

    public AccessibilityNodeInfoCompat getSource();

    public List<CharSequence> getText();

    public int getToIndex();

    public int getWindowId();

    public int hashCode();

    public boolean isChecked();

    public boolean isEnabled();

    public boolean isFullScreen();

    public boolean isPassword();

    public boolean isScrollable();

    public void recycle();

    public void setAddedCount(int var1);

    public void setBeforeText(CharSequence var1);

    public void setChecked(boolean var1);

    public void setClassName(CharSequence var1);

    public void setContentDescription(CharSequence var1);

    public void setCurrentItemIndex(int var1);

    public void setEnabled(boolean var1);

    public void setFromIndex(int var1);

    public void setFullScreen(boolean var1);

    public void setItemCount(int var1);

    public void setMaxScrollX(int var1);

    public void setMaxScrollY(int var1);

    public void setParcelableData(Parcelable var1);

    public void setPassword(boolean var1);

    public void setRemovedCount(int var1);

    public void setScrollX(int var1);

    public void setScrollY(int var1);

    public void setScrollable(boolean var1);

    public void setSource(View var1);

    public void setSource(View var1, int var2);

    public void setToIndex(int var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityRecordIcsImpl
    extends AccessibilityRecordStubImpl {
        AccessibilityRecordIcsImpl();

        @Override
        public int getAddedCount(Object var1);

        @Override
        public CharSequence getBeforeText(Object var1);

        @Override
        public CharSequence getClassName(Object var1);

        @Override
        public CharSequence getContentDescription(Object var1);

        @Override
        public int getCurrentItemIndex(Object var1);

        @Override
        public int getFromIndex(Object var1);

        @Override
        public int getItemCount(Object var1);

        @Override
        public Parcelable getParcelableData(Object var1);

        @Override
        public int getRemovedCount(Object var1);

        @Override
        public int getScrollX(Object var1);

        @Override
        public int getScrollY(Object var1);

        @Override
        public AccessibilityNodeInfoCompat getSource(Object var1);

        @Override
        public List<CharSequence> getText(Object var1);

        @Override
        public int getToIndex(Object var1);

        @Override
        public int getWindowId(Object var1);

        @Override
        public boolean isChecked(Object var1);

        @Override
        public boolean isEnabled(Object var1);

        @Override
        public boolean isFullScreen(Object var1);

        @Override
        public boolean isPassword(Object var1);

        @Override
        public boolean isScrollable(Object var1);

        @Override
        public Object obtain();

        @Override
        public Object obtain(Object var1);

        @Override
        public void recycle(Object var1);

        @Override
        public void setAddedCount(Object var1, int var2);

        @Override
        public void setBeforeText(Object var1, CharSequence var2);

        @Override
        public void setChecked(Object var1, boolean var2);

        @Override
        public void setClassName(Object var1, CharSequence var2);

        @Override
        public void setContentDescription(Object var1, CharSequence var2);

        @Override
        public void setCurrentItemIndex(Object var1, int var2);

        @Override
        public void setEnabled(Object var1, boolean var2);

        @Override
        public void setFromIndex(Object var1, int var2);

        @Override
        public void setFullScreen(Object var1, boolean var2);

        @Override
        public void setItemCount(Object var1, int var2);

        @Override
        public void setParcelableData(Object var1, Parcelable var2);

        @Override
        public void setPassword(Object var1, boolean var2);

        @Override
        public void setRemovedCount(Object var1, int var2);

        @Override
        public void setScrollX(Object var1, int var2);

        @Override
        public void setScrollY(Object var1, int var2);

        @Override
        public void setScrollable(Object var1, boolean var2);

        @Override
        public void setSource(Object var1, View var2);

        @Override
        public void setToIndex(Object var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityRecordIcsMr1Impl
    extends AccessibilityRecordIcsImpl {
        AccessibilityRecordIcsMr1Impl();

        @Override
        public int getMaxScrollX(Object var1);

        @Override
        public int getMaxScrollY(Object var1);

        @Override
        public void setMaxScrollX(Object var1, int var2);

        @Override
        public void setMaxScrollY(Object var1, int var2);
    }

    static interface AccessibilityRecordImpl {
        public int getAddedCount(Object var1);

        public CharSequence getBeforeText(Object var1);

        public CharSequence getClassName(Object var1);

        public CharSequence getContentDescription(Object var1);

        public int getCurrentItemIndex(Object var1);

        public int getFromIndex(Object var1);

        public int getItemCount(Object var1);

        public int getMaxScrollX(Object var1);

        public int getMaxScrollY(Object var1);

        public Parcelable getParcelableData(Object var1);

        public int getRemovedCount(Object var1);

        public int getScrollX(Object var1);

        public int getScrollY(Object var1);

        public AccessibilityNodeInfoCompat getSource(Object var1);

        public List<CharSequence> getText(Object var1);

        public int getToIndex(Object var1);

        public int getWindowId(Object var1);

        public boolean isChecked(Object var1);

        public boolean isEnabled(Object var1);

        public boolean isFullScreen(Object var1);

        public boolean isPassword(Object var1);

        public boolean isScrollable(Object var1);

        public Object obtain();

        public Object obtain(Object var1);

        public void recycle(Object var1);

        public void setAddedCount(Object var1, int var2);

        public void setBeforeText(Object var1, CharSequence var2);

        public void setChecked(Object var1, boolean var2);

        public void setClassName(Object var1, CharSequence var2);

        public void setContentDescription(Object var1, CharSequence var2);

        public void setCurrentItemIndex(Object var1, int var2);

        public void setEnabled(Object var1, boolean var2);

        public void setFromIndex(Object var1, int var2);

        public void setFullScreen(Object var1, boolean var2);

        public void setItemCount(Object var1, int var2);

        public void setMaxScrollX(Object var1, int var2);

        public void setMaxScrollY(Object var1, int var2);

        public void setParcelableData(Object var1, Parcelable var2);

        public void setPassword(Object var1, boolean var2);

        public void setRemovedCount(Object var1, int var2);

        public void setScrollX(Object var1, int var2);

        public void setScrollY(Object var1, int var2);

        public void setScrollable(Object var1, boolean var2);

        public void setSource(Object var1, View var2);

        public void setSource(Object var1, View var2, int var3);

        public void setToIndex(Object var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityRecordJellyBeanImpl
    extends AccessibilityRecordIcsMr1Impl {
        AccessibilityRecordJellyBeanImpl();

        @Override
        public void setSource(Object var1, View var2, int var3);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityRecordStubImpl
    implements AccessibilityRecordImpl {
        AccessibilityRecordStubImpl();

        @Override
        public int getAddedCount(Object var1);

        @Override
        public CharSequence getBeforeText(Object var1);

        @Override
        public CharSequence getClassName(Object var1);

        @Override
        public CharSequence getContentDescription(Object var1);

        @Override
        public int getCurrentItemIndex(Object var1);

        @Override
        public int getFromIndex(Object var1);

        @Override
        public int getItemCount(Object var1);

        @Override
        public int getMaxScrollX(Object var1);

        @Override
        public int getMaxScrollY(Object var1);

        @Override
        public Parcelable getParcelableData(Object var1);

        @Override
        public int getRemovedCount(Object var1);

        @Override
        public int getScrollX(Object var1);

        @Override
        public int getScrollY(Object var1);

        @Override
        public AccessibilityNodeInfoCompat getSource(Object var1);

        @Override
        public List<CharSequence> getText(Object var1);

        @Override
        public int getToIndex(Object var1);

        @Override
        public int getWindowId(Object var1);

        @Override
        public boolean isChecked(Object var1);

        @Override
        public boolean isEnabled(Object var1);

        @Override
        public boolean isFullScreen(Object var1);

        @Override
        public boolean isPassword(Object var1);

        @Override
        public boolean isScrollable(Object var1);

        @Override
        public Object obtain();

        @Override
        public Object obtain(Object var1);

        @Override
        public void recycle(Object var1);

        @Override
        public void setAddedCount(Object var1, int var2);

        @Override
        public void setBeforeText(Object var1, CharSequence var2);

        @Override
        public void setChecked(Object var1, boolean var2);

        @Override
        public void setClassName(Object var1, CharSequence var2);

        @Override
        public void setContentDescription(Object var1, CharSequence var2);

        @Override
        public void setCurrentItemIndex(Object var1, int var2);

        @Override
        public void setEnabled(Object var1, boolean var2);

        @Override
        public void setFromIndex(Object var1, int var2);

        @Override
        public void setFullScreen(Object var1, boolean var2);

        @Override
        public void setItemCount(Object var1, int var2);

        @Override
        public void setMaxScrollX(Object var1, int var2);

        @Override
        public void setMaxScrollY(Object var1, int var2);

        @Override
        public void setParcelableData(Object var1, Parcelable var2);

        @Override
        public void setPassword(Object var1, boolean var2);

        @Override
        public void setRemovedCount(Object var1, int var2);

        @Override
        public void setScrollX(Object var1, int var2);

        @Override
        public void setScrollY(Object var1, int var2);

        @Override
        public void setScrollable(Object var1, boolean var2);

        @Override
        public void setSource(Object var1, View var2);

        @Override
        public void setSource(Object var1, View var2, int var3);

        @Override
        public void setToIndex(Object var1, int var2);
    }

}

