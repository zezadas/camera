/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/*
 * Exception performing whole class analysis.
 */
public class ContentLoadingProgressBar
extends ProgressBar {
    private static final int MIN_DELAY = 500;
    private static final int MIN_SHOW_TIME = 500;
    private final Runnable mDelayedHide;
    private final Runnable mDelayedShow;
    private boolean mDismissed;
    private boolean mPostedHide;
    private boolean mPostedShow;
    private long mStartTime;

    public ContentLoadingProgressBar(Context var1);

    public ContentLoadingProgressBar(Context var1, AttributeSet var2);

    static /* synthetic */ boolean access$002(ContentLoadingProgressBar var0, boolean var1);

    static /* synthetic */ long access$102(ContentLoadingProgressBar var0, long var1);

    static /* synthetic */ boolean access$202(ContentLoadingProgressBar var0, boolean var1);

    static /* synthetic */ boolean access$300(ContentLoadingProgressBar var0);

    private void removeCallbacks();

    public void hide();

    @Override
    public void onAttachedToWindow();

    @Override
    public void onDetachedFromWindow();

    public void show();

}

