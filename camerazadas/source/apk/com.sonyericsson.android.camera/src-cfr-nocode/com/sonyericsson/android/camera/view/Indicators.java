/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;

/*
 * Exception performing whole class analysis.
 */
public class Indicators
extends RelativeLayout {
    private static final String TAG = "Indicators";
    private ImageView mPhotoSmileCapture;
    private Indicator mVideoSelfTimer;
    private ImageView mVideoSmileCapture;

    public Indicators(Context var1, AttributeSet var2);

    private void setSmileCaptureVisible(ImageView var1, boolean var2);

    public void hideSelfTimerIndicator();

    @Override
    protected void onFinishInflate();

    public void onPhotoSmileCaptureSettingsChanged(boolean var1, int var2);

    public void onVideoSelfTimerEnd();

    public void onVideoSelftimerSettingsChanged(CapturingMode var1, boolean var2, int var3);

    public void onVideoSmileCaptureSettingsChanged(boolean var1, int var2);

    public void setPhotoSmileCaptureVisible(boolean var1);

    public void setSensorOrientation(int var1);

    public void setVideoSelfTimerCaptureVisible(boolean var1);

    public void setVideoSmileCaptureVisible(boolean var1);

    public void showSelfTimerIndicator();

    protected void updateLayout();
}

