/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.review.ReviewMenuButton;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class ReviewScreen
extends FrameLayout {
    private static final String TAG;
    protected View mAutoReviewRight;
    protected List<ReviewMenuButton> mButtonList;
    private RotatableDialog mDialog;
    private int mDisplayOrientation;
    protected boolean mHasMpo;
    protected String mMime;
    private Rect mOrientedPictureSize;
    protected ImageView mPictureImage;
    protected Uri mUri;

    static;

    public ReviewScreen(Context var1);

    public ReviewScreen(Context var1, AttributeSet var2);

    public ReviewScreen(Context var1, AttributeSet var2, int var3);

    private Bitmap rotateThumbnail(Bitmap var1, int var2);

    private void setVisible(boolean var1);

    private void setVisiblePlayIcon(boolean var1);

    abstract void backToViewFinder();

    protected void cancelDialog();

    public void clearScreen();

    abstract ContentResolverUtilListener getContentResolverUtilListener();

    abstract MessagePopup getMessagePopup();

    public Uri getUri();

    public void hideScreen();

    @Override
    protected void onDetachedFromWindow();

    @Override
    protected void onFinishInflate();

    protected void setCurrentDialog(RotatableDialog var1);

    public void setOrientation(int var1);

    public void setUri(Uri var1);

    public void setUri(Uri var1, boolean var2);

    public boolean setupScreen(Activity var1, Uri var2, byte[] var3, String var4, String var5, Rect var6, int var7, int var8, boolean var9);

    public void showRightIcons(Boolean var1);

    public void showScreen();

    public void updatePictureImageLayout(int var1, Rect var2);
}

