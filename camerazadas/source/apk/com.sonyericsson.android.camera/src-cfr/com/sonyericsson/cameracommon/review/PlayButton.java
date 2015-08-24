/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import com.sonyericsson.cameracommon.review.AutoReviewWindow;
import com.sonyericsson.cameracommon.review.ReviewMenuButton;
import com.sonyericsson.cameracommon.review.ReviewScreen;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;

public class PlayButton
extends ReviewMenuButton {
    public PlayButton(Context context) {
        super(context);
    }

    public PlayButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PlayButton(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    @Override
    public RotatableDialog select() {
        AutoReviewWindow.launchPlayer((Activity)this.getContext(), this.mReviewScreen.mUri, this.mReviewScreen.mMime);
        return null;
    }
}

