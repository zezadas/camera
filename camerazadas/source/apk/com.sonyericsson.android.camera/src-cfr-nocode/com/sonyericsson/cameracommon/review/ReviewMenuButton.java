/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.review.OnSelectedReviewMenuButtonListener;
import com.sonyericsson.cameracommon.review.ReviewScreen;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class ReviewMenuButton
extends ImageView {
    private static final String TAG;
    private final View.OnClickListener mOnClickListener;
    private OnSelectedReviewMenuButtonListener mOnSelectedListener;
    protected ReviewScreen mReviewScreen;

    static;

    public ReviewMenuButton(Context var1);

    public ReviewMenuButton(Context var1, AttributeSet var2);

    public ReviewMenuButton(Context var1, AttributeSet var2, int var3);

    static /* synthetic */ void access$000(ReviewMenuButton var0, RotatableDialog var1);

    static /* synthetic */ void access$100(ReviewMenuButton var0);

    private void notifySelected();

    private void notifySelected(RotatableDialog var1);

    protected MessagePopup getMessagePopup();

    @Override
    protected void onAttachedToWindow();

    @Override
    protected void onDetachedFromWindow();

    protected abstract RotatableDialog select();

    public void setOnSelectedListener(OnSelectedReviewMenuButtonListener var1);

    public void setReviewScreen(ReviewScreen var1);

}

