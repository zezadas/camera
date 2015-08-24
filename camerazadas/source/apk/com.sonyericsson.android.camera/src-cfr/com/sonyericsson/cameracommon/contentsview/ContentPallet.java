/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class ContentPallet
extends RelativeLayout {
    private static final int INSERTANIMATION_DURATION = 300;
    private static final float INSERTANIMATION_FADE_END = 1.0f;
    private static final float INSERTANIMATION_FADE_START = 0.0f;
    private static final float INSERTANIMATION_SCALE_END = 1.0f;
    private static final float INSERTANIMATION_SCALE_START = 0.7f;
    private static final String TAG = ContentPallet.class.getSimpleName();
    private static final long intervalTime = 3000;
    private long curTime = 0;
    private final ClickListener mClickListener;
    private Content mContent;
    private boolean mIsRequestHide;
    private int mRequestId;
    private ThumbnailClickListener mThumbnailClickListener;

    public ContentPallet(Context context) {
        super(context);
        this.mClickListener = new ClickListener();
    }

    public ContentPallet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mClickListener = new ClickListener();
    }

    public void cancelRequestHide() {
        this.mIsRequestHide = false;
    }

    Animation createInsertAnimation(Animation.AnimationListener animationListener) {
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(new ScaleAnimation(0.7f, 1.0f, 0.7f, 1.0f, (float)this.getMeasuredWidth() / 2.0f, (float)this.getMeasuredHeight() / 2.0f));
        animationSet.addAnimation(new AlphaAnimation(0.0f, 1.0f));
        animationSet.setInterpolator(new DecelerateInterpolator());
        animationSet.setDuration(300);
        animationSet.setAnimationListener(animationListener);
        return animationSet;
    }

    void disableClick() {
        this.findViewById(R.id.content_thumbnail_frame).setOnClickListener(null);
        this.findViewById(R.id.content_progress_bar).setClickable(false);
    }

    void enableClick() {
        this.findViewById(R.id.content_thumbnail_frame).setOnClickListener(this.mClickListener);
        this.findViewById(R.id.content_progress_bar).setClickable(true);
    }

    int getRequestId() {
        return this.mRequestId;
    }

    public boolean hasContent() {
        if (this.mContent != null) {
            return true;
        }
        return false;
    }

    void initialize(int n, ThumbnailClickListener thumbnailClickListener) {
        this.mRequestId = n;
        this.mThumbnailClickListener = thumbnailClickListener;
        this.findViewById(R.id.content_thumbnail_frame).setOnClickListener(this.mClickListener);
    }

    void release() {
        if (this.mContent != null) {
            Bitmap bitmap = this.mContent.getThumbnail();
            if (!(bitmap == null || bitmap.isRecycled())) {
                bitmap.recycle();
            }
            this.mContent = null;
        }
        this.findViewById(R.id.content_thumbnail_frame).setOnClickListener(null);
    }

    public void requestHide() {
        this.mIsRequestHide = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    void set(Content content) {
        this.mContent = content;
        Object object = (ProgressBar)this.findViewById(R.id.content_progress_bar);
        object.setVisibility(4);
        object.setOnClickListener(null);
        object = (ImageView)this.findViewById(R.id.content_thumbnail);
        Bitmap bitmap = content.getThumbnail();
        if (bitmap != null) {
            object.setImageBitmap(bitmap);
        } else {
            object = new ImageView(this.getContext());
            this.addView((View)object);
            object.getLayoutParams().width = -2;
            object.getLayoutParams().height = -2;
            ((RelativeLayout.LayoutParams)object.getLayoutParams()).addRule(13);
            object.setImageResource(R.drawable.cam_photo_stack_file_corrupted_icn);
        }
        if (content.shouldShowPlayableIcon()) {
            object = new ImageView(this.getContext());
            this.addView((View)object);
            object.getLayoutParams().width = -2;
            object.getLayoutParams().height = -2;
            ((RelativeLayout.LayoutParams)object.getLayoutParams()).addRule(13);
            object.setImageResource(content.getPlayIconResourceId());
        }
        if (content.shouldShowExtraIcon()) {
            object = ((Activity)this.getContext()).getLayoutInflater();
            if (object != null) {
                ((ImageView)object.inflate(R.layout.content_extra_icon, (ViewGroup)this).findViewById(R.id.content_extra_icon_image)).setBackgroundResource(content.getExtraIconResourceId());
            } else {
                CameraLogger.w(TAG, "could not get inflater.");
            }
        }
        this.findViewById(R.id.content_thumbnail_frame).setVisibility(0);
        if (this.mIsRequestHide) {
            this.setVisibility(4);
        }
    }

    private class ClickListener
    implements View.OnClickListener {
        private ClickListener() {
        }

        @Override
        public void onClick(View view) {
            if (System.currentTimeMillis() - ContentPallet.this.curTime > 3000 && ContentPallet.this.mContent != null && ContentPallet.this.mThumbnailClickListener != null) {
                ContentPallet.this.mThumbnailClickListener.onClick(ContentPallet.this.mContent);
            }
        }
    }

    public static interface ThumbnailClickListener {
        public void onClick(Content var1);
    }

}

