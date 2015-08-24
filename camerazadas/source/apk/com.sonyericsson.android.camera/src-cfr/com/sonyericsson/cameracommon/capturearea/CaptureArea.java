/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.capturearea;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector;

public class CaptureArea
extends ImageView
implements TouchMoveAndStopDetector.TouchStopDetectorListener {
    private int mBgLandscape;
    private int mBgLandscapePressed;
    private int mBgPortrait;
    private int mBgPortraitPressed;
    private int mCurrentOrientation = 2;
    private boolean mIsTouched = false;
    private CaptureAreaStateListener mListener;
    private CaptureAreaTouchEventListener mTouchListener;
    TouchMoveAndStopDetector mTouchMoveAndStopDetector;

    public CaptureArea(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTouchListener = new CaptureAreaTouchEventListener();
        this.mBgLandscape = 0;
        this.mBgLandscapePressed = 0;
        this.mBgPortrait = 0;
        this.mBgPortraitPressed = 0;
        this.mTouchMoveAndStopDetector = new TouchMoveAndStopDetector(ViewConfiguration.get(this.getContext()).getScaledTouchSlop());
        this.mTouchMoveAndStopDetector.setTouchStopDetectorListener(this);
        this.setOnTouchListener(this.mTouchListener);
    }

    static /* synthetic */ boolean access$000(CaptureArea captureArea) {
        return captureArea.mIsTouched;
    }

    static /* synthetic */ boolean access$002(CaptureArea captureArea, boolean bl) {
        captureArea.mIsTouched = bl;
        return bl;
    }

    static /* synthetic */ CaptureAreaStateListener access$100(CaptureArea captureArea) {
        return captureArea.mListener;
    }

    static /* synthetic */ Point access$200(CaptureArea captureArea, MotionEvent motionEvent) {
        return captureArea.getTouchPoint(motionEvent);
    }

    static /* synthetic */ boolean access$300(CaptureArea captureArea, View view, MotionEvent motionEvent) {
        return captureArea.hitTest(view, motionEvent);
    }

    static /* synthetic */ void access$400(CaptureArea captureArea) {
        captureArea.updateView();
    }

    private Point getTouchPoint(MotionEvent motionEvent) {
        return new Point((int)motionEvent.getRawX(), (int)motionEvent.getRawY());
    }

    private boolean hitTest(View view, int n, int n2) {
        int[] arrn = new int[2];
        view.getLocationOnScreen(arrn);
        return new Rect(arrn[0], arrn[1], arrn[0] + view.getWidth(), arrn[1] + view.getHeight()).contains(n, n2);
    }

    private boolean hitTest(View view, MotionEvent motionEvent) {
        return this.hitTest(view, (int)motionEvent.getRawX(), (int)motionEvent.getRawY());
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void updateView() {
        if (this.mBgLandscape == 0 && this.mBgLandscapePressed == 0 && this.mBgPortrait == 0 && this.mBgPortraitPressed == 0) {
            return;
        }
        switch (this.mCurrentOrientation) {
            case 2: {
                if (this.mIsTouched) {
                    this.setImageResource(this.mBgLandscapePressed);
                    ** break;
                }
                this.setImageResource(this.mBgLandscape);
            }
lbl9: // 3 sources:
            default: {
                ** GOTO lbl16
            }
            case 1: 
        }
        if (this.mIsTouched) {
            this.setImageResource(this.mBgPortraitPressed);
        } else {
            this.setImageResource(this.mBgPortrait);
        }
lbl16: // 3 sources:
        this.requestLayout();
        this.invalidate();
    }

    public boolean isTouched() {
        return this.mIsTouched;
    }

    @Override
    public void onSingleTouchMoveDetected(Point point, Point point2, Point point3) {
        if (this.hitTest(this, point.x, point.y)) {
            if (this.mListener != null) {
                this.mListener.onCaptureAreaMoved(point);
            }
            return;
        }
        if (this.mListener != null) {
            this.mListener.onCaptureAreaCanceled();
        }
        this.mIsTouched = false;
        this.mTouchMoveAndStopDetector.stopTouchStopDetection();
    }

    @Override
    public void onSingleTouchStopDetected(Point point, Point point2, Point point3) {
        if (this.mListener != null) {
            this.mListener.onCaptureAreaStopped();
        }
    }

    public void release() {
        this.setOnTouchListener(null);
    }

    public void setCaptureAreaStateListener(CaptureAreaStateListener captureAreaStateListener) {
        this.mListener = captureAreaStateListener;
    }

    public void setLandscapeBackgroundResource(int n, int n2) {
        this.mBgLandscape = n;
        this.mBgLandscapePressed = n2;
    }

    public void setPortraitBackgroundResource(int n, int n2) {
        this.mBgPortrait = n;
        this.mBgPortraitPressed = n2;
    }

    public void setSensorOrientation(int n) {
        this.mCurrentOrientation = n;
        this.updateView();
    }

    public static interface CaptureAreaStateListener {
        public void onCaptureAreaCanceled();

        public void onCaptureAreaMoved(Point var1);

        public void onCaptureAreaReleased(Point var1);

        public void onCaptureAreaStopped();

        public void onCaptureAreaTouched(Point var1);
    }

    class CaptureAreaTouchEventListener
    implements View.OnTouchListener {
        CaptureAreaTouchEventListener() {
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public boolean onTouch(View var1_1, MotionEvent var2_2) {
            switch (var2_2.getAction()) {
                case 0: {
                    CaptureArea.access$002(CaptureArea.this, true);
                    CaptureArea.this.mTouchMoveAndStopDetector.startTouchStopDetection((int)var2_2.getRawX(), (int)var2_2.getRawY());
                    if (CaptureArea.access$100(CaptureArea.this) != null) {
                        CaptureArea.access$100(CaptureArea.this).onCaptureAreaTouched(CaptureArea.access$200(CaptureArea.this, var2_2));
                        ** break;
                    } else {
                        ** GOTO lbl11
                    }
                }
                case 2: {
                    if (CaptureArea.access$000(CaptureArea.this) == false) return true;
                    CaptureArea.this.mTouchMoveAndStopDetector.updateCurrentPosition((int)var2_2.getRawX(), (int)var2_2.getRawY());
                }
lbl11: // 5 sources:
                default: {
                    ** GOTO lbl24
                }
                case 1: {
                    CaptureArea.access$002(CaptureArea.this, false);
                }
                case 3: 
            }
            if (CaptureArea.access$300(CaptureArea.this, CaptureArea.this, var2_2)) {
                if (CaptureArea.access$100(CaptureArea.this) != null) {
                    CaptureArea.access$100(CaptureArea.this).onCaptureAreaReleased(CaptureArea.access$200(CaptureArea.this, var2_2));
                }
            } else if (CaptureArea.access$100(CaptureArea.this) != null) {
                CaptureArea.access$100(CaptureArea.this).onCaptureAreaCanceled();
            }
            CaptureArea.this.mTouchMoveAndStopDetector.stopTouchStopDetection();
            CaptureArea.access$002(CaptureArea.this, false);
lbl24: // 2 sources:
            CaptureArea.access$400(CaptureArea.this);
            return true;
        }
    }

}

