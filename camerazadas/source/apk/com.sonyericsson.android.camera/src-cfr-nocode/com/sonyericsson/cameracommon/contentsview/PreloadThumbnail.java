/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.view.View;
import android.view.animation.Animation;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class PreloadThumbnail
implements Animation.AnimationListener {
    private static final String TAG;
    private final ContentsViewController mContentsViewController;
    private boolean mIsAnimationEnd;
    private boolean mIsContentCreated;
    private int mRequestId;
    private final View mThumbnail;

    static;

    public PreloadThumbnail(ContentsViewController var1, View var2);

    public void disableClick();

    public void enableClick();

    public int getRequestId();

    public View getThumbnailView();

    @Override
    public void onAnimationEnd(Animation var1);

    @Override
    public void onAnimationRepeat(Animation var1);

    @Override
    public void onAnimationStart(Animation var1);

    public void onContentCreated();

    public void prepareAnimation();

    public void setRequestId(int var1);
}

