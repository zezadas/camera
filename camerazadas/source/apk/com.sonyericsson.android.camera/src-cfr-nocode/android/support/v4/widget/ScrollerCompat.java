/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.view.animation.Interpolator;

/*
 * Exception performing whole class analysis.
 */
public class ScrollerCompat {
    static final int CHASE_FRAME_TIME = 16;
    private static final String TAG = "ScrollerCompat";
    ScrollerCompatImpl mImpl;
    Object mScroller;

    private ScrollerCompat(int var1, Context var2, Interpolator var3);

    ScrollerCompat(Context var1, Interpolator var2);

    public static ScrollerCompat create(Context var0);

    public static ScrollerCompat create(Context var0, Interpolator var1);

    public void abortAnimation();

    public boolean computeScrollOffset();

    public void fling(int var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8);

    public void fling(int var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9, int var10);

    public float getCurrVelocity();

    public int getCurrX();

    public int getCurrY();

    public int getFinalX();

    public int getFinalY();

    public boolean isFinished();

    public boolean isOverScrolled();

    public void notifyHorizontalEdgeReached(int var1, int var2, int var3);

    public void notifyVerticalEdgeReached(int var1, int var2, int var3);

    public void startScroll(int var1, int var2, int var3, int var4);

    public void startScroll(int var1, int var2, int var3, int var4, int var5);

    static interface ScrollerCompatImpl {
        public void abortAnimation(Object var1);

        public boolean computeScrollOffset(Object var1);

        public Object createScroller(Context var1, Interpolator var2);

        public void fling(Object var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9);

        public void fling(Object var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9, int var10, int var11);

        public float getCurrVelocity(Object var1);

        public int getCurrX(Object var1);

        public int getCurrY(Object var1);

        public int getFinalX(Object var1);

        public int getFinalY(Object var1);

        public boolean isFinished(Object var1);

        public boolean isOverScrolled(Object var1);

        public void notifyHorizontalEdgeReached(Object var1, int var2, int var3, int var4);

        public void notifyVerticalEdgeReached(Object var1, int var2, int var3, int var4);

        public void startScroll(Object var1, int var2, int var3, int var4, int var5);

        public void startScroll(Object var1, int var2, int var3, int var4, int var5, int var6);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ScrollerCompatImplBase
    implements ScrollerCompatImpl {
        ScrollerCompatImplBase();

        @Override
        public void abortAnimation(Object var1);

        @Override
        public boolean computeScrollOffset(Object var1);

        @Override
        public Object createScroller(Context var1, Interpolator var2);

        @Override
        public void fling(Object var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9);

        @Override
        public void fling(Object var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9, int var10, int var11);

        @Override
        public float getCurrVelocity(Object var1);

        @Override
        public int getCurrX(Object var1);

        @Override
        public int getCurrY(Object var1);

        @Override
        public int getFinalX(Object var1);

        @Override
        public int getFinalY(Object var1);

        @Override
        public boolean isFinished(Object var1);

        @Override
        public boolean isOverScrolled(Object var1);

        @Override
        public void notifyHorizontalEdgeReached(Object var1, int var2, int var3, int var4);

        @Override
        public void notifyVerticalEdgeReached(Object var1, int var2, int var3, int var4);

        @Override
        public void startScroll(Object var1, int var2, int var3, int var4, int var5);

        @Override
        public void startScroll(Object var1, int var2, int var3, int var4, int var5, int var6);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ScrollerCompatImplGingerbread
    implements ScrollerCompatImpl {
        ScrollerCompatImplGingerbread();

        @Override
        public void abortAnimation(Object var1);

        @Override
        public boolean computeScrollOffset(Object var1);

        @Override
        public Object createScroller(Context var1, Interpolator var2);

        @Override
        public void fling(Object var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9);

        @Override
        public void fling(Object var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9, int var10, int var11);

        @Override
        public float getCurrVelocity(Object var1);

        @Override
        public int getCurrX(Object var1);

        @Override
        public int getCurrY(Object var1);

        @Override
        public int getFinalX(Object var1);

        @Override
        public int getFinalY(Object var1);

        @Override
        public boolean isFinished(Object var1);

        @Override
        public boolean isOverScrolled(Object var1);

        @Override
        public void notifyHorizontalEdgeReached(Object var1, int var2, int var3, int var4);

        @Override
        public void notifyVerticalEdgeReached(Object var1, int var2, int var3, int var4);

        @Override
        public void startScroll(Object var1, int var2, int var3, int var4, int var5);

        @Override
        public void startScroll(Object var1, int var2, int var3, int var4, int var5, int var6);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ScrollerCompatImplIcs
    extends ScrollerCompatImplGingerbread {
        ScrollerCompatImplIcs();

        @Override
        public float getCurrVelocity(Object var1);
    }

}

