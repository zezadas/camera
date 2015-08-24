/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.view.View;
import android.view.animation.Animation;
import android.widget.ProgressBar;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;

public class PreloadThumbnail
implements Animation.AnimationListener {
    private static final String TAG = PreloadThumbnail.class.getSimpleName();
    private final ContentsViewController mContentsViewController;
    private boolean mIsAnimationEnd;
    private boolean mIsContentCreated;
    private int mRequestId;
    private final View mThumbnail;

    public PreloadThumbnail(ContentsViewController contentsViewController, View view) {
        if (contentsViewController == null) {
            throw new IllegalArgumentException("contentsViewController should not be null.");
        }
        if (view == null) {
            throw new IllegalArgumentException("Thumbnail view should not be null.");
        }
        this.mContentsViewController = contentsViewController;
        this.mThumbnail = view;
    }

    public void disableClick() {
        if (this.mThumbnail != null && this.mThumbnail.findViewById(R.id.content_progress_bar) != null) {
            this.mThumbnail.findViewById(R.id.content_progress_bar).setClickable(false);
        }
    }

    public void enableClick() {
        if (this.mThumbnail != null && this.mThumbnail.findViewById(R.id.content_progress_bar) != null) {
            this.mThumbnail.findViewById(R.id.content_progress_bar).setClickable(true);
        }
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    public View getThumbnailView() {
        return this.mThumbnail;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onAnimationEnd(Animation animation) {
        this.mIsAnimationEnd = true;
        if (this.mIsContentCreated) {
            this.mContentsViewController.removeEarlyThumbnailView();
            return;
        } else {
            if (this.mThumbnail == null) return;
            {
                ((ProgressBar)this.mThumbnail.findViewById(R.id.content_progress_bar)).setVisibility(0);
                return;
            }
        }
    }

    @Override
    public void onAnimationRepeat(Animation animation) {
    }

    @Override
    public void onAnimationStart(Animation animation) {
        this.mIsAnimationEnd = false;
    }

    public void onContentCreated() {
        this.mIsContentCreated = true;
        if (this.mIsAnimationEnd) {
            this.mContentsViewController.removeEarlyThumbnailView();
        }
    }

    public void prepareAnimation() {
        this.mIsContentCreated = false;
        this.mIsAnimationEnd = true;
    }

    public void setRequestId(int n) {
        this.mRequestId = n;
    }
}

