/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.os.Build;
import android.support.v4.view.KeyEventCompatEclair;
import android.support.v4.view.KeyEventCompatHoneycomb;
import android.view.KeyEvent;
import android.view.View;

public class KeyEventCompat {
    static final KeyEventVersionImpl IMPL;

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            IMPL = new HoneycombKeyEventVersionImpl();
            return;
        }
        IMPL = new BaseKeyEventVersionImpl();
    }

    public static boolean dispatch(KeyEvent keyEvent, KeyEvent.Callback callback, Object object, Object object2) {
        return IMPL.dispatch(keyEvent, callback, object, object2);
    }

    public static Object getKeyDispatcherState(View view) {
        return IMPL.getKeyDispatcherState(view);
    }

    public static boolean hasModifiers(KeyEvent keyEvent, int n) {
        return IMPL.metaStateHasModifiers(keyEvent.getMetaState(), n);
    }

    public static boolean hasNoModifiers(KeyEvent keyEvent) {
        return IMPL.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    public static boolean isTracking(KeyEvent keyEvent) {
        return IMPL.isTracking(keyEvent);
    }

    public static boolean metaStateHasModifiers(int n, int n2) {
        return IMPL.metaStateHasModifiers(n, n2);
    }

    public static boolean metaStateHasNoModifiers(int n) {
        return IMPL.metaStateHasNoModifiers(n);
    }

    public static int normalizeMetaState(int n) {
        return IMPL.normalizeMetaState(n);
    }

    public static void startTracking(KeyEvent keyEvent) {
        IMPL.startTracking(keyEvent);
    }

    static class BaseKeyEventVersionImpl
    implements KeyEventVersionImpl {
        private static final int META_ALL_MASK = 247;
        private static final int META_MODIFIER_MASK = 247;

        BaseKeyEventVersionImpl() {
        }

        /*
         * Enabled aggressive block sorting
         */
        private static int metaStateFilterDirectionalModifiers(int n, int n2, int n3, int n4, int n5) {
            int n6 = 1;
            boolean bl = (n2 & n3) != 0;
            n2 = (n2 & (n4|=n5)) != 0 ? n6 : 0;
            if (bl) {
                if (n2 == 0) return n & ~ n4;
                throw new IllegalArgumentException("bad arguments");
            }
            n4 = n;
            if (n2 == 0) return n4;
            return n & ~ n3;
        }

        @Override
        public boolean dispatch(KeyEvent keyEvent, KeyEvent.Callback callback, Object object, Object object2) {
            return keyEvent.dispatch(callback);
        }

        @Override
        public Object getKeyDispatcherState(View view) {
            return null;
        }

        @Override
        public boolean isTracking(KeyEvent keyEvent) {
            return false;
        }

        @Override
        public boolean metaStateHasModifiers(int n, int n2) {
            if (BaseKeyEventVersionImpl.metaStateFilterDirectionalModifiers(BaseKeyEventVersionImpl.metaStateFilterDirectionalModifiers(this.normalizeMetaState(n) & 247, n2, 1, 64, 128), n2, 2, 16, 32) == n2) {
                return true;
            }
            return false;
        }

        @Override
        public boolean metaStateHasNoModifiers(int n) {
            if ((this.normalizeMetaState(n) & 247) == 0) {
                return true;
            }
            return false;
        }

        @Override
        public int normalizeMetaState(int n) {
            int n2 = n;
            if ((n & 192) != 0) {
                n2 = n | 1;
            }
            n = n2;
            if ((n2 & 48) != 0) {
                n = n2 | 2;
            }
            return n & 247;
        }

        @Override
        public void startTracking(KeyEvent keyEvent) {
        }
    }

    static class EclairKeyEventVersionImpl
    extends BaseKeyEventVersionImpl {
        EclairKeyEventVersionImpl() {
        }

        @Override
        public boolean dispatch(KeyEvent keyEvent, KeyEvent.Callback callback, Object object, Object object2) {
            return KeyEventCompatEclair.dispatch(keyEvent, callback, object, object2);
        }

        @Override
        public Object getKeyDispatcherState(View view) {
            return KeyEventCompatEclair.getKeyDispatcherState(view);
        }

        @Override
        public boolean isTracking(KeyEvent keyEvent) {
            return KeyEventCompatEclair.isTracking(keyEvent);
        }

        @Override
        public void startTracking(KeyEvent keyEvent) {
            KeyEventCompatEclair.startTracking(keyEvent);
        }
    }

    static class HoneycombKeyEventVersionImpl
    extends EclairKeyEventVersionImpl {
        HoneycombKeyEventVersionImpl() {
        }

        @Override
        public boolean metaStateHasModifiers(int n, int n2) {
            return KeyEventCompatHoneycomb.metaStateHasModifiers(n, n2);
        }

        @Override
        public boolean metaStateHasNoModifiers(int n) {
            return KeyEventCompatHoneycomb.metaStateHasNoModifiers(n);
        }

        @Override
        public int normalizeMetaState(int n) {
            return KeyEventCompatHoneycomb.normalizeMetaState(n);
        }
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

