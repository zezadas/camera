/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.interaction.TouchActionTranslator;
import com.sonyericsson.cameracommon.utility.CommonUtility;

public class CaptureArea
extends ImageView
implements TouchActionTranslator.TouchActionListener {
    private static final String TAG = "CaptureArea";
    private boolean mIsLongPressed = false;
    private boolean mIsTouched = false;
    private CaptureAreaStateListener mListener;
    private CaptureAreaTouchEventListener mTouchListener;
    private TouchActionTranslator mUserInteractionEngine = null;

    public CaptureArea(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTouchListener = new CaptureAreaTouchEventListener();
        this.mUserInteractionEngine = new TouchActionTranslator(context, this, context.getResources().getDimensionPixelSize(2131492880));
        this.mUserInteractionEngine.setInteractionListener(this);
        this.setOnTouchListener(this.mTouchListener);
    }

    private Point convertPointCoordinatesFromThisViewToScreen(Point point) {
        int[] arrn = new int[2];
        this.getLocationOnScreen(arrn);
        return new Point(point.x + arrn[0], point.y + arrn[1]);
    }

    public boolean contains(MotionEvent motionEvent) {
        return CommonUtility.isEventContainedInView(this, motionEvent);
    }

    public boolean isTouched() {
        return this.mIsTouched;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onDoubleCanceled() {
        if (!this.mIsTouched) {
            return;
        }
        this.mIsTouched = false;
        if (this.mListener == null) return;
        this.mListener.onCaptureAreaCanceled();
    }

    @Override
    public void onDoubleMoved(Point point, Point point2) {
    }

    @Override
    public void onDoubleRotated(float f, float f2) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onDoubleScaled(float f, float f2, float f3) {
        if (!(this.mIsTouched && this.mListener != null)) {
            return;
        }
        this.mListener.onCaptureAreaScaled(f - f2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onDoubleTouched(Point point, Point point2) {
        if (!(this.mIsTouched && this.mListener != null)) {
            return;
        }
        this.mListener.onCaptureAreaCanceled();
        this.mListener.onCaptureAreaIsReadyToScale();
    }

    @Override
    public void onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
    }

    @Override
    public void onLongPress(MotionEvent parcelable) {
        this.mIsLongPressed = true;
        if (this.mListener != null) {
            parcelable = new Point((int)parcelable.getX(), (int)parcelable.getY());
            this.mListener.onCaptureAreaLongPressed(this.convertPointCoordinatesFromThisViewToScreen((Point)parcelable));
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onOverTripleCanceled() {
        if (!this.mIsTouched) {
            return;
        }
        this.mIsTouched = false;
        if (this.mListener == null) return;
        this.mListener.onCaptureAreaCanceled();
    }

    @Override
    public void onShowPress(MotionEvent motionEvent) {
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onSingleCanceled() {
        if (!this.mIsTouched) {
            return;
        }
        this.mIsTouched = false;
        if (this.mListener == null) return;
        this.mListener.onCaptureAreaCanceled();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onSingleMoved(Point point, Point point2, Point point3) {
        if (!(this.mIsTouched && this.mListener != null)) {
            return;
        }
        if (!this.isTouched()) {
            this.mListener.onCaptureAreaCanceled();
            return;
        }
        this.mListener.onCaptureAreaMoved(this.convertPointCoordinatesFromThisViewToScreen(point));
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onSingleReleased(Point point) {
        if (!(this.mIsTouched || this.mIsLongPressed)) {
            return;
        }
        this.mIsTouched = false;
        this.mIsLongPressed = false;
        if (this.mListener == null) return;
        this.mListener.onCaptureAreaReleased(this.convertPointCoordinatesFromThisViewToScreen(point));
    }

    @Override
    public void onSingleReleasedInDouble(Point point, Point point2) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onSingleStopped(Point point, Point point2, Point point3) {
        if (!(this.mIsTouched && this.mListener != null)) {
            return;
        }
        this.mListener.onCaptureAreaStopped();
    }

    @Override
    public void onSingleTapUp(MotionEvent parcelable) {
        if (this.mListener != null) {
            parcelable = new Point((int)parcelable.getX(), (int)parcelable.getY());
            this.mListener.onCaptureAreaSingleTapUp(this.convertPointCoordinatesFromThisViewToScreen((Point)parcelable));
        }
    }

    @Override
    public void onSingleTouched(Point point) {
        this.mIsTouched = true;
        if (this.mListener != null) {
            this.mListener.onCaptureAreaTouched(this.convertPointCoordinatesFromThisViewToScreen(point));
        }
    }

    public void release() {
        this.mUserInteractionEngine.setInteractionListener(null);
        this.mUserInteractionEngine.release();
        this.mUserInteractionEngine = null;
        this.setOnTouchListener(null);
    }

    public void setCaptureAreaStateListener(CaptureAreaStateListener captureAreaStateListener) {
        this.mListener = captureAreaStateListener;
    }

    public static interface CaptureAreaStateListener {
        public void onCaptureAreaCanceled();

        public void onCaptureAreaIsReadyToScale();

        public void onCaptureAreaLongPressed(Point var1);

        public void onCaptureAreaMoved(Point var1);

        public void onCaptureAreaReleased(Point var1);

        public void onCaptureAreaScaled(float var1);

        public void onCaptureAreaSingleTapUp(Point var1);

        public void onCaptureAreaStopped();

        public void onCaptureAreaTouched(Point var1);
    }

    class CaptureAreaTouchEventListener
    implements View.OnTouchListener {
        CaptureAreaTouchEventListener() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            synchronized (this) {
                if (!CaptureArea.this.mUserInteractionEngine.onTouchEvent(motionEvent)) {
                    CaptureArea.this.mIsTouched = false;
                    if (CaptureArea.this.mListener != null) {
                        CaptureArea.this.mListener.onCaptureAreaCanceled();
                    }
                }
                return true;
            }
        }
    }

}

