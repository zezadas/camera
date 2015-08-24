/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.contentsview.contents.Content;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ContentPallet
extends RelativeLayout {
    private static final int INSERTANIMATION_DURATION = 300;
    private static final float INSERTANIMATION_FADE_END = 1.0f;
    private static final float INSERTANIMATION_FADE_START = 0.0f;
    private static final float INSERTANIMATION_SCALE_END = 1.0f;
    private static final float INSERTANIMATION_SCALE_START = 0.7f;
    private static final String TAG;
    private static final long intervalTime = 3000;
    private long curTime;
    private final ClickListener mClickListener;
    private Content mContent;
    private boolean mIsRequestHide;
    private int mRequestId;
    private ThumbnailClickListener mThumbnailClickListener;

    static;

    public ContentPallet(Context var1);

    public ContentPallet(Context var1, AttributeSet var2);

    static /* synthetic */ long access$100(ContentPallet var0);

    static /* synthetic */ Content access$200(ContentPallet var0);

    static /* synthetic */ ThumbnailClickListener access$300(ContentPallet var0);

    public void cancelRequestHide();

    Animation createInsertAnimation(Animation.AnimationListener var1);

    void disableClick();

    void enableClick();

    int getRequestId();

    public boolean hasContent();

    void initialize(int var1, ThumbnailClickListener var2);

    void release();

    public void requestHide();

    void set(Content var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ClickListener
    implements View.OnClickListener {
        final /* synthetic */ ContentPallet this$0;

        private ClickListener(ContentPallet var1);

        /* synthetic */ ClickListener(ContentPallet var1,  var2);

        @Override
        public void onClick(View var1);
    }

    public static interface ThumbnailClickListener {
        public void onClick(Content var1);
    }

}

