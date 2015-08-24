/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.Interpolator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
final class SwipeProgressBar {
    private static final int ANIMATION_DURATION_MS = 2000;
    private static final int COLOR1 = -1291845632;
    private static final int COLOR2 = Integer.MIN_VALUE;
    private static final int COLOR3 = 1291845632;
    private static final int COLOR4 = 436207616;
    private static final int FINISH_ANIMATION_DURATION_MS = 1000;
    private static final Interpolator INTERPOLATOR;
    private Rect mBounds;
    private final RectF mClipRect;
    private int mColor1;
    private int mColor2;
    private int mColor3;
    private int mColor4;
    private long mFinishTime;
    private final Paint mPaint;
    private View mParent;
    private boolean mRunning;
    private long mStartTime;
    private float mTriggerPercentage;

    static;

    public SwipeProgressBar(View var1);

    private void drawCircle(Canvas var1, float var2, float var3, int var4, float var5);

    private void drawTrigger(Canvas var1, int var2, int var3);

    void draw(Canvas var1);

    boolean isRunning();

    void setBounds(int var1, int var2, int var3, int var4);

    void setColorScheme(int var1, int var2, int var3, int var4);

    void setTriggerPercentage(float var1);

    void start();

    void stop();
}

