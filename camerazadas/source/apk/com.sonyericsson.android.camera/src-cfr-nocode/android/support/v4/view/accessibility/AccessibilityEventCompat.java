/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.view.accessibility.AccessibilityEvent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AccessibilityEventCompat {
    private static final AccessibilityEventVersionImpl IMPL;
    public static final int TYPES_ALL_MASK = -1;
    public static final int TYPE_ANNOUNCEMENT = 16384;
    public static final int TYPE_GESTURE_DETECTION_END = 524288;
    public static final int TYPE_GESTURE_DETECTION_START = 262144;
    public static final int TYPE_TOUCH_EXPLORATION_GESTURE_END = 1024;
    public static final int TYPE_TOUCH_EXPLORATION_GESTURE_START = 512;
    public static final int TYPE_TOUCH_INTERACTION_END = 2097152;
    public static final int TYPE_TOUCH_INTERACTION_START = 1048576;
    public static final int TYPE_VIEW_ACCESSIBILITY_FOCUSED = 32768;
    public static final int TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED = 65536;
    public static final int TYPE_VIEW_HOVER_ENTER = 128;
    public static final int TYPE_VIEW_HOVER_EXIT = 256;
    public static final int TYPE_VIEW_SCROLLED = 4096;
    public static final int TYPE_VIEW_TEXT_SELECTION_CHANGED = 8192;
    public static final int TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY = 131072;
    public static final int TYPE_WINDOW_CONTENT_CHANGED = 2048;

    static;

    private AccessibilityEventCompat();

    public static void appendRecord(AccessibilityEvent var0, AccessibilityRecordCompat var1);

    public static AccessibilityRecordCompat asRecord(AccessibilityEvent var0);

    public static AccessibilityRecordCompat getRecord(AccessibilityEvent var0, int var1);

    public static int getRecordCount(AccessibilityEvent var0);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityEventIcsImpl
    extends AccessibilityEventStubImpl {
        AccessibilityEventIcsImpl();

        @Override
        public void appendRecord(AccessibilityEvent var1, Object var2);

        @Override
        public Object getRecord(AccessibilityEvent var1, int var2);

        @Override
        public int getRecordCount(AccessibilityEvent var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class AccessibilityEventStubImpl
    implements AccessibilityEventVersionImpl {
        AccessibilityEventStubImpl();

        @Override
        public void appendRecord(AccessibilityEvent var1, Object var2);

        @Override
        public Object getRecord(AccessibilityEvent var1, int var2);

        @Override
        public int getRecordCount(AccessibilityEvent var1);
    }

    static interface AccessibilityEventVersionImpl {
        public void appendRecord(AccessibilityEvent var1, Object var2);

        public Object getRecord(AccessibilityEvent var1, int var2);

        public int getRecordCount(AccessibilityEvent var1);
    }

}

