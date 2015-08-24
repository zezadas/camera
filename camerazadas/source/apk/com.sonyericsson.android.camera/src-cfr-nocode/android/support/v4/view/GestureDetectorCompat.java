/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;

/*
 * Exception performing whole class analysis.
 */
public class GestureDetectorCompat {
    private final GestureDetectorCompatImpl mImpl;

    public GestureDetectorCompat(Context var1, GestureDetector.OnGestureListener var2);

    public GestureDetectorCompat(Context var1, GestureDetector.OnGestureListener var2, Handler var3);

    public boolean isLongpressEnabled();

    public boolean onTouchEvent(MotionEvent var1);

    public void setIsLongpressEnabled(boolean var1);

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener var1);

    static interface GestureDetectorCompatImpl {
        public boolean isLongpressEnabled();

        public boolean onTouchEvent(MotionEvent var1);

        public void setIsLongpressEnabled(boolean var1);

        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class GestureDetectorCompatImplBase
    implements GestureDetectorCompatImpl {
        private static final int DOUBLE_TAP_TIMEOUT;
        private static final int LONGPRESS_TIMEOUT;
        private static final int LONG_PRESS = 2;
        private static final int SHOW_PRESS = 1;
        private static final int TAP = 3;
        private static final int TAP_TIMEOUT;
        private boolean mAlwaysInBiggerTapRegion;
        private boolean mAlwaysInTapRegion;
        private MotionEvent mCurrentDownEvent;
        private boolean mDeferConfirmSingleTap;
        private GestureDetector.OnDoubleTapListener mDoubleTapListener;
        private int mDoubleTapSlopSquare;
        private float mDownFocusX;
        private float mDownFocusY;
        private final Handler mHandler;
        private boolean mInLongPress;
        private boolean mIsDoubleTapping;
        private boolean mIsLongpressEnabled;
        private float mLastFocusX;
        private float mLastFocusY;
        private final GestureDetector.OnGestureListener mListener;
        private int mMaximumFlingVelocity;
        private int mMinimumFlingVelocity;
        private MotionEvent mPreviousUpEvent;
        private boolean mStillDown;
        private int mTouchSlopSquare;
        private VelocityTracker mVelocityTracker;

        static;

        public GestureDetectorCompatImplBase(Context var1, GestureDetector.OnGestureListener var2, Handler var3);

        static /* synthetic */ MotionEvent access$000(GestureDetectorCompatImplBase var0);

        static /* synthetic */ GestureDetector.OnGestureListener access$100(GestureDetectorCompatImplBase var0);

        static /* synthetic */ void access$200(GestureDetectorCompatImplBase var0);

        static /* synthetic */ GestureDetector.OnDoubleTapListener access$300(GestureDetectorCompatImplBase var0);

        static /* synthetic */ boolean access$400(GestureDetectorCompatImplBase var0);

        static /* synthetic */ boolean access$502(GestureDetectorCompatImplBase var0, boolean var1);

        private void cancel();

        private void cancelTaps();

        private void dispatchLongPress();

        private void init(Context var1);

        private boolean isConsideredDoubleTap(MotionEvent var1, MotionEvent var2, MotionEvent var3);

        @Override
        public boolean isLongpressEnabled();

        @Override
        public boolean onTouchEvent(MotionEvent var1);

        @Override
        public void setIsLongpressEnabled(boolean var1);

        @Override
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener var1);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class GestureHandler
        extends Handler {
            final /* synthetic */ GestureDetectorCompatImplBase this$0;

            GestureHandler(GestureDetectorCompatImplBase var1);

            GestureHandler(GestureDetectorCompatImplBase var1, Handler var2);

            @Override
            public void handleMessage(Message var1);
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class GestureDetectorCompatImplJellybeanMr2
    implements GestureDetectorCompatImpl {
        private final GestureDetector mDetector;

        public GestureDetectorCompatImplJellybeanMr2(Context var1, GestureDetector.OnGestureListener var2, Handler var3);

        @Override
        public boolean isLongpressEnabled();

        @Override
        public boolean onTouchEvent(MotionEvent var1);

        @Override
        public void setIsLongpressEnabled(boolean var1);

        @Override
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener var1);
    }

}

