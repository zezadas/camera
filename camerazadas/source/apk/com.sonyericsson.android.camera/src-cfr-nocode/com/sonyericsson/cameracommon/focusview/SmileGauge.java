/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/*
 * Exception performing whole class analysis.
 */
public class SmileGauge
extends RelativeLayout {
    public static final int SMILE_LEVEL = 5;
    public static final int SMILE_MAX = 100;
    public static final int SMILE_MIN = 0;
    private static final String TAG = "SmileGauge";
    protected boolean mAlignBottom;
    protected boolean mAlignRight;
    private Rect mDisplayRect;
    private int mFaceRectangleBottom;
    private int mFaceRectangleLeft;
    private int mFaceRectangleRight;
    private int mFaceRectangleTop;
    private int mGaugePositionLimitBottom;
    private int mGaugePositionLimitLeft;
    private int mGaugePositionLimitRight;
    private int mGaugePositionLimitTop;
    private boolean mIsForLandscape;
    private int mMargin;
    private int mSmileScore;
    private int mSurfaceHeight;
    private int mSurfaceWidth;

    public SmileGauge(Context var1);

    public SmileGauge(Context var1, AttributeSet var2);

    public SmileGauge(Context var1, AttributeSet var2, int var3);

    private void correctPositionHorizontalLandScape();

    private void correctPositionHorizontalPortrait();

    private void correctPositionVerticalLandScape();

    private void correctPositionVerticalPortrait();

    protected void alignBottom();

    protected void alignLeft();

    protected void alignRight();

    protected void alignTop();

    protected void centerHorizontal();

    protected void centerVertical();

    protected void clearLayoutParams();

    protected void drawThreshold();

    public int getSmileScore();

    public boolean isForLandscape();

    public void moveToBottom(int var1);

    protected void moveToId(int var1);

    protected void moveToLeft(int var1);

    protected void moveToRight(int var1);

    protected void moveToTop(int var1);

    @Override
    protected void onDetachedFromWindow();

    @Override
    public void onFinishInflate();

    public void setDisplayRect(Rect var1);

    public void setPosition(int var1, int var2, int var3, int var4, int var5);

    public void setSmileLevel(int var1);

    public void setSmileScore(int var1);

    public void setSurfaceSize(int var1, int var2);

    @Override
    public void setVisibility(int var1);

    protected void update(int var1);
}

