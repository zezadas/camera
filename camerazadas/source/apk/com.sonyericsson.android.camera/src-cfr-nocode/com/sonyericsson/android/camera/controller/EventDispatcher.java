/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.controller.CaptureButtonGestureDetector;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.EventAction;
import com.sonyericsson.android.camera.controller.EventFilter;
import com.sonyericsson.android.camera.controller.TouchFocusDetector;
import com.sonyericsson.android.camera.controller.ZoomDirection;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.android.camera.view.DetectedFaceRectangles;
import com.sonyericsson.cameracommon.interaction.TouchActionTranslator;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.mediasaving.StorageController;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class EventDispatcher
implements StorageController.StorageListener,
DetectedFaceRectangles.ChangeFocusFaceListener,
TouchFocusDetector.MotionEventDetectorListener,
TouchActionTranslator.TouchActionListener,
View.OnTouchListener {
    private static final long DETECTION_LIMIT_TIME = 1000;
    private static final String TAG;
    private final CameraActivity mActivity;
    private CameraWindow mCameraWindow;
    private final CaptureButtonGestureDetector mCaptureButtonGestureDetector;
    private EventFilter mEventFilter;
    private ControllerEventSource mExclusiveEventSouce;
    private KeyEventTranslator mKeyEventTranslator;
    private KeyState mKeyState;
    final ControllerEventSender mNoEvent;
    final ControllerEventSender mObjectTracking;
    private boolean mSendLongPressEvent;
    private boolean mShouldSelfTimerStart;
    private TouchActionTranslator mTouchActionTranslator;
    final TouchCapturing mTouchCaptureOff;
    final TouchCapturing mTouchCaptureOn;
    final ControllerEventSender mTouchCapturingOnly;
    private long mTouchDetectedTime;
    final ControllerEventSender mTouchFocus;
    private final TouchFocusDetector mTouchFocusDetector;
    final ControllerEventSender mTouchFocusWhenever;
    TouchEventTranslator mTranslator;

    static;

    public EventDispatcher(CameraActivity var1);

    static /* synthetic */ TouchFocusDetector access$100(EventDispatcher var0);

    private boolean consumedByZoom(MotionEvent var1);

    public static EventAction getEventAction(int var0);

    private KeyState getKeyState();

    private boolean isExclusivedEventSource(ControllerEventSource var1);

    private void resetKeyState(KeyState var1);

    private void sendEventFilterMessage(int var1);

    private void setCurrentEventSource(ControllerEventSource var1);

    private void setKeyState(KeyState var1);

    private boolean shouldSelfTimerStart(ControllerEventSource var1);

    public void cancel();

    void dispatch(EventAction var1, int var2, int var3, ControllerEventSource var4);

    void dispatchZoomEvent(EventAction var1, ControllerEventSource var2, ZoomDirection var3);

    public TouchCapturing getTouchCapturing(boolean var1, ControllerEventSender var2);

    public void init(CameraWindow var1);

    public boolean isCaptureValid();

    public boolean isDragging();

    public boolean isPinchZoomValid();

    public boolean isSelfTimerRunning();

    public boolean isShutterKeyValid(int var1);

    public boolean isTouchEventValid();

    public boolean isVolumeKeyValid();

    @Override
    public void onAvailableSizeUpdated(long var1);

    public boolean onCaptureButtonEvent(int var1, MotionEvent var2);

    @Override
    public void onChangeFocusFace(String var1, int var2, int var3, int var4, int var5);

    @Override
    public void onDestinationToSaveChanged();

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
    public void onFaceRectLongPress(MotionEvent var1);

    @Override
    public void onFaceRectTouchCancel(MotionEvent var1);

    @Override
    public void onFaceRectTouchUp(MotionEvent var1);

    @Override
    public void onFling(MotionEvent var1, MotionEvent var2, float var3, float var4);

    public boolean onKeyDown(int var1, KeyEvent var2);

    public boolean onKeyUp(int var1, KeyEvent var2);

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

    @Override
    public void onStorageStateChanged(String var1);

    @Override
    public boolean onTouch(View var1, MotionEvent var2);

    @Override
    public void onTouchMoveDetected(MotionEvent var1);

    @Override
    public void onTouchStopDetected(int var1, int var2);

    public void preparePinchZoom(ControllerEventSource var1);

    public void release();

    public void resetStatus();

    public void sendCaptureEvent(EventAction var1, ControllerEventSource var2);

    public void sendCaptureEventWithPosition(EventAction var1, ControllerEventSource var2, Rect var3, ControllerEventSender var4);

    public void sendLongPressEvent(ControllerEventSource var1);

    public void sendSelfTimerEvent(EventAction var1, ControllerEventSource var2, Rect var3, ControllerEventSender var4);

    public void setSendLongPressEvent(boolean var1);

    public void setShouldSelfTimerStart(boolean var1);

    public void startTouchEventTranslation();

    public void stopTranslation();

    public void updateLongPressStatus(int var1, boolean var2);

    public void updateSelfTimerStatus(boolean var1);

    public void updateTouchCaptureStatus(boolean var1);

    public void updateTouchEventTranslator(Parameters var1);

    public void updateTouchFocusStatus(boolean var1);

    public void updateZoomStatus(boolean var1, ControllerEventSource var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class CaptureButtonGestureListener
    implements CaptureButtonGestureDetector.OnCaptureButtonGestureListener {
        private final EventDispatcher mDispatcher;

        private CaptureButtonGestureListener(EventDispatcher var1);

        /* synthetic */ CaptureButtonGestureListener(EventDispatcher var1,  var2);

        @Override
        public void onLongPress();
    }

    static interface ControllerEventSender {
        public void send(EventAction var1, ControllerEventSource var2, Rect var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class KeyState
    extends Enum<KeyState> {
        private static final /* synthetic */ KeyState[] $VALUES;
        public static final /* enum */ KeyState AFDONE;
        public static final /* enum */ KeyState CAPTURED;
        public static final /* enum */ KeyState NON;
        public static final /* enum */ KeyState SHUTTERDONE;

        static;

        private KeyState();

        public static KeyState valueOf(String var0);

        public static KeyState[] values();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class NoEvent
    implements ControllerEventSender {
        NoEvent();

        @Override
        public void send(EventAction var1, ControllerEventSource var2, Rect var3);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ObjectTrackingEvent
    implements ControllerEventSender {
        ObjectTrackingEvent();

        @Override
        public void send(EventAction var1, ControllerEventSource var2, Rect var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class TouchCaptureOff
    extends TouchCapturing {
        final /* synthetic */ EventDispatcher this$0;

        TouchCaptureOff(EventDispatcher var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class TouchCaptureOn
    extends TouchCapturing {
        final /* synthetic */ EventDispatcher this$0;

        TouchCaptureOn(EventDispatcher var1);

        @Override
        public void capture(EventAction var1, ControllerEventSource var2);

        @Override
        public boolean consumeTouchEvent();

        @Override
        public void sendEventWithPosition(EventAction var1, ControllerEventSource var2, Rect var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    abstract class TouchCapturing {
        public ControllerEventSender mSender;
        final /* synthetic */ EventDispatcher this$0;

        TouchCapturing(EventDispatcher var1);

        public void capture(EventAction var1, ControllerEventSource var2);

        public boolean consumeTouchEvent();

        public void sendEventWithPosition(EventAction var1, ControllerEventSource var2, Rect var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class TouchCapturingOnlyEvent
    implements ControllerEventSender {
        final /* synthetic */ EventDispatcher this$0;

        TouchCapturingOnlyEvent(EventDispatcher var1);

        @Override
        public void send(EventAction var1, ControllerEventSource var2, Rect var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    abstract class TouchEventTranslator {
        public TouchCapturing mTouchCapture;
        final /* synthetic */ EventDispatcher this$0;

        public TouchEventTranslator(EventDispatcher var1, TouchCapturing var2);

        public abstract boolean consumeTouchEvent();

        public abstract void notifyTouchFocusDetector(MotionEvent var1);

        public abstract void translate(EventAction var1, ControllerEventSource var2, Rect var3);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class TouchFocusEvent
    implements ControllerEventSender {
        TouchFocusEvent();

        @Override
        public void send(EventAction var1, ControllerEventSource var2, Rect var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class TouchFocusWheneverEvent
    implements ControllerEventSender {
        final /* synthetic */ EventDispatcher this$0;

        TouchFocusWheneverEvent(EventDispatcher var1);

        @Override
        public void send(EventAction var1, ControllerEventSource var2, Rect var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class TranslatorNoPosition
    extends TouchEventTranslator {
        final /* synthetic */ EventDispatcher this$0;

        public TranslatorNoPosition(EventDispatcher var1, TouchCapturing var2);

        @Override
        public boolean consumeTouchEvent();

        @Override
        public void notifyTouchFocusDetector(MotionEvent var1);

        @Override
        public void translate(EventAction var1, ControllerEventSource var2, Rect var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class TranslatorWithPosition
    extends TouchEventTranslator {
        final /* synthetic */ EventDispatcher this$0;

        public TranslatorWithPosition(EventDispatcher var1, TouchCapturing var2);

        @Override
        public boolean consumeTouchEvent();

        @Override
        public void notifyTouchFocusDetector(MotionEvent var1);

        @Override
        public void translate(EventAction var1, ControllerEventSource var2, Rect var3);
    }

}

