/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.PagerTitleStrip;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.TextView;

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
    private boolean mDrawFullUnderline = false;
    private boolean mDrawFullUnderlineSet = false;
    private int mFullUnderlineHeight;
    private boolean mIgnoreTap;
    private int mIndicatorColor;
    private int mIndicatorHeight;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private int mMinPaddingBottom;
    private int mMinStripHeight;
    private int mMinTextSpacing;
    private int mTabAlpha = 255;
    private int mTabPadding;
    private final Paint mTabPaint = new Paint();
    private final Rect mTempRect = new Rect();
    private int mTouchSlop;

    public PagerTabStrip(Context context) {
        this(context, null);
    }

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIndicatorColor = this.mTextColor;
        this.mTabPaint.setColor(this.mIndicatorColor);
        float f = context.getResources().getDisplayMetrics().density;
        this.mIndicatorHeight = (int)(3.0f * f + 0.5f);
        this.mMinPaddingBottom = (int)(6.0f * f + 0.5f);
        this.mMinTextSpacing = (int)(64.0f * f);
        this.mTabPadding = (int)(16.0f * f + 0.5f);
        this.mFullUnderlineHeight = (int)(1.0f * f + 0.5f);
        this.mMinStripHeight = (int)(32.0f * f + 0.5f);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.setPadding(this.getPaddingLeft(), this.getPaddingTop(), this.getPaddingRight(), this.getPaddingBottom());
        this.setTextSpacing(this.getTextSpacing());
        this.setWillNotDraw(false);
        this.mPrevText.setFocusable(true);
        this.mPrevText.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View view) {
                PagerTabStrip.this.mPager.setCurrentItem(PagerTabStrip.this.mPager.getCurrentItem() - 1);
            }
        });
        this.mNextText.setFocusable(true);
        this.mNextText.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View view) {
                PagerTabStrip.this.mPager.setCurrentItem(PagerTabStrip.this.mPager.getCurrentItem() + 1);
            }
        });
        if (this.getBackground() == null) {
            this.mDrawFullUnderline = true;
        }
    }

    public boolean getDrawFullUnderline() {
        return this.mDrawFullUnderline;
    }

    @Override
    int getMinHeight() {
        return Math.max(super.getMinHeight(), this.mMinStripHeight);
    }

    public int getTabIndicatorColor() {
        return this.mIndicatorColor;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int n = this.getHeight();
        int n2 = this.mCurrText.getLeft();
        int n3 = this.mTabPadding;
        int n4 = this.mCurrText.getRight();
        int n5 = this.mTabPadding;
        int n6 = this.mIndicatorHeight;
        this.mTabPaint.setColor(this.mTabAlpha << 24 | this.mIndicatorColor & 16777215);
        canvas.drawRect(n2 - n3, n - n6, n4 + n5, n, this.mTabPaint);
        if (this.mDrawFullUnderline) {
            this.mTabPaint.setColor(-16777216 | this.mIndicatorColor & 16777215);
            canvas.drawRect(this.getPaddingLeft(), n - this.mFullUnderlineHeight, this.getWidth() - this.getPaddingRight(), n, this.mTabPaint);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean onTouchEvent(MotionEvent var1_1) {
        var4_2 = var1_1.getAction();
        if (var4_2 != 0 && this.mIgnoreTap) {
            return false;
        }
        var2_3 = var1_1.getX();
        var3_4 = var1_1.getY();
        switch (var4_2) {
            case 0: {
                this.mInitialMotionX = var2_3;
                this.mInitialMotionY = var3_4;
                this.mIgnoreTap = false;
                ** break;
            }
            case 2: {
                if (Math.abs(var2_3 - this.mInitialMotionX) <= (float)this.mTouchSlop) {
                    if (Math.abs(var3_4 - this.mInitialMotionY) <= (float)this.mTouchSlop) return true;
                }
                this.mIgnoreTap = true;
            }
lbl16: // 3 sources:
            default: {
                return true;
            }
            case 1: 
        }
        if (var2_3 < (float)(this.mCurrText.getLeft() - this.mTabPadding)) {
            this.mPager.setCurrentItem(this.mPager.getCurrentItem() - 1);
            return true;
        }
        if (var2_3 <= (float)(this.mCurrText.getRight() + this.mTabPadding)) return true;
        this.mPager.setCurrentItem(this.mPager.getCurrentItem() + 1);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setBackgroundColor(int n) {
        super.setBackgroundColor(n);
        if (!this.mDrawFullUnderlineSet) {
            boolean bl = (-16777216 & n) == 0;
            this.mDrawFullUnderline = bl;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (!this.mDrawFullUnderlineSet) {
            boolean bl = drawable == null;
            this.mDrawFullUnderline = bl;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setBackgroundResource(int n) {
        super.setBackgroundResource(n);
        if (!this.mDrawFullUnderlineSet) {
            boolean bl = n == 0;
            this.mDrawFullUnderline = bl;
        }
    }

    public void setDrawFullUnderline(boolean bl) {
        this.mDrawFullUnderline = bl;
        this.mDrawFullUnderlineSet = true;
        this.invalidate();
    }

    @Override
    public void setPadding(int n, int n2, int n3, int n4) {
        int n5 = n4;
        if (n4 < this.mMinPaddingBottom) {
            n5 = this.mMinPaddingBottom;
        }
        super.setPadding(n, n2, n3, n5);
    }

    public void setTabIndicatorColor(int n) {
        this.mIndicatorColor = n;
        this.mTabPaint.setColor(this.mIndicatorColor);
        this.invalidate();
    }

    public void setTabIndicatorColorResource(int n) {
        this.setTabIndicatorColor(this.getContext().getResources().getColor(n));
    }

    @Override
    public void setTextSpacing(int n) {
        int n2 = n;
        if (n < this.mMinTextSpacing) {
            n2 = this.mMinTextSpacing;
        }
        super.setTextSpacing(n2);
    }

    @Override
    void updateTextPositions(int n, float f, boolean bl) {
        Rect rect = this.mTempRect;
        int n2 = this.getHeight();
        int n3 = this.mCurrText.getLeft();
        int n4 = this.mTabPadding;
        int n5 = this.mCurrText.getRight();
        int n6 = this.mTabPadding;
        int n7 = n2 - this.mIndicatorHeight;
        rect.set(n3 - n4, n7, n5 + n6, n2);
        super.updateTextPositions(n, f, bl);
        this.mTabAlpha = (int)(Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.mCurrText.getLeft() - this.mTabPadding, n7, this.mCurrText.getRight() + this.mTabPadding, n2);
        this.invalidate(rect);
    }

}

