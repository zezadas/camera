/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.PagerTitleStrip;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/*
 * Exception performing whole class analysis.
 */
public class PagerTabStrip
extends PagerTitleStrip {
    private static final int FULL_UNDERLINE_HEIGHT = 1;
    private static final int INDICATOR_HEIGHT = 3;
    private static final int MIN_PADDING_BOTTOM = 6;
    private static final int MIN_STRIP_HEIGHT = 32;
    private static final int MIN_TEXT_SPACING = 64;
    private static final int TAB_PADDING = 16;
    private static final int TAB_SPACING = 32;
    private static final String TAG = "PagerTabStrip";
    private boolean mDrawFullUnderline;
    private boolean mDrawFullUnderlineSet;
    private int mFullUnderlineHeight;
    private boolean mIgnoreTap;
    private int mIndicatorColor;
    private int mIndicatorHeight;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private int mMinPaddingBottom;
    private int mMinStripHeight;
    private int mMinTextSpacing;
    private int mTabAlpha;
    private int mTabPadding;
    private final Paint mTabPaint;
    private final Rect mTempRect;
    private int mTouchSlop;

    public PagerTabStrip(Context var1);

    public PagerTabStrip(Context var1, AttributeSet var2);

    public boolean getDrawFullUnderline();

    @Override
    int getMinHeight();

    public int getTabIndicatorColor();

    @Override
    protected void onDraw(Canvas var1);

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    @Override
    public void setBackgroundColor(int var1);

    @Override
    public void setBackgroundDrawable(Drawable var1);

    @Override
    public void setBackgroundResource(int var1);

    public void setDrawFullUnderline(boolean var1);

    @Override
    public void setPadding(int var1, int var2, int var3, int var4);

    public void setTabIndicatorColor(int var1);

    public void setTabIndicatorColorResource(int var1);

    @Override
    public void setTextSpacing(int var1);

    @Override
    void updateTextPositions(int var1, float var2, boolean var3);

}

