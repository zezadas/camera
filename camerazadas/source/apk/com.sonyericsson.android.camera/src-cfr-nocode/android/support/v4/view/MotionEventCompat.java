/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.MotionEvent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    static;

    public MotionEventCompat();

    public static int findPointerIndex(MotionEvent var0, int var1);

    public static int getActionIndex(MotionEvent var0);

    public static int getActionMasked(MotionEvent var0);

    public static int getPointerCount(MotionEvent var0);

    public static int getPointerId(MotionEvent var0, int var1);

    public static float getX(MotionEvent var0, int var1);

    public static float getY(MotionEvent var0, int var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class BaseMotionEventVersionImpl
    implements MotionEventVersionImpl {
        BaseMotionEventVersionImpl();

        @Override
        public int findPointerIndex(MotionEvent var1, int var2);

        @Override
        public int getPointerCount(MotionEvent var1);

        @Override
        public int getPointerId(MotionEvent var1, int var2);

        @Override
        public float getX(MotionEvent var1, int var2);

        @Override
        public float getY(MotionEvent var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class EclairMotionEventVersionImpl
    implements MotionEventVersionImpl {
        EclairMotionEventVersionImpl();

        @Override
        public int findPointerIndex(MotionEvent var1, int var2);

        @Override
        public int getPointerCount(MotionEvent var1);

        @Override
        public int getPointerId(MotionEvent var1, int var2);

        @Override
        public float getX(MotionEvent var1, int var2);

        @Override
        public float getY(MotionEvent var1, int var2);
    }

    static interface MotionEventVersionImpl {
        public int findPointerIndex(MotionEvent var1, int var2);

        public int getPointerCount(MotionEvent var1);

        public int getPointerId(MotionEvent var1, int var2);

        public float getX(MotionEvent var1, int var2);

        public float getY(MotionEvent var1, int var2);
    }

}

