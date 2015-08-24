/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.ViewParent;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.focusview.SmileGauge;

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
    private static final Paint[] sColorPaints = new Paint[100];
    private int mFrameHeight;
    private float mIndicatorStep;
    private int mIndicatorWidth;
    private int mSmileScore;

    static {
        for (int i = 0; i < 100; ++i) {
            Paint paint = new Paint();
            paint.setARGB((int)(178.0f + (float)i * 0.0f), (int)(0.51f * (float)i + 0.0f), (int)(153.0f + 0.28f * (float)i), (int)(204.0f + 0.25f * (float)i));
            SmileScore.sColorPaints[i] = paint;
        }
    }

    public SmileScore(Context context) {
        this(context, null);
    }

    public SmileScore(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SmileScore(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    /*
     * Enabled aggressive block sorting
     */
    private RectF getSmileScoreRect(float f, float f2, float f3, float f4) {
        RectF rectF = new RectF();
        if (this.isForLandscape()) {
            rectF.set(f, f2, f3, f4);
            return rectF;
        } else {
            rectF.set(f2, f, f4, f3);
            if (rectF.left > rectF.right) {
                rectF.left = f4;
                rectF.right = f2;
            }
            if (rectF.top <= rectF.bottom) return rectF;
            {
                rectF.top = f3;
                rectF.bottom = f;
                return rectF;
            }
        }
    }

    @Override
    public void draw(Canvas canvas) {
        int n = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_padding_left);
        int n2 = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_frame_padding_left);
        int n3 = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_frame_padding_bottom);
        float f = n + n2;
        float f2 = this.mFrameHeight - n3;
        float f3 = this.mIndicatorWidth;
        n = 0;
        do {
            if (n >= 100 || this.mSmileScore < n) {
                super.draw(canvas);
                return;
            }
            float f4 = this.mIndicatorStep;
            if (f2 > (float)n3) {
                canvas.drawRect(this.getSmileScoreRect(f, f2, f + f3, f2 + f4), sColorPaints[n]);
            }
            f2-=this.mIndicatorStep;
            ++n;
        } while (true);
    }

    protected boolean isForLandscape() {
        return ((SmileGauge)this.getParent()).isForLandscape();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSmileScore = 0;
        this.mFrameHeight = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_frame_height);
        this.mIndicatorWidth = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_indicator_width);
        this.mIndicatorStep = (float)this.mFrameHeight / 100.0f;
    }

    public void setSmileScore(int n) {
        this.mSmileScore = n;
    }
}

