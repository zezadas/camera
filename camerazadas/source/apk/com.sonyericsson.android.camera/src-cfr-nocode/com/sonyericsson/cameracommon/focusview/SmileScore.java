/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SmileScore
extends ImageView {
    private static final int GAUGE_BOTTOM_A = 178;
    private static final int GAUGE_BOTTOM_B = 229;
    private static final int GAUGE_BOTTOM_G = 181;
    private static final int GAUGE_BOTTOM_R = 51;
    private static final int GAUGE_TOP_A = 178;
    private static final int GAUGE_TOP_B = 204;
    private static final int GAUGE_TOP_G = 153;
    private static final int GAUGE_TOP_R = 0;
    public static final int SMILE_MAX = 100;
    public static final int SMILE_MIN = 0;
    private static final int SMILE_UNIT = 100;
    private static final String TAG = "SmileScore";
    private static final Paint[] sColorPaints;
    private int mFrameHeight;
    private float mIndicatorStep;
    private int mIndicatorWidth;
    private int mSmileScore;

    static;

    public SmileScore(Context var1);

    public SmileScore(Context var1, AttributeSet var2);

    public SmileScore(Context var1, AttributeSet var2, int var3);

    private RectF getSmileScoreRect(float var1, float var2, float var3, float var4);

    @Override
    public void draw(Canvas var1);

    protected boolean isForLandscape();

    @Override
    public void onDraw(Canvas var1);

    @Override
    public void onFinishInflate();

    public void setSmileScore(int var1);
}

