/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.os.Build;
import android.os.Parcelable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompatIcs;
import android.support.v4.view.accessibility.AccessibilityRecordCompatIcsMr1;
import android.support.v4.view.accessibility.AccessibilityRecordCompatJellyBean;
import android.view.View;
import java.util.Collections;
import java.util.List;

public class AccessibilityRecordCompat {
    private static final AccessibilityRecordImpl IMPL;
    private final Object mRecord;

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            IMPL = new AccessibilityRecordJellyBeanImpl();
            return;
        }
        if (Build.VERSION.SDK_INT >= 15) {
            IMPL = new AccessibilityRecordIcsMr1Impl();
            return;
        }
        if (Build.VERSION.SDK_INT >= 14) {
            IMPL = new AccessibilityRecordIcsImpl();
            return;
        }
        IMPL = new AccessibilityRecordStubImpl();
    }

    public AccessibilityRecordCompat(Object object) {
        this.mRecord = object;
    }

    public static AccessibilityRecordCompat obtain() {
        return new AccessibilityRecordCompat(IMPL.obtain());
    }

    public static AccessibilityRecordCompat obtain(AccessibilityRecordCompat accessibilityRecordCompat) {
        return new AccessibilityRecordCompat(IMPL.obtain(accessibilityRecordCompat.mRecord));
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null) {
            return false;
        }
        if (this.getClass() != object.getClass()) {
            return false;
        }
        object = (AccessibilityRecordCompat)object;
        if (this.mRecord == null) {
            if (object.mRecord == null) return true;
            return false;
        }
        if (!this.mRecord.equals(object.mRecord)) return false;
        return true;
    }

    public int getAddedCount() {
        return IMPL.getAddedCount(this.mRecord);
    }

    public CharSequence getBeforeText() {
        return IMPL.getBeforeText(this.mRecord);
    }

    public CharSequence getClassName() {
        return IMPL.getClassName(this.mRecord);
    }

    public CharSequence getContentDescription() {
        return IMPL.getContentDescription(this.mRecord);
    }

    public int getCurrentItemIndex() {
        return IMPL.getCurrentItemIndex(this.mRecord);
    }

    public int getFromIndex() {
        return IMPL.getFromIndex(this.mRecord);
    }

    public Object getImpl() {
        return this.mRecord;
    }

    public int getItemCount() {
        return IMPL.getItemCount(this.mRecord);
    }

    public int getMaxScrollX() {
        return IMPL.getMaxScrollX(this.mRecord);
    }

    public int getMaxScrollY() {
        return IMPL.getMaxScrollY(this.mRecord);
    }

    public Parcelable getParcelableData() {
        return IMPL.getParcelableData(this.mRecord);
    }

    public int getRemovedCount() {
        return IMPL.getRemovedCount(this.mRecord);
    }

    public int getScrollX() {
        return IMPL.getScrollX(this.mRecord);
    }

    public int getScrollY() {
        return IMPL.getScrollY(this.mRecord);
    }

    public AccessibilityNodeInfoCompat getSource() {
        return IMPL.getSource(this.mRecord);
    }

    public List<CharSequence> getText() {
        return IMPL.getText(this.mRecord);
    }

    public int getToIndex() {
        return IMPL.getToIndex(this.mRecord);
    }

    public int getWindowId() {
        return IMPL.getWindowId(this.mRecord);
    }

    public int hashCode() {
        if (this.mRecord == null) {
            return 0;
        }
        return this.mRecord.hashCode();
    }

    public boolean isChecked() {
        return IMPL.isChecked(this.mRecord);
    }

    public boolean isEnabled() {
        return IMPL.isEnabled(this.mRecord);
    }

    public boolean isFullScreen() {
        return IMPL.isFullScreen(this.mRecord);
    }

    public boolean isPassword() {
        return IMPL.isPassword(this.mRecord);
    }

    public boolean isScrollable() {
        return IMPL.isScrollable(this.mRecord);
    }

    public void recycle() {
        IMPL.recycle(this.mRecord);
    }

    public void setAddedCount(int n) {
        IMPL.setAddedCount(this.mRecord, n);
    }

    public void setBeforeText(CharSequence charSequence) {
        IMPL.setBeforeText(this.mRecord, charSequence);
    }

    public void setChecked(boolean bl) {
        IMPL.setChecked(this.mRecord, bl);
    }

    public void setClassName(CharSequence charSequence) {
        IMPL.setClassName(this.mRecord, charSequence);
    }

    public void setContentDescription(CharSequence charSequence) {
        IMPL.setContentDescription(this.mRecord, charSequence);
    }

    public void setCurrentItemIndex(int n) {
        IMPL.setCurrentItemIndex(this.mRecord, n);
    }

    public void setEnabled(boolean bl) {
        IMPL.setEnabled(this.mRecord, bl);
    }

    public void setFromIndex(int n) {
        IMPL.setFromIndex(this.mRecord, n);
    }

    public void setFullScreen(boolean bl) {
        IMPL.setFullScreen(this.mRecord, bl);
    }

    public void setItemCount(int n) {
        IMPL.setItemCount(this.mRecord, n);
    }

    public void setMaxScrollX(int n) {
        IMPL.setMaxScrollX(this.mRecord, n);
    }

    public void setMaxScrollY(int n) {
        IMPL.setMaxScrollY(this.mRecord, n);
    }

    public void setParcelableData(Parcelable parcelable) {
        IMPL.setParcelableData(this.mRecord, parcelable);
    }

    public void setPassword(boolean bl) {
        IMPL.setPassword(this.mRecord, bl);
    }

    public void setRemovedCount(int n) {
        IMPL.setRemovedCount(this.mRecord, n);
    }

    public void setScrollX(int n) {
        IMPL.setScrollX(this.mRecord, n);
    }

    public void setScrollY(int n) {
        IMPL.setScrollY(this.mRecord, n);
    }

    public void setScrollable(boolean bl) {
        IMPL.setScrollable(this.mRecord, bl);
    }

    public void setSource(View view) {
        IMPL.setSource(this.mRecord, view);
    }

    public void setSource(View view, int n) {
        IMPL.setSource(this.mRecord, view, n);
    }

    public void setToIndex(int n) {
        IMPL.setToIndex(this.mRecord, n);
    }

    static class AccessibilityRecordIcsImpl
    extends AccessibilityRecordStubImpl {
        AccessibilityRecordIcsImpl() {
        }

        @Override
        public int getAddedCount(Object object) {
            return AccessibilityRecordCompatIcs.getAddedCount(object);
        }

        @Override
        public CharSequence getBeforeText(Object object) {
            return AccessibilityRecordCompatIcs.getBeforeText(object);
        }

        @Override
        public CharSequence getClassName(Object object) {
            return AccessibilityRecordCompatIcs.getClassName(object);
        }

        @Override
        public CharSequence getContentDescription(Object object) {
            return AccessibilityRecordCompatIcs.getContentDescription(object);
        }

        @Override
        public int getCurrentItemIndex(Object object) {
            return AccessibilityRecordCompatIcs.getCurrentItemIndex(object);
        }

        @Override
        public int getFromIndex(Object object) {
            return AccessibilityRecordCompatIcs.getFromIndex(object);
        }

        @Override
        public int getItemCount(Object object) {
            return AccessibilityRecordCompatIcs.getItemCount(object);
        }

        @Override
        public Parcelable getParcelableData(Object object) {
            return AccessibilityRecordCompatIcs.getParcelableData(object);
        }

        @Override
        public int getRemovedCount(Object object) {
            return AccessibilityRecordCompatIcs.getRemovedCount(object);
        }

        @Override
        public int getScrollX(Object object) {
            return AccessibilityRecordCompatIcs.getScrollX(object);
        }

        @Override
        public int getScrollY(Object object) {
            return AccessibilityRecordCompatIcs.getScrollY(object);
        }

        @Override
        public AccessibilityNodeInfoCompat getSource(Object object) {
            return AccessibilityNodeInfoCompat.wrapNonNullInstance(AccessibilityRecordCompatIcs.getSource(object));
        }

        @Override
        public List<CharSequence> getText(Object object) {
            return AccessibilityRecordCompatIcs.getText(object);
        }

        @Override
        public int getToIndex(Object object) {
            return AccessibilityRecordCompatIcs.getToIndex(object);
        }

        @Override
        public int getWindowId(Object object) {
            return AccessibilityRecordCompatIcs.getWindowId(object);
        }

        @Override
        public boolean isChecked(Object object) {
            return AccessibilityRecordCompatIcs.isChecked(object);
        }

        @Override
        public boolean isEnabled(Object object) {
            return AccessibilityRecordCompatIcs.isEnabled(object);
        }

        @Override
        public boolean isFullScreen(Object object) {
            return AccessibilityRecordCompatIcs.isFullScreen(object);
        }

        @Override
        public boolean isPassword(Object object) {
            return AccessibilityRecordCompatIcs.isPassword(object);
        }

        @Override
        public boolean isScrollable(Object object) {
            return AccessibilityRecordCompatIcs.isScrollable(object);
        }

        @Override
        public Object obtain() {
            return AccessibilityRecordCompatIcs.obtain();
        }

        @Override
        public Object obtain(Object object) {
            return AccessibilityRecordCompatIcs.obtain(object);
        }

        @Override
        public void recycle(Object object) {
            AccessibilityRecordCompatIcs.recycle(object);
        }

        @Override
        public void setAddedCount(Object object, int n) {
            AccessibilityRecordCompatIcs.setAddedCount(object, n);
        }

        @Override
        public void setBeforeText(Object object, CharSequence charSequence) {
            AccessibilityRecordCompatIcs.setBeforeText(object, charSequence);
        }

        @Override
        public void setChecked(Object object, boolean bl) {
            AccessibilityRecordCompatIcs.setChecked(object, bl);
        }

        @Override
        public void setClassName(Object object, CharSequence charSequence) {
            AccessibilityRecordCompatIcs.setClassName(object, charSequence);
        }

        @Override
        public void setContentDescription(Object object, CharSequence charSequence) {
            AccessibilityRecordCompatIcs.setContentDescription(object, charSequence);
        }

        @Override
        public void setCurrentItemIndex(Object object, int n) {
            AccessibilityRecordCompatIcs.setCurrentItemIndex(object, n);
        }

        @Override
        public void setEnabled(Object object, boolean bl) {
            AccessibilityRecordCompatIcs.setEnabled(object, bl);
        }

        @Override
        public void setFromIndex(Object object, int n) {
            AccessibilityRecordCompatIcs.setFromIndex(object, n);
        }

        @Override
        public void setFullScreen(Object object, boolean bl) {
            AccessibilityRecordCompatIcs.setFullScreen(object, bl);
        }

        @Override
        public void setItemCount(Object object, int n) {
            AccessibilityRecordCompatIcs.setItemCount(object, n);
        }

        @Override
        public void setParcelableData(Object object, Parcelable parcelable) {
            AccessibilityRecordCompatIcs.setParcelableData(object, parcelable);
        }

        @Override
        public void setPassword(Object object, boolean bl) {
            AccessibilityRecordCompatIcs.setPassword(object, bl);
        }

        @Override
        public void setRemovedCount(Object object, int n) {
            AccessibilityRecordCompatIcs.setRemovedCount(object, n);
        }

        @Override
        public void setScrollX(Object object, int n) {
            AccessibilityRecordCompatIcs.setScrollX(object, n);
        }

        @Override
        public void setScrollY(Object object, int n) {
            AccessibilityRecordCompatIcs.setScrollY(object, n);
        }

        @Override
        public void setScrollable(Object object, boolean bl) {
            AccessibilityRecordCompatIcs.setScrollable(object, bl);
        }

        @Override
        public void setSource(Object object, View view) {
            AccessibilityRecordCompatIcs.setSource(object, view);
        }

        @Override
        public void setToIndex(Object object, int n) {
            AccessibilityRecordCompatIcs.setToIndex(object, n);
        }
    }

    static class AccessibilityRecordIcsMr1Impl
    extends AccessibilityRecordIcsImpl {
        AccessibilityRecordIcsMr1Impl() {
        }

        @Override
        public int getMaxScrollX(Object object) {
            return AccessibilityRecordCompatIcsMr1.getMaxScrollX(object);
        }

        @Override
        public int getMaxScrollY(Object object) {
            return AccessibilityRecordCompatIcsMr1.getMaxScrollY(object);
        }

        @Override
        public void setMaxScrollX(Object object, int n) {
            AccessibilityRecordCompatIcsMr1.setMaxScrollX(object, n);
        }

        @Override
        public void setMaxScrollY(Object object, int n) {
            AccessibilityRecordCompatIcsMr1.setMaxScrollY(object, n);
        }
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

    static class AccessibilityRecordJellyBeanImpl
    extends AccessibilityRecordIcsMr1Impl {
        AccessibilityRecordJellyBeanImpl() {
        }

        @Override
        public void setSource(Object object, View view, int n) {
            AccessibilityRecordCompatJellyBean.setSource(object, view, n);
        }
    }

    static class AccessibilityRecordStubImpl
    implements AccessibilityRecordImpl {
        AccessibilityRecordStubImpl() {
        }

        @Override
        public int getAddedCount(Object object) {
            return 0;
        }

        @Override
        public CharSequence getBeforeText(Object object) {
            return null;
        }

        @Override
        public CharSequence getClassName(Object object) {
            return null;
        }

        @Override
        public CharSequence getContentDescription(Object object) {
            return null;
        }

        @Override
        public int getCurrentItemIndex(Object object) {
            return 0;
        }

        @Override
        public int getFromIndex(Object object) {
            return 0;
        }

        @Override
        public int getItemCount(Object object) {
            return 0;
        }

        @Override
        public int getMaxScrollX(Object object) {
            return 0;
        }

        @Override
        public int getMaxScrollY(Object object) {
            return 0;
        }

        @Override
        public Parcelable getParcelableData(Object object) {
            return null;
        }

        @Override
        public int getRemovedCount(Object object) {
            return 0;
        }

        @Override
        public int getScrollX(Object object) {
            return 0;
        }

        @Override
        public int getScrollY(Object object) {
            return 0;
        }

        @Override
        public AccessibilityNodeInfoCompat getSource(Object object) {
            return null;
        }

        @Override
        public List<CharSequence> getText(Object object) {
            return Collections.emptyList();
        }

        @Override
        public int getToIndex(Object object) {
            return 0;
        }

        @Override
        public int getWindowId(Object object) {
            return 0;
        }

        @Override
        public boolean isChecked(Object object) {
            return false;
        }

        @Override
        public boolean isEnabled(Object object) {
            return false;
        }

        @Override
        public boolean isFullScreen(Object object) {
            return false;
        }

        @Override
        public boolean isPassword(Object object) {
            return false;
        }

        @Override
        public boolean isScrollable(Object object) {
            return false;
        }

        @Override
        public Object obtain() {
            return null;
        }

        @Override
        public Object obtain(Object object) {
            return null;
        }

        @Override
        public void recycle(Object object) {
        }

        @Override
        public void setAddedCount(Object object, int n) {
        }

        @Override
        public void setBeforeText(Object object, CharSequence charSequence) {
        }

        @Override
        public void setChecked(Object object, boolean bl) {
        }

        @Override
        public void setClassName(Object object, CharSequence charSequence) {
        }

        @Override
        public void setContentDescription(Object object, CharSequence charSequence) {
        }

        @Override
        public void setCurrentItemIndex(Object object, int n) {
        }

        @Override
        public void setEnabled(Object object, boolean bl) {
        }

        @Override
        public void setFromIndex(Object object, int n) {
        }

        @Override
        public void setFullScreen(Object object, boolean bl) {
        }

        @Override
        public void setItemCount(Object object, int n) {
        }

        @Override
        public void setMaxScrollX(Object object, int n) {
        }

        @Override
        public void setMaxScrollY(Object object, int n) {
        }

        @Override
        public void setParcelableData(Object object, Parcelable parcelable) {
        }

        @Override
        public void setPassword(Object object, boolean bl) {
        }

        @Override
        public void setRemovedCount(Object object, int n) {
        }

        @Override
        public void setScrollX(Object object, int n) {
        }

        @Override
        public void setScrollY(Object object, int n) {
        }

        @Override
        public void setScrollable(Object object, boolean bl) {
        }

        @Override
        public void setSource(Object object, View view) {
        }

        @Override
        public void setSource(Object object, View view, int n) {
        }

        @Override
        public void setToIndex(Object object, int n) {
        }
    }

}

