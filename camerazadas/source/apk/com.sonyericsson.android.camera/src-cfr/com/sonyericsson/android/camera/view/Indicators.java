/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;

public class Indicators
extends RelativeLayout {
    private static final String TAG = "Indicators";
    private ImageView mPhotoSmileCapture;
    private Indicator mVideoSelfTimer;
    private ImageView mVideoSmileCapture;

    public Indicators(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setSmileCaptureVisible(ImageView imageView, boolean bl) {
        if (bl) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        this.invalidate();
    }

    public void hideSelfTimerIndicator() {
        this.setVideoSelfTimerCaptureVisible(false);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mVideoSelfTimer = new Indicator((ImageView)this.findViewById(2131689523));
        this.mPhotoSmileCapture = (ImageView)this.findViewById(2131689524);
        this.mVideoSmileCapture = (ImageView)this.findViewById(2131689525);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onPhotoSmileCaptureSettingsChanged(boolean bl, int n) {
        if (bl) {
            this.mPhotoSmileCapture.setImageResource(n);
            this.setPhotoSmileCaptureVisible(true);
        } else {
            this.setPhotoSmileCaptureVisible(false);
        }
        this.mPhotoSmileCapture.invalidate();
    }

    public void onVideoSelfTimerEnd() {
        this.setVideoSelfTimerCaptureVisible(true);
        this.updateLayout();
    }

    public void onVideoSelftimerSettingsChanged(CapturingMode capturingMode, boolean bl, int n) {
        this.onVideoSelfTimerEnd();
        if (capturingMode == CapturingMode.VIDEO || capturingMode == CapturingMode.FRONT_PHOTO || capturingMode == CapturingMode.SUPERIOR_FRONT || capturingMode == CapturingMode.SCENE_RECOGNITION) {
            if (bl) {
                this.mVideoSelfTimer.set(true);
                this.mVideoSelfTimer.setImageResource(n);
                this.setVideoSelfTimerCaptureVisible(true);
                return;
            }
            this.mVideoSelfTimer.set(false);
            this.setVideoSelfTimerCaptureVisible(false);
            return;
        }
        this.mVideoSelfTimer.set(false);
        this.setVideoSelfTimerCaptureVisible(false);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onVideoSmileCaptureSettingsChanged(boolean bl, int n) {
        if (bl) {
            this.mVideoSmileCapture.setImageResource(n);
            this.setVideoSmileCaptureVisible(true);
        } else {
            this.setVideoSmileCaptureVisible(false);
        }
        this.mVideoSmileCapture.invalidate();
    }

    public void setPhotoSmileCaptureVisible(boolean bl) {
        this.setSmileCaptureVisible(this.mPhotoSmileCapture, bl);
    }

    public void setSensorOrientation(int n) {
        float f = RotationUtil.getAngle(n);
        this.mVideoSelfTimer.setSensorOrientation(n);
        this.mPhotoSmileCapture.setRotation(f);
        this.mVideoSmileCapture.setRotation(f);
    }

    public void setVideoSelfTimerCaptureVisible(boolean bl) {
        if (bl) {
            this.mVideoSelfTimer.show();
            return;
        }
        this.mVideoSelfTimer.hide();
    }

    public void setVideoSmileCaptureVisible(boolean bl) {
        this.setSmileCaptureVisible(this.mVideoSmileCapture, bl);
    }

    public void showSelfTimerIndicator() {
        this.setVideoSelfTimerCaptureVisible(true);
    }

    protected void updateLayout() {
        this.requestLayout();
        this.invalidate();
    }
}

