/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.interaction;

import android.content.Context;
import android.graphics.Point;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector;
import com.sonyericsson.cameracommon.interaction.TouchScaleAndRotateDetector;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TouchActionTranslator
implements TouchMoveAndStopDetector.TouchStopDetectorListener,
TouchScaleAndRotateDetector.ScaleAndRotateDetectorListener,
GestureDetector.OnGestureListener {
    private static final TouchActionListener NULL_LISTENER;
    static final String TAG = "TouchActionTranslator";
    private GestureDetector mAndroidGestureDetector;
    private TouchActionListener mClientListener;
    private Context mContext;
    private InteractionState mCurrentInteractionState;
    private TouchScaleAndRotateDetector mDoubleTouchScaleAndRotateDetector;
    private boolean mIsAllTouchEventInTargetArea;
    private final int mMargin;
    private TouchMoveAndStopDetector mSingleTouchMoveAndStopDetector;
    private View mTargetView;
    private final int mTouchSlop;

    static;

    public TouchActionTranslator(Context var1, View var2);

    public TouchActionTranslator(Context var1, View var2, int var3);

    public TouchActionTranslator(Context var1, View var2, int var3, int var4);

    static /* synthetic */ TouchScaleAndRotateDetector access$1000(TouchActionTranslator var0);

    static /* synthetic */ TouchActionListener access$200(TouchActionTranslator var0);

    static /* synthetic */ void access$400(TouchActionTranslator var0, InteractionState var1);

    static /* synthetic */ TouchMoveAndStopDetector access$900(TouchActionTranslator var0);

    private void changeTo(InteractionState var1);

    private GestureDetector getAndroidGestureDetector();

    private TouchMoveAndStopDetector getSingleTouchMoveAndStopDetector();

    private boolean hitTest(View var1, int var2, int var3, int var4);

    public void cancel();

    @Override
    public void onDoubleTouchRotateDetected(float var1, float var2);

    @Override
    public void onDoubleTouchScaleDetected(float var1, float var2, float var3);

    @Override
    public boolean onDown(MotionEvent var1);

    @Override
    public boolean onFling(MotionEvent var1, MotionEvent var2, float var3, float var4);

    @Override
    public void onLongPress(MotionEvent var1);

    @Override
    public boolean onScroll(MotionEvent var1, MotionEvent var2, float var3, float var4);

    @Override
    public void onShowPress(MotionEvent var1);

    @Override
    public boolean onSingleTapUp(MotionEvent var1);

    @Override
    public void onSingleTouchMoveDetected(Point var1, Point var2, Point var3);

    @Override
    public void onSingleTouchStopDetected(Point var1, Point var2, Point var3);

    public boolean onTouchEvent(MotionEvent var1);

    public void release();

    public void setInteractionListener(TouchActionListener var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DoubleDown
    implements InteractionState {
        final /* synthetic */ TouchActionTranslator this$0;

        private DoubleDown(TouchActionTranslator var1);

        /* synthetic */ DoubleDown(TouchActionTranslator var1,  var2);

        @Override
        public void handleMotionEvent(MotionEvent var1);

        @Override
        public void handleSingleTouchMoveEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleSingleTouchStopEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleTouchRotateEvent(float var1, float var2);

        @Override
        public void handleTouchScaleEvent(float var1, float var2, float var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DoubleMove
    implements InteractionState {
        final /* synthetic */ TouchActionTranslator this$0;

        DoubleMove(TouchActionTranslator var1, Point var2, Point var3);

        @Override
        public void handleMotionEvent(MotionEvent var1);

        @Override
        public void handleSingleTouchMoveEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleSingleTouchStopEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleTouchRotateEvent(float var1, float var2);

        @Override
        public void handleTouchScaleEvent(float var1, float var2, float var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class Idle
    implements InteractionState {
        final /* synthetic */ TouchActionTranslator this$0;

        private Idle(TouchActionTranslator var1);

        /* synthetic */ Idle(TouchActionTranslator var1,  var2);

        @Override
        public void handleMotionEvent(MotionEvent var1);

        @Override
        public void handleSingleTouchMoveEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleSingleTouchStopEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleTouchRotateEvent(float var1, float var2);

        @Override
        public void handleTouchScaleEvent(float var1, float var2, float var3);
    }

    private static interface InteractionState {
        public void handleMotionEvent(MotionEvent var1);

        public void handleSingleTouchMoveEvent(Point var1, Point var2, Point var3);

        public void handleSingleTouchStopEvent(Point var1, Point var2, Point var3);

        public void handleTouchRotateEvent(float var1, float var2);

        public void handleTouchScaleEvent(float var1, float var2, float var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class NullInteractionListener
    implements TouchActionListener {
        private NullInteractionListener();

        /* synthetic */ NullInteractionListener( var1);

        @Override
        public void onDoubleCanceled();

        @Override
        public void onDoubleMoved(Point var1, Point var2);

        @Override
        public void onDoubleRotated(float var1, float var2);

        @Override
        public void onDoubleScaled(float var1, float var2, float var3);

        @Override
        public void onDoubleTouched(Point var1, Point var2);

        @Override
        public void onFling(MotionEvent var1, MotionEvent var2, float var3, float var4);

        @Override
        public void onLongPress(MotionEvent var1);

        @Override
        public void onOverTripleCanceled();

        @Override
        public void onShowPress(MotionEvent var1);

        @Override
        public void onSingleCanceled();

        @Override
        public void onSingleMoved(Point var1, Point var2, Point var3);

        @Override
        public void onSingleReleased(Point var1);

        @Override
        public void onSingleReleasedInDouble(Point var1, Point var2);

        @Override
        public void onSingleStopped(Point var1, Point var2, Point var3);

        @Override
        public void onSingleTapUp(MotionEvent var1);

        @Override
        public void onSingleTouched(Point var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OverTriple
    implements InteractionState {
        final /* synthetic */ TouchActionTranslator this$0;

        private OverTriple(TouchActionTranslator var1);

        /* synthetic */ OverTriple(TouchActionTranslator var1,  var2);

        @Override
        public void handleMotionEvent(MotionEvent var1);

        @Override
        public void handleSingleTouchMoveEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleSingleTouchStopEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleTouchRotateEvent(float var1, float var2);

        @Override
        public void handleTouchScaleEvent(float var1, float var2, float var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SingleDown
    implements InteractionState {
        final /* synthetic */ TouchActionTranslator this$0;

        private SingleDown(TouchActionTranslator var1);

        /* synthetic */ SingleDown(TouchActionTranslator var1,  var2);

        @Override
        public void handleMotionEvent(MotionEvent var1);

        @Override
        public void handleSingleTouchMoveEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleSingleTouchStopEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleTouchRotateEvent(float var1, float var2);

        @Override
        public void handleTouchScaleEvent(float var1, float var2, float var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SingleMove
    implements InteractionState {
        final /* synthetic */ TouchActionTranslator this$0;

        private SingleMove(TouchActionTranslator var1);

        /* synthetic */ SingleMove(TouchActionTranslator var1,  var2);

        @Override
        public void handleMotionEvent(MotionEvent var1);

        @Override
        public void handleSingleTouchMoveEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleSingleTouchStopEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleTouchRotateEvent(float var1, float var2);

        @Override
        public void handleTouchScaleEvent(float var1, float var2, float var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SingleStop
    implements InteractionState {
        final /* synthetic */ TouchActionTranslator this$0;

        private SingleStop(TouchActionTranslator var1);

        /* synthetic */ SingleStop(TouchActionTranslator var1,  var2);

        @Override
        public void handleMotionEvent(MotionEvent var1);

        @Override
        public void handleSingleTouchMoveEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleSingleTouchStopEvent(Point var1, Point var2, Point var3);

        @Override
        public void handleTouchRotateEvent(float var1, float var2);

        @Override
        public void handleTouchScaleEvent(float var1, float var2, float var3);
    }

    public static interface TouchActionListener {
        public void onDoubleCanceled();

        public void onDoubleMoved(Point var1, Point var2);

        public void onDoubleRotated(float var1, float var2);

        public void onDoubleScaled(float var1, float var2, float var3);

        public void onDoubleTouched(Point var1, Point var2);

        public void onFling(MotionEvent var1, MotionEvent var2, float var3, float var4);

        public void onLongPress(MotionEvent var1);

        public void onOverTripleCanceled();

        public void onShowPress(MotionEvent var1);

        public void onSingleCanceled();

        public void onSingleMoved(Point var1, Point var2, Point var3);

        public void onSingleReleased(Point var1);

        public void onSingleReleasedInDouble(Point var1, Point var2);

        public void onSingleStopped(Point var1, Point var2, Point var3);

        public void onSingleTapUp(MotionEvent var1);

        public void onSingleTouched(Point var1);
    }

}

