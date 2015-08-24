/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import com.sonyericsson.cameracommon.review.AutoReviewWindow;
import com.sonyericsson.cameracommon.review.ReviewMenuButton;
import com.sonyericsson.cameracommon.review.ReviewScreen;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class EditButton
extends ReviewMenuButton {
    private static final String TAG = EditButton.class.getSimpleName();

    public EditButton(Context context) {
        super(context);
    }

    public EditButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EditButton(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public RotatableDialog select() {
        try {
            AutoReviewWindow.launchEditor((Activity)this.getContext(), this.mReviewScreen.mUri, this.mReviewScreen.mMime);
            do {
                return null;
                break;
            } while (true);
        }
        catch (ActivityNotFoundException var1_1) {
            CameraLogger.e(TAG, "launchEditor: failed.", var1_1);
            return null;
        }
    }
}

