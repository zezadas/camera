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

public class ViewButton
extends ReviewMenuButton {
    private static final String TAG = ViewButton.class.getSimpleName();

    public ViewButton(Context context) {
        super(context);
    }

    public ViewButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ViewButton(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public RotatableDialog select() {
        try {
            AutoReviewWindow.launchAlbum((Activity)this.getContext(), this.mReviewScreen.mUri, this.mReviewScreen.mMime);
            do {
                return null;
                break;
            } while (true);
        }
        catch (ActivityNotFoundException var1_1) {
            CameraLogger.e(TAG, "launchAlbum: failed.", var1_1);
            return null;
        }
    }
}

