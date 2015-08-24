/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.KeyEvent;
import android.view.View;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class KeyEventCompat {
    static final KeyEventVersionImpl IMPL;

    static;

    public KeyEventCompat();

    public static boolean dispatch(KeyEvent var0, KeyEvent.Callback var1, Object var2, Object var3);

    public static Object getKeyDispatcherState(View var0);

    public static boolean hasModifiers(KeyEvent var0, int var1);

    public static boolean hasNoModifiers(KeyEvent var0);

    public static boolean isTracking(KeyEvent var0);

    public static boolean metaStateHasModifiers(int var0, int var1);

    public static boolean metaStateHasNoModifiers(int var0);

    public static int normalizeMetaState(int var0);

    public static void startTracking(KeyEvent var0);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class BaseKeyEventVersionImpl
    implements KeyEventVersionImpl {
        private static final int META_ALL_MASK = 247;
        private static final int META_MODIFIER_MASK = 247;

        BaseKeyEventVersionImpl();

        private static int metaStateFilterDirectionalModifiers(int var0, int var1, int var2, int var3, int var4);

        @Override
        public boolean dispatch(KeyEvent var1, KeyEvent.Callback var2, Object var3, Object var4);

        @Override
        public Object getKeyDispatcherState(View var1);

        @Override
        public boolean isTracking(KeyEvent var1);

        @Override
        public boolean metaStateHasModifiers(int var1, int var2);

        @Override
        public boolean metaStateHasNoModifiers(int var1);

        @Override
        public int normalizeMetaState(int var1);

        @Override
        public void startTracking(KeyEvent var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class EclairKeyEventVersionImpl
    extends BaseKeyEventVersionImpl {
        EclairKeyEventVersionImpl();

        @Override
        public boolean dispatch(KeyEvent var1, KeyEvent.Callback var2, Object var3, Object var4);

        @Override
        public Object getKeyDispatcherState(View var1);

        @Override
        public boolean isTracking(KeyEvent var1);

        @Override
        public void startTracking(KeyEvent var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class HoneycombKeyEventVersionImpl
    extends EclairKeyEventVersionImpl {
        HoneycombKeyEventVersionImpl();

        @Override
        public boolean metaStateHasModifiers(int var1, int var2);

        @Override
        public boolean metaStateHasNoModifiers(int var1);

        @Override
        public int normalizeMetaState(int var1);
    }

    static interface KeyEventVersionImpl {
        public boolean dispatch(KeyEvent var1, KeyEvent.Callback var2, Object var3, Object var4);

        public Object getKeyDispatcherState(View var1);

        public boolean isTracking(KeyEvent var1);

        public boolean metaStateHasModifiers(int var1, int var2);

        public boolean metaStateHasNoModifiers(int var1);

        public int normalizeMetaState(int var1);

        public void startTracking(KeyEvent var1);
    }

}

