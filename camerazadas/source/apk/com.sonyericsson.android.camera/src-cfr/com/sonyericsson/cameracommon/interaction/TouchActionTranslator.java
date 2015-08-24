/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.interaction;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector;
import com.sonyericsson.cameracommon.interaction.TouchScaleAndRotateDetector;

public class TouchActionTranslator
implements TouchMoveAndStopDetector.TouchStopDetectorListener,
TouchScaleAndRotateDetector.ScaleAndRotateDetectorListener,
GestureDetector.OnGestureListener {
    private static final TouchActionListener NULL_LISTENER = new NullInteractionListener();
    static final String TAG = "TouchActionTranslator";
    private GestureDetector mAndroidGestureDetector;
    private TouchActionListener mClientListener = NULL_LISTENER;
    private Context mContext;
    private InteractionState mCurrentInteractionState;
    private TouchScaleAndRotateDetector mDoubleTouchScaleAndRotateDetector;
    private boolean mIsAllTouchEventInTargetArea = true;
    private final int mMargin;
    private TouchMoveAndStopDetector mSingleTouchMoveAndStopDetector;
    private View mTargetView;
    private final int mTouchSlop;

    public TouchActionTranslator(Context context, View view) {
        this(context, view, 0);
    }

    public TouchActionTranslator(Context context, View view, int n) {
        this(context, view, n, ViewConfiguration.get(context).getScaledTouchSlop());
    }

    public TouchActionTranslator(Context context, View view, int n, int n2) {
        this.mCurrentInteractionState = new Idle();
        this.mContext = context;
        this.mTargetView = view;
        this.mMargin = n;
        this.mTouchSlop = n2;
        this.setInteractionListener(null);
        this.mDoubleTouchScaleAndRotateDetector = new TouchScaleAndRotateDetector();
        this.mDoubleTouchScaleAndRotateDetector.setScaleAndRotateDetectorListener(this);
    }

    private void changeTo(InteractionState interactionState) {
        synchronized (this) {
            this.mCurrentInteractionState = interactionState;
            return;
        }
    }

    private GestureDetector getAndroidGestureDetector() {
        if (this.mAndroidGestureDetector == null) {
            this.mAndroidGestureDetector = new GestureDetector(this.mContext, this, new Handler(), true);
        }
        return this.mAndroidGestureDetector;
    }

    private TouchMoveAndStopDetector getSingleTouchMoveAndStopDetector() {
        if (this.mSingleTouchMoveAndStopDetector == null) {
            this.mSingleTouchMoveAndStopDetector = new TouchMoveAndStopDetector(this.mTouchSlop);
            this.mSingleTouchMoveAndStopDetector.setTouchStopDetectorListener(this);
        }
        return this.mSingleTouchMoveAndStopDetector;
    }

    private boolean hitTest(View view, int n, int n2, int n3) {
        return new Rect(n, n, view.getWidth() - n, view.getHeight() - n).contains(n2, n3);
    }

    public void cancel() {
        this.changeTo(new Idle());
    }

    @Override
    public void onDoubleTouchRotateDetected(float f, float f2) {
        synchronized (this) {
            this.mCurrentInteractionState.handleTouchRotateEvent(f, f2);
            return;
        }
    }

    @Override
    public void onDoubleTouchScaleDetected(float f, float f2, float f3) {
        synchronized (this) {
            this.mCurrentInteractionState.handleTouchScaleEvent(f, f2, f3);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public boolean onDown(MotionEvent motionEvent) {
        // MONITORENTER : this
        // MONITOREXIT : this
        return true;
    }

    @Override
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        synchronized (this) {
            this.mClientListener.onFling(motionEvent, motionEvent2, f, f2);
            return true;
        }
    }

    @Override
    public void onLongPress(MotionEvent motionEvent) {
        synchronized (this) {
            this.mClientListener.onLongPress(motionEvent);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        // MONITORENTER : this
        // MONITOREXIT : this
        return true;
    }

    @Override
    public void onShowPress(MotionEvent motionEvent) {
        synchronized (this) {
            this.mClientListener.onShowPress(motionEvent);
            return;
        }
    }

    @Override
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        synchronized (this) {
            this.mClientListener.onSingleTapUp(motionEvent);
            return true;
        }
    }

    @Override
    public void onSingleTouchMoveDetected(Point point, Point point2, Point point3) {
        synchronized (this) {
            this.mCurrentInteractionState.handleSingleTouchMoveEvent(point, point2, point3);
            return;
        }
    }

    @Override
    public void onSingleTouchStopDetected(Point point, Point point2, Point point3) {
        synchronized (this) {
            this.mCurrentInteractionState.handleSingleTouchStopEvent(point, point2, point3);
            return;
        }
    }

    /*
     * Exception decompiling
     */
    public boolean onTouchEvent(MotionEvent var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    public void release() {
        synchronized (this) {
            this.mContext = null;
            this.mTargetView = null;
            if (this.mSingleTouchMoveAndStopDetector != null) {
                this.mSingleTouchMoveAndStopDetector.release();
                this.mSingleTouchMoveAndStopDetector = null;
            }
            this.mDoubleTouchScaleAndRotateDetector.release();
            this.mDoubleTouchScaleAndRotateDetector = null;
            this.mAndroidGestureDetector = null;
            this.mClientListener = NULL_LISTENER;
            return;
        }
    }

    public void setInteractionListener(TouchActionListener touchActionListener) {
        if (touchActionListener != null) {
            this.mClientListener = touchActionListener;
            return;
        }
        this.mClientListener = NULL_LISTENER;
    }

    private class DoubleDown
    implements InteractionState {
        private DoubleDown() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleMotionEvent(MotionEvent motionEvent) {
            int n;
            int n2;
            switch (motionEvent.getActionMasked()) {
                case 2: {
                    if (motionEvent.getPointerCount() != 2) return;
                    {
                        Point point = new Point((int)motionEvent.getX(0), (int)motionEvent.getY(0));
                        motionEvent = new Point((int)motionEvent.getX(1), (int)motionEvent.getY(1));
                        TouchActionTranslator.this.mClientListener.onDoubleMoved(point, (Point)motionEvent);
                        TouchActionTranslator.this.changeTo(new DoubleMove(point, (Point)motionEvent));
                        return;
                    }
                }
                default: {
                    return;
                }
                case 3: {
                    TouchActionTranslator.this.mClientListener.onDoubleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    return;
                }
                case 5: {
                    TouchActionTranslator.this.changeTo(new OverTriple());
                    return;
                }
                case 6: 
            }
            if (motionEvent.getPointerCount() == 1) return;
            {
                n = motionEvent.getActionIndex();
                n2 = n == 0 ? 1 : 0;
            }
            TouchActionTranslator.this.mClientListener.onSingleReleasedInDouble(new Point((int)motionEvent.getX(n), (int)motionEvent.getY(n)), new Point((int)motionEvent.getX(n2), (int)motionEvent.getY(n2)));
            TouchActionTranslator.this.getSingleTouchMoveAndStopDetector().updateCurrentAndLastPosition((int)motionEvent.getX(n2), (int)motionEvent.getY(n2));
            TouchActionTranslator.this.changeTo(new SingleMove());
        }

        @Override
        public void handleSingleTouchMoveEvent(Point point, Point point2, Point point3) {
        }

        @Override
        public void handleSingleTouchStopEvent(Point point, Point point2, Point point3) {
        }

        @Override
        public void handleTouchRotateEvent(float f, float f2) {
        }

        @Override
        public void handleTouchScaleEvent(float f, float f2, float f3) {
        }
    }

    private class DoubleMove
    implements InteractionState {
        DoubleMove(Point point, Point point2) {
            TouchActionTranslator.this.mDoubleTouchScaleAndRotateDetector.startScaleAndRotateDetection(new PointF(point), new PointF(point2));
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleMotionEvent(MotionEvent motionEvent) {
            switch (motionEvent.getActionMasked()) {
                case 2: {
                    if (motionEvent.getPointerCount() == 2) {
                        TouchActionTranslator.this.mDoubleTouchScaleAndRotateDetector.updateCurrentPosition(new PointF(motionEvent.getX(0), motionEvent.getY(0)), new PointF(motionEvent.getX(1), motionEvent.getY(1)));
                        TouchActionTranslator.this.mClientListener.onDoubleMoved(new Point((int)motionEvent.getX(0), (int)motionEvent.getY(0)), new Point((int)motionEvent.getX(1), (int)motionEvent.getY(1)));
                        return;
                    }
                }
                default: {
                    return;
                }
                case 3: {
                    TouchActionTranslator.this.mClientListener.onDoubleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    return;
                }
                case 5: {
                    TouchActionTranslator.this.mDoubleTouchScaleAndRotateDetector.stopScaleAndRotateDetection();
                    TouchActionTranslator.this.changeTo(new OverTriple());
                    return;
                }
                case 6: 
            }
            TouchActionTranslator.this.mDoubleTouchScaleAndRotateDetector.stopScaleAndRotateDetection();
            int n = motionEvent.getActionIndex();
            int n2 = n == 0 ? 1 : 0;
            TouchActionTranslator.this.mClientListener.onSingleReleasedInDouble(new Point((int)motionEvent.getX(n), (int)motionEvent.getY(n)), new Point((int)motionEvent.getX(n2), (int)motionEvent.getY(n2)));
            TouchActionTranslator.this.getSingleTouchMoveAndStopDetector().updateCurrentAndLastPosition((int)motionEvent.getX(n2), (int)motionEvent.getY(n2));
            TouchActionTranslator.this.changeTo(new SingleMove());
        }

        @Override
        public void handleSingleTouchMoveEvent(Point point, Point point2, Point point3) {
        }

        @Override
        public void handleSingleTouchStopEvent(Point point, Point point2, Point point3) {
        }

        @Override
        public void handleTouchRotateEvent(float f, float f2) {
            TouchActionTranslator.this.mClientListener.onDoubleRotated(f, f2);
        }

        @Override
        public void handleTouchScaleEvent(float f, float f2, float f3) {
            TouchActionTranslator.this.mClientListener.onDoubleScaled(f, f2, f3);
        }
    }

    private class Idle
    implements InteractionState {
        private Idle() {
        }

        @Override
        public void handleMotionEvent(MotionEvent motionEvent) {
            switch (motionEvent.getActionMasked()) {
                default: {
                    return;
                }
                case 0: 
            }
            TouchActionTranslator.this.mClientListener.onSingleTouched(new Point((int)motionEvent.getX(0), (int)motionEvent.getY(0)));
            TouchActionTranslator.this.changeTo(new SingleDown());
        }

        @Override
        public void handleSingleTouchMoveEvent(Point point, Point point2, Point point3) {
        }

        @Override
        public void handleSingleTouchStopEvent(Point point, Point point2, Point point3) {
        }

        @Override
        public void handleTouchRotateEvent(float f, float f2) {
        }

        @Override
        public void handleTouchScaleEvent(float f, float f2, float f3) {
        }
    }

    private static interface InteractionState {
        public void handleMotionEvent(MotionEvent var1);

        public void handleSingleTouchMoveEvent(Point var1, Point var2, Point var3);

        public void handleSingleTouchStopEvent(Point var1, Point var2, Point var3);

        public void handleTouchRotateEvent(float var1, float var2);

        public void handleTouchScaleEvent(float var1, float var2, float var3);
    }

    private static final class NullInteractionListener
    implements TouchActionListener {
        private NullInteractionListener() {
        }

        @Override
        public void onDoubleCanceled() {
        }

        @Override
        public void onDoubleMoved(Point point, Point point2) {
        }

        @Override
        public void onDoubleRotated(float f, float f2) {
        }

        @Override
        public void onDoubleScaled(float f, float f2, float f3) {
        }

        @Override
        public void onDoubleTouched(Point point, Point point2) {
        }

        @Override
        public void onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        }

        @Override
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override
        public void onOverTripleCanceled() {
        }

        @Override
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override
        public void onSingleCanceled() {
        }

        @Override
        public void onSingleMoved(Point point, Point point2, Point point3) {
        }

        @Override
        public void onSingleReleased(Point point) {
        }

        @Override
        public void onSingleReleasedInDouble(Point point, Point point2) {
        }

        @Override
        public void onSingleStopped(Point point, Point point2, Point point3) {
        }

        @Override
        public void onSingleTapUp(MotionEvent motionEvent) {
        }

        @Override
        public void onSingleTouched(Point point) {
        }
    }

    private class OverTriple
    implements InteractionState {
        private OverTriple() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleMotionEvent(MotionEvent motionEvent) {
            switch (motionEvent.getActionMasked()) {
                default: {
                    return;
                }
                case 3: {
                    TouchActionTranslator.this.mClientListener.onOverTripleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    return;
                }
                case 6: {
                    if (motionEvent.getPointerCount() != 3) return;
                    TouchActionTranslator.this.changeTo(new DoubleDown());
                    return;
                }
            }
        }

        @Override
        public void handleSingleTouchMoveEvent(Point point, Point point2, Point point3) {
        }

        @Override
        public void handleSingleTouchStopEvent(Point point, Point point2, Point point3) {
        }

        @Override
        public void handleTouchRotateEvent(float f, float f2) {
        }

        @Override
        public void handleTouchScaleEvent(float f, float f2, float f3) {
        }
    }

    private class SingleDown
    implements InteractionState {
        private SingleDown() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleMotionEvent(MotionEvent motionEvent) {
            switch (motionEvent.getActionMasked()) {
                default: {
                    return;
                }
                case 2: {
                    TouchActionTranslator.this.changeTo(new SingleMove());
                    return;
                }
                case 1: {
                    TouchActionTranslator.this.mClientListener.onSingleReleased(new Point((int)motionEvent.getX(0), (int)motionEvent.getY(0)));
                    TouchActionTranslator.this.changeTo(new Idle());
                    return;
                }
                case 3: {
                    TouchActionTranslator.this.mClientListener.onSingleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    return;
                }
                case 5: {
                    if (motionEvent.getPointerCount() == 1) return;
                    TouchActionTranslator.this.mClientListener.onDoubleTouched(new Point((int)motionEvent.getX(0), (int)motionEvent.getY(0)), new Point((int)motionEvent.getX(1), (int)motionEvent.getY(1)));
                    TouchActionTranslator.this.changeTo(new DoubleDown());
                    return;
                }
            }
        }

        @Override
        public void handleSingleTouchMoveEvent(Point point, Point point2, Point point3) {
        }

        @Override
        public void handleSingleTouchStopEvent(Point point, Point point2, Point point3) {
        }

        @Override
        public void handleTouchRotateEvent(float f, float f2) {
        }

        @Override
        public void handleTouchScaleEvent(float f, float f2, float f3) {
        }
    }

    private class SingleMove
    implements InteractionState {
        private SingleMove() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleMotionEvent(MotionEvent motionEvent) {
            switch (motionEvent.getActionMasked()) {
                default: {
                    return;
                }
                case 1: {
                    TouchActionTranslator.this.mClientListener.onSingleReleased(new Point((int)motionEvent.getX(0), (int)motionEvent.getY(0)));
                    TouchActionTranslator.this.changeTo(new Idle());
                    return;
                }
                case 3: {
                    TouchActionTranslator.this.mClientListener.onSingleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    return;
                }
                case 5: {
                    if (motionEvent.getPointerCount() == 1) return;
                    TouchActionTranslator.this.mClientListener.onDoubleTouched(new Point((int)motionEvent.getX(0), (int)motionEvent.getY(0)), new Point((int)motionEvent.getX(1), (int)motionEvent.getY(1)));
                    TouchActionTranslator.this.changeTo(new DoubleDown());
                    return;
                }
            }
        }

        @Override
        public void handleSingleTouchMoveEvent(Point point, Point point2, Point point3) {
            TouchActionTranslator.this.mClientListener.onSingleMoved(point, point2, point3);
        }

        @Override
        public void handleSingleTouchStopEvent(Point point, Point point2, Point point3) {
            TouchActionTranslator.this.mClientListener.onSingleStopped(point, point2, point3);
            TouchActionTranslator.this.changeTo(new SingleStop());
        }

        @Override
        public void handleTouchRotateEvent(float f, float f2) {
        }

        @Override
        public void handleTouchScaleEvent(float f, float f2, float f3) {
        }
    }

    private class SingleStop
    implements InteractionState {
        private SingleStop() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleMotionEvent(MotionEvent motionEvent) {
            switch (motionEvent.getActionMasked()) {
                default: {
                    return;
                }
                case 1: {
                    TouchActionTranslator.this.mClientListener.onSingleReleased(new Point((int)motionEvent.getX(0), (int)motionEvent.getY(0)));
                    TouchActionTranslator.this.changeTo(new Idle());
                    return;
                }
                case 3: {
                    TouchActionTranslator.this.mClientListener.onSingleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    return;
                }
                case 5: {
                    if (motionEvent.getPointerCount() == 1) return;
                    TouchActionTranslator.this.mClientListener.onDoubleTouched(new Point((int)motionEvent.getX(0), (int)motionEvent.getY(0)), new Point((int)motionEvent.getX(1), (int)motionEvent.getY(1)));
                    TouchActionTranslator.this.changeTo(new DoubleDown());
                    return;
                }
            }
        }

        @Override
        public void handleSingleTouchMoveEvent(Point point, Point point2, Point point3) {
            TouchActionTranslator.this.mClientListener.onSingleMoved(point, point2, point3);
            TouchActionTranslator.this.changeTo(new SingleMove());
        }

        @Override
        public void handleSingleTouchStopEvent(Point point, Point point2, Point point3) {
        }

        @Override
        public void handleTouchRotateEvent(float f, float f2) {
        }

        @Override
        public void handleTouchScaleEvent(float f, float f2, float f3) {
        }
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

