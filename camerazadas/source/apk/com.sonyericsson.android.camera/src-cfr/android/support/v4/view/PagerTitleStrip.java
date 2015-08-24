/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.PagerTitleStripIcs;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;

public class PagerTitleStrip
extends ViewGroup
implements ViewPager.Decor {
    private static final int[] ATTRS = new int[]{16842804, 16842901, 16842904, 16842927};
    private static final PagerTitleStripImpl IMPL;
    private static final float SIDE_ALPHA = 0.6f;
    private static final String TAG = "PagerTitleStrip";
    private static final int[] TEXT_ATTRS;
    private static final int TEXT_SPACING = 16;
    TextView mCurrText;
    private int mGravity;
    private int mLastKnownCurrentPage = -1;
    private float mLastKnownPositionOffset = -1.0f;
    TextView mNextText;
    private int mNonPrimaryAlpha;
    private final PageListener mPageListener;
    ViewPager mPager;
    TextView mPrevText;
    private int mScaledTextSpacing;
    int mTextColor;
    private boolean mUpdatingPositions;
    private boolean mUpdatingText;
    private WeakReference<PagerAdapter> mWatchingAdapter;

    static {
        TEXT_ATTRS = new int[]{16843660};
        if (Build.VERSION.SDK_INT >= 14) {
            IMPL = new PagerTitleStripImplIcs();
            return;
        }
        IMPL = new PagerTitleStripImplBase();
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public PagerTitleStrip(Context var1_1, AttributeSet var2_2) {
        super(var1_1, (AttributeSet)var2_2);
        this.mPageListener = new PageListener();
        this.mPrevText = var6_3 = new TextView(var1_1);
        this.addView(var6_3);
        this.mCurrText = var6_3 = new TextView(var1_1);
        this.addView(var6_3);
        this.mNextText = var6_3 = new TextView(var1_1);
        this.addView(var6_3);
        var2_2 = var1_1.obtainStyledAttributes((AttributeSet)var2_2, PagerTitleStrip.ATTRS);
        var3_4 = var2_2.getResourceId(0, 0);
        if (var3_4 != 0) {
            this.mPrevText.setTextAppearance(var1_1, var3_4);
            this.mCurrText.setTextAppearance(var1_1, var3_4);
            this.mNextText.setTextAppearance(var1_1, var3_4);
        }
        if ((var4_5 = var2_2.getDimensionPixelSize(1, 0)) != 0) {
            this.setTextSize(0, var4_5);
        }
        if (var2_2.hasValue(2)) {
            var4_5 = var2_2.getColor(2, 0);
            this.mPrevText.setTextColor(var4_5);
            this.mCurrText.setTextColor(var4_5);
            this.mNextText.setTextColor(var4_5);
        }
        this.mGravity = var2_2.getInteger(3, 80);
        var2_2.recycle();
        this.mTextColor = this.mCurrText.getTextColors().getDefaultColor();
        this.setNonPrimaryAlpha(0.6f);
        this.mPrevText.setEllipsize(TextUtils.TruncateAt.END);
        this.mCurrText.setEllipsize(TextUtils.TruncateAt.END);
        this.mNextText.setEllipsize(TextUtils.TruncateAt.END);
        var5_6 = false;
        if (var3_4 == 0) ** GOTO lbl-1000
        var2_2 = var1_1.obtainStyledAttributes(var3_4, PagerTitleStrip.TEXT_ATTRS);
        var5_6 = var2_2.getBoolean(0, false);
        var2_2.recycle();
        if (var5_6) {
            PagerTitleStrip.setSingleLineAllCaps(this.mPrevText);
            PagerTitleStrip.setSingleLineAllCaps(this.mCurrText);
            PagerTitleStrip.setSingleLineAllCaps(this.mNextText);
        } else lbl-1000: // 2 sources:
        {
            this.mPrevText.setSingleLine();
            this.mCurrText.setSingleLine();
            this.mNextText.setSingleLine();
        }
        this.mScaledTextSpacing = (int)(16.0f * var1_1.getResources().getDisplayMetrics().density);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        IMPL.setSingleLineAllCaps(textView);
    }

    int getMinHeight() {
        int n = 0;
        Drawable drawable = this.getBackground();
        if (drawable != null) {
            n = drawable.getIntrinsicHeight();
        }
        return n;
    }

    public int getTextSpacing() {
        return this.mScaledTextSpacing;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Object object = this.getParent();
        if (!(object instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        object = (ViewPager)object;
        PagerAdapter pagerAdapter = object.getAdapter();
        object.setInternalPageChangeListener(this.mPageListener);
        object.setOnAdapterChangeListener(this.mPageListener);
        this.mPager = object;
        object = this.mWatchingAdapter != null ? this.mWatchingAdapter.get() : null;
        this.updateAdapter((PagerAdapter)object, pagerAdapter);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mPager != null) {
            this.updateAdapter(this.mPager.getAdapter(), null);
            this.mPager.setInternalPageChangeListener(null);
            this.mPager.setOnAdapterChangeListener(null);
            this.mPager = null;
        }
    }

    @Override
    protected void onLayout(boolean bl, int n, int n2, int n3, int n4) {
        float f = 0.0f;
        if (this.mPager != null) {
            if (this.mLastKnownPositionOffset >= 0.0f) {
                f = this.mLastKnownPositionOffset;
            }
            this.updateTextPositions(this.mLastKnownCurrentPage, f, true);
        }
    }

    @Override
    protected void onMeasure(int n, int n2) {
        int n3 = View.MeasureSpec.getMode(n);
        int n4 = View.MeasureSpec.getMode(n2);
        n = View.MeasureSpec.getSize(n);
        n2 = View.MeasureSpec.getSize(n2);
        if (n3 != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        n3 = this.getMinHeight();
        int n5 = this.getPaddingTop() + this.getPaddingBottom();
        int n6 = View.MeasureSpec.makeMeasureSpec((int)((float)n * 0.8f), Integer.MIN_VALUE);
        int n7 = View.MeasureSpec.makeMeasureSpec(n2 - n5, Integer.MIN_VALUE);
        this.mPrevText.measure(n6, n7);
        this.mCurrText.measure(n6, n7);
        this.mNextText.measure(n6, n7);
        if (n4 == 1073741824) {
            this.setMeasuredDimension(n, n2);
            return;
        }
        this.setMeasuredDimension(n, Math.max(n3, this.mCurrText.getMeasuredHeight() + n5));
    }

    @Override
    public void requestLayout() {
        if (!this.mUpdatingText) {
            super.requestLayout();
        }
    }

    public void setGravity(int n) {
        this.mGravity = n;
        this.requestLayout();
    }

    public void setNonPrimaryAlpha(float f) {
        this.mNonPrimaryAlpha = (int)(255.0f * f) & 255;
        int n = this.mNonPrimaryAlpha << 24 | this.mTextColor & 16777215;
        this.mPrevText.setTextColor(n);
        this.mNextText.setTextColor(n);
    }

    public void setTextColor(int n) {
        this.mTextColor = n;
        this.mCurrText.setTextColor(n);
        n = this.mNonPrimaryAlpha << 24 | this.mTextColor & 16777215;
        this.mPrevText.setTextColor(n);
        this.mNextText.setTextColor(n);
    }

    public void setTextSize(int n, float f) {
        this.mPrevText.setTextSize(n, f);
        this.mCurrText.setTextSize(n, f);
        this.mNextText.setTextSize(n, f);
    }

    public void setTextSpacing(int n) {
        this.mScaledTextSpacing = n;
        this.requestLayout();
    }

    void updateAdapter(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        if (pagerAdapter != null) {
            pagerAdapter.unregisterDataSetObserver(this.mPageListener);
            this.mWatchingAdapter = null;
        }
        if (pagerAdapter2 != null) {
            pagerAdapter2.registerDataSetObserver(this.mPageListener);
            this.mWatchingAdapter = new WeakReference<PagerAdapter>(pagerAdapter2);
        }
        if (this.mPager != null) {
            this.mLastKnownCurrentPage = -1;
            this.mLastKnownPositionOffset = -1.0f;
            this.updateText(this.mPager.getCurrentItem(), pagerAdapter2);
            this.requestLayout();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void updateText(int n, PagerAdapter pagerAdapter) {
        TextView textView;
        int n2 = pagerAdapter != null ? pagerAdapter.getCount() : 0;
        this.mUpdatingText = true;
        Object object = textView = null;
        if (n >= 1) {
            object = textView;
            if (pagerAdapter != null) {
                object = pagerAdapter.getPageTitle(n - 1);
            }
        }
        this.mPrevText.setText((CharSequence)object);
        textView = this.mCurrText;
        object = pagerAdapter != null && n < n2 ? pagerAdapter.getPageTitle(n) : null;
        textView.setText((CharSequence)object);
        object = textView = null;
        if (n + 1 < n2) {
            object = textView;
            if (pagerAdapter != null) {
                object = pagerAdapter.getPageTitle(n + 1);
            }
        }
        this.mNextText.setText((CharSequence)object);
        int n3 = this.getWidth();
        int n4 = this.getPaddingLeft();
        int n5 = this.getPaddingRight();
        n2 = this.getHeight();
        int n6 = this.getPaddingTop();
        int n7 = this.getPaddingBottom();
        n3 = View.MeasureSpec.makeMeasureSpec((int)((float)(n3 - n4 - n5) * 0.8f), Integer.MIN_VALUE);
        n2 = View.MeasureSpec.makeMeasureSpec(n2 - n6 - n7, Integer.MIN_VALUE);
        this.mPrevText.measure(n3, n2);
        this.mCurrText.measure(n3, n2);
        this.mNextText.measure(n3, n2);
        this.mLastKnownCurrentPage = n;
        if (!this.mUpdatingPositions) {
            this.updateTextPositions(n, this.mLastKnownPositionOffset, false);
        }
        this.mUpdatingText = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    void updateTextPositions(int n, float f, boolean bl) {
        float f2;
        if (n != this.mLastKnownCurrentPage) {
            this.updateText(n, this.mPager.getAdapter());
        } else if (!(bl || f != this.mLastKnownPositionOffset)) {
            return;
        }
        this.mUpdatingPositions = true;
        int n2 = this.mPrevText.getMeasuredWidth();
        int n3 = this.mCurrText.getMeasuredWidth();
        int n4 = this.mNextText.getMeasuredWidth();
        int n5 = n3 / 2;
        int n6 = this.getWidth();
        int n7 = this.getHeight();
        int n8 = this.getPaddingLeft();
        int n9 = this.getPaddingRight();
        n = this.getPaddingTop();
        int n10 = this.getPaddingBottom();
        int n11 = n9 + n5;
        float f3 = f2 = f + 0.5f;
        if (f2 > 1.0f) {
            f3 = f2 - 1.0f;
        }
        n5 = n6 - n11 - (int)((float)(n6 - (n8 + n5) - n11) * f3) - n3 / 2;
        n3 = n5 + n3;
        int n12 = this.mPrevText.getBaseline();
        int n13 = this.mCurrText.getBaseline();
        n11 = this.mNextText.getBaseline();
        int n14 = Math.max(Math.max(n12, n13), n11);
        n12 = n14 - n12;
        n13 = n14 - n13;
        n11 = n14 - n11;
        n14 = this.mPrevText.getMeasuredHeight();
        int n15 = this.mCurrText.getMeasuredHeight();
        int n16 = this.mNextText.getMeasuredHeight();
        n14 = Math.max(Math.max(n12 + n14, n13 + n15), n11 + n16);
        switch (this.mGravity & 112) {
            default: {
                n10 = n + n12;
                n7 = n + n13;
                n+=n11;
                break;
            }
            case 16: {
                n = (n7 - n - n10 - n14) / 2;
                n10 = n + n12;
                n7 = n + n13;
                n+=n11;
                break;
            }
            case 80: {
                n = n7 - n10 - n14;
                n10 = n + n12;
                n7 = n + n13;
                n+=n11;
            }
        }
        this.mCurrText.layout(n5, n7, n3, this.mCurrText.getMeasuredHeight() + n7);
        n7 = Math.min(n8, n5 - this.mScaledTextSpacing - n2);
        this.mPrevText.layout(n7, n10, n7 + n2, this.mPrevText.getMeasuredHeight() + n10);
        n7 = Math.max(n6 - n9 - n4, this.mScaledTextSpacing + n3);
        this.mNextText.layout(n7, n, n7 + n4, this.mNextText.getMeasuredHeight() + n);
        this.mLastKnownPositionOffset = f;
        this.mUpdatingPositions = false;
    }

    private class PageListener
    extends DataSetObserver
    implements ViewPager.OnPageChangeListener,
    ViewPager.OnAdapterChangeListener {
        private int mScrollState;

        private PageListener() {
        }

        @Override
        public void onAdapterChanged(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            PagerTitleStrip.this.updateAdapter(pagerAdapter, pagerAdapter2);
        }

        @Override
        public void onChanged() {
            float f = 0.0f;
            PagerTitleStrip.this.updateText(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
            if (PagerTitleStrip.this.mLastKnownPositionOffset >= 0.0f) {
                f = PagerTitleStrip.this.mLastKnownPositionOffset;
            }
            PagerTitleStrip.this.updateTextPositions(PagerTitleStrip.this.mPager.getCurrentItem(), f, true);
        }

        @Override
        public void onPageScrollStateChanged(int n) {
            this.mScrollState = n;
        }

        @Override
        public void onPageScrolled(int n, float f, int n2) {
            n2 = n;
            if (f > 0.5f) {
                n2 = n + 1;
            }
            PagerTitleStrip.this.updateTextPositions(n2, f, false);
        }

        @Override
        public void onPageSelected(int n) {
            float f = 0.0f;
            if (this.mScrollState == 0) {
                PagerTitleStrip.this.updateText(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
                if (PagerTitleStrip.this.mLastKnownPositionOffset >= 0.0f) {
                    f = PagerTitleStrip.this.mLastKnownPositionOffset;
                }
                PagerTitleStrip.this.updateTextPositions(PagerTitleStrip.this.mPager.getCurrentItem(), f, true);
            }
        }
    }

    static interface PagerTitleStripImpl {
        public void setSingleLineAllCaps(TextView var1);
    }

    static class PagerTitleStripImplBase
    implements PagerTitleStripImpl {
        PagerTitleStripImplBase() {
        }

        @Override
        public void setSingleLineAllCaps(TextView textView) {
            textView.setSingleLine();
        }
    }

    static class PagerTitleStripImplIcs
    implements PagerTitleStripImpl {
        PagerTitleStripImplIcs() {
        }

        @Override
        public void setSingleLineAllCaps(TextView textView) {
            PagerTitleStripIcs.setSingleLineAllCaps(textView);
        }
    }

}

