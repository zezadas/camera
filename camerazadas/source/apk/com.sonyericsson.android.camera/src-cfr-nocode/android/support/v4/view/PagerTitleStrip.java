/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.content.Context;
import android.database.DataSetObserver;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class PagerTitleStrip
extends ViewGroup
implements ViewPager.Decor {
    private static final int[] ATTRS;
    private static final PagerTitleStripImpl IMPL;
    private static final float SIDE_ALPHA = 0.6f;
    private static final String TAG = "PagerTitleStrip";
    private static final int[] TEXT_ATTRS;
    private static final int TEXT_SPACING = 16;
    TextView mCurrText;
    private int mGravity;
    private int mLastKnownCurrentPage;
    private float mLastKnownPositionOffset;
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

    static;

    public PagerTitleStrip(Context var1);

    public PagerTitleStrip(Context var1, AttributeSet var2);

    static /* synthetic */ float access$100(PagerTitleStrip var0);

    private static void setSingleLineAllCaps(TextView var0);

    int getMinHeight();

    public int getTextSpacing();

    @Override
    protected void onAttachedToWindow();

    @Override
    protected void onDetachedFromWindow();

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    protected void onMeasure(int var1, int var2);

    @Override
    public void requestLayout();

    public void setGravity(int var1);

    public void setNonPrimaryAlpha(float var1);

    public void setTextColor(int var1);

    public void setTextSize(int var1, float var2);

    public void setTextSpacing(int var1);

    void updateAdapter(PagerAdapter var1, PagerAdapter var2);

    void updateText(int var1, PagerAdapter var2);

    void updateTextPositions(int var1, float var2, boolean var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PageListener
    extends DataSetObserver
    implements ViewPager.OnPageChangeListener,
    ViewPager.OnAdapterChangeListener {
        private int mScrollState;
        final /* synthetic */ PagerTitleStrip this$0;

        private PageListener(PagerTitleStrip var1);

        /* synthetic */ PageListener(PagerTitleStrip var1,  var2);

        @Override
        public void onAdapterChanged(PagerAdapter var1, PagerAdapter var2);

        @Override
        public void onChanged();

        @Override
        public void onPageScrollStateChanged(int var1);

        @Override
        public void onPageScrolled(int var1, float var2, int var3);

        @Override
        public void onPageSelected(int var1);
    }

    static interface PagerTitleStripImpl {
        public void setSingleLineAllCaps(TextView var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class PagerTitleStripImplBase
    implements PagerTitleStripImpl {
        PagerTitleStripImplBase();

        @Override
        public void setSingleLineAllCaps(TextView var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class PagerTitleStripImplIcs
    implements PagerTitleStripImpl {
        PagerTitleStripImplIcs();

        @Override
        public void setSingleLineAllCaps(TextView var1);
    }

}

