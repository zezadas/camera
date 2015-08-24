/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.os.Build;
import android.support.v4.view.MotionEventCompatEclair;
import android.view.MotionEvent;

public class MotionEventCompat {
    public static final int ACTION_HOVER_ENTER = 9;
    public static final int ACTION_HOVER_EXIT = 10;
    public static final int ACTION_HOVER_MOVE = 7;
    public static final int ACTION_MASK = 255;
    public static final int ACTION_POINTER_DOWN = 5;
    public static final int ACTION_POINTER_INDEX_MASK = 65280;
    public static final int ACTION_POINTER_INDEX_SHIFT = 8;
    public static final int ACTION_POINTER_UP = 6;
    public static final int ACTION_SCROLL = 8;
    static final MotionEventVersionImpl IMPL;

    static {
        if (Build.VERSION.SDK_INT >= 5) {
            IMPL = new EclairMotionEventVersionImpl();
            return;
        }
        IMPL = new BaseMotionEventVersionImpl();
    }

    public static int findPointerIndex(MotionEvent motionEvent, int n) {
        return IMPL.findPointerIndex(motionEvent, n);
    }

    public static int getActionIndex(MotionEvent motionEvent) {
        return (motionEvent.getAction() & 65280) >> 8;
    }

    public static int getActionMasked(MotionEvent motionEvent) {
        return motionEvent.getAction() & 255;
    }

    public static int getPointerCount(MotionEvent motionEvent) {
        return IMPL.getPointerCount(motionEvent);
    }

    public static int getPointerId(MotionEvent motionEvent, int n) {
        return IMPL.getPointerId(motionEvent, n);
    }

    public static float getX(MotionEvent motionEvent, int n) {
        return IMPL.getX(motionEvent, n);
    }

    public static float getY(MotionEvent motionEvent, int n) {
        return IMPL.getY(motionEvent, n);
    }

    static class BaseMotionEventVersionImpl
    implements MotionEventVersionImpl {
        BaseMotionEventVersionImpl() {
        }

        @Override
        public int findPointerIndex(MotionEvent motionEvent, int n) {
            if (n == 0) {
                return 0;
            }
            return -1;
        }

        @Override
        public int getPointerCount(MotionEvent motionEvent) {
            return 1;
        }

        @Override
        public int getPointerId(MotionEvent motionEvent, int n) {
            if (n == 0) {
                return 0;
            }
            throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
        }

        @Override
        public float getX(MotionEvent motionEvent, int n) {
            if (n == 0) {
                return motionEvent.getX();
            }
            throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
        }

        @Override
        public float getY(MotionEvent motionEvent, int n) {
            if (n == 0) {
                return motionEvent.getY();
            }
            throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
        }
    }

    static class EclairMotionEventVersionImpl
    implements MotionEventVersionImpl {
        EclairMotionEventVersionImpl() {
        }

        @Override
        public int findPointerIndex(MotionEvent motionEvent, int n) {
            return MotionEventCompatEclair.findPointerIndex(motionEvent, n);
        }

        @Override
        public int getPointerCount(MotionEvent motionEvent) {
            return MotionEventCompatEclair.getPointerCount(motionEvent);
        }

        @Override
        public int getPointerId(MotionEvent motionEvent, int n) {
            return MotionEventCompatEclair.getPointerId(motionEvent, n);
        }

        @Override
        public float getX(MotionEvent motionEvent, int n) {
            return MotionEventCompatEclair.getX(motionEvent, n);
        }

        @Override
        public float getY(MotionEvent motionEvent, int n) {
            return MotionEventCompatEclair.getY(motionEvent, n);
        }
    }

    static interface MotionEventVersionImpl {
        public int findPointerIndex(MotionEvent var1, int var2);

        public int getPointerCount(MotionEvent var1);

        public int getPointerId(MotionEvent var1, int var2);

        public float getX(MotionEvent var1, int var2);

        public float getY(MotionEvent var1, int var2);
    }

}

