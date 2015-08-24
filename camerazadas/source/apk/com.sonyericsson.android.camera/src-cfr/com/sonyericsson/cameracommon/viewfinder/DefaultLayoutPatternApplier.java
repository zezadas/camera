/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder;

import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.viewfinder.BaseViewFinderLayout;
import com.sonyericsson.cameracommon.viewfinder.DefaultLayoutPattern;
import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;
import com.sonyericsson.cameracommon.viewfinder.LayoutPatternApplier;
import com.sonyericsson.cameracommon.viewfinder.balloontips.BalloonTips;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButton;
import com.sonyericsson.cameracommon.viewfinder.indicators.GeotagIndicator;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonGroup;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingIndicator;
import com.sonyericsson.cameracommon.zoombar.Zoombar;
import java.util.HashMap;
import java.util.Map;

public class DefaultLayoutPatternApplier
implements LayoutPatternApplier {
    public static final int D = 3;
    public static final int H = 2;
    public static final int N = 0;
    public static final int S = 1;
    protected BaseViewFinderLayout mLayout;
    protected Map<LayoutPattern, Map<Component, Integer>> mPatternComponentMap = new HashMap<LayoutPattern, Map<Component, Integer>>();

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void apply(LayoutPattern var1_1) {
        var1_1 = this.mPatternComponentMap.get(var1_1);
        switch (var1_1.get(DefaultComponent.CAPTURE_BUTTON)) {
            default: {
                if (!this.mLayout.getOnScreenButtonGroup().isTouched()) break;
                this.mLayout.getOnScreenButtonGroup().setVisibility(0);
                ** GOTO lbl14
            }
            case 1: {
                this.mLayout.getOnScreenButtonGroup().setVisibility(0);
                ** GOTO lbl14
            }
            case 2: {
                this.mLayout.getOnScreenButtonGroup().setVisibility(4);
                ** GOTO lbl14
            }
        }
        this.mLayout.getOnScreenButtonGroup().setVisibility(4);
lbl14: // 4 sources:
        switch (var1_1.get(DefaultComponent.CONTENT_VIEW)) {
            case 1: {
                this.mLayout.showContentsViewController();
            }
            default: {
                break;
            }
            case 2: {
                this.mLayout.hideContentsViewController();
            }
        }
        switch (var1_1.get(DefaultComponent.MODE_SELECTOR_BUTTON)) {
            case 1: {
                this.mLayout.getCapturingModeButton().setVisibility(0);
            }
            default: {
                break;
            }
            case 2: {
                this.mLayout.getCapturingModeButton().setVisibility(4);
            }
        }
        switch (var1_1.get(DefaultComponent.CAPTURE_METHOD_INDICATORS)) {
            case 1: {
                this.mLayout.getCaptureMethodIndicatorContainer().setVisibility(0);
            }
            default: {
                break;
            }
            case 2: {
                this.mLayout.getCaptureMethodIndicatorContainer().setVisibility(4);
            }
        }
        switch (var1_1.get(DefaultComponent.MODE_INDICATORS)) {
            case 1: {
                this.mLayout.getModeIndicatorContainer().setVisibility(0);
            }
            default: {
                break;
            }
            case 2: {
                this.mLayout.getModeIndicatorContainer().setVisibility(4);
            }
        }
        switch (var1_1.get(DefaultComponent.GEOTAG_INDICATORS)) {
            case 1: {
                this.mLayout.getGeoTagIndicator().show();
            }
            default: {
                break;
            }
            case 2: {
                this.mLayout.getGeoTagIndicator().hide();
            }
        }
        switch (var1_1.get(DefaultComponent.STORAGE_INDICATORS)) {
            case 1: {
                this.mLayout.getLowMemoryIndicator().show();
            }
            default: {
                break;
            }
            case 2: {
                this.mLayout.getLowMemoryIndicator().hide();
            }
        }
        switch (var1_1.get(DefaultComponent.ZOOM_BAR)) {
            case 1: {
                this.mLayout.getZoomBar().show();
                ** break;
            }
            case 2: {
                this.mLayout.getZoomBar().hide();
            }
lbl62: // 3 sources:
            default: {
                ** GOTO lbl66
            }
            case 3: 
        }
        this.mLayout.getZoomBar().hideDelayed();
lbl66: // 2 sources:
        switch (var1_1.get(DefaultComponent.BALLOON_TIPS)) {
            case 1: {
                if (this.mLayout.getBalloonTips().isBalloonTipsEnabled()) {
                    this.mLayout.getBalloonTips().show();
                }
            }
            default: {
                ** GOTO lbl74
            }
            case 2: 
        }
        this.mLayout.getBalloonTips().hide();
lbl74: // 2 sources:
        switch (var1_1.get(DefaultComponent.RECORDING_PROGRESS)) {
            case 1: {
                this.mLayout.getRecordingIndicator().setVisibility(0);
            }
            default: {
                break;
            }
            case 2: {
                this.mLayout.getRecordingIndicator().setVisibility(4);
            }
        }
        switch (var1_1.get(DefaultComponent.RIGHT_BOTTOM_CAPTURE_BUTTON)) {
            case 1: {
                this.mLayout.getCaptureButtonGroup().setVisibility(0);
            }
            default: {
                break;
            }
            case 2: {
                this.mLayout.getCaptureButtonGroup().setVisibility(4);
            }
        }
        switch (var1_1.get(DefaultComponent.THERMAL_INDICATORS)) {
            case 1: {
                this.mLayout.getThermalIndicator().show();
            }
            default: {
                break;
            }
            case 2: {
                this.mLayout.getThermalIndicator().hide();
            }
        }
        this.mLayout.refresh();
    }

    protected void set(LayoutPattern object, int[] arrn) {
        if (DefaultComponent.values().length != arrn.length) {
            throw new IllegalArgumentException("Not equal components count : " + DefaultComponent.values().length + " visibility count : " + arrn.length);
        }
        int n = 0;
        object = this.mPatternComponentMap.get(object);
        DefaultComponent[] arrdefaultComponent = DefaultComponent.values();
        int n2 = arrdefaultComponent.length;
        for (int i = 0; i < n2; ++i) {
            object.put(arrdefaultComponent[i], arrn[n]);
            ++n;
        }
    }

    @Override
    public void setup(BaseViewFinderLayout baseViewFinderLayout, boolean bl) {
        this.mLayout = baseViewFinderLayout;
        this.setupLayoutPattern();
        this.setupVisibilities(bl);
    }

    protected void setupLayoutPattern() {
        for (DefaultLayoutPattern defaultLayoutPattern : DefaultLayoutPattern.values()) {
            this.mPatternComponentMap.put(defaultLayoutPattern, new HashMap());
        }
    }

    protected void setupVisibilities(boolean bl) {
        if (bl) {
            this.set(DefaultLayoutPattern.PREVIEW, new int[]{1, 1, 1, 1, 1, 3, 2, 2, 2, 2, 2, 1});
            this.set(DefaultLayoutPattern.CLEAR, new int[]{2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            this.set(DefaultLayoutPattern.ZOOMING, new int[]{2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2});
            this.set(DefaultLayoutPattern.FOCUS_SEARCHING, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            this.set(DefaultLayoutPattern.FOCUS_DONE, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            this.set(DefaultLayoutPattern.CAPTURE, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            this.set(DefaultLayoutPattern.RECORDING, new int[]{1, 1, 1, 2, 1, 3, 2, 2, 2, 1, 2, 1});
            this.set(DefaultLayoutPattern.BURST_SHOOTING, new int[]{0, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1});
            this.set(DefaultLayoutPattern.MODE_SELECTOR, new int[]{2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            this.set(DefaultLayoutPattern.SETTING, new int[]{1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            this.set(DefaultLayoutPattern.SELFTIMER, new int[]{1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            this.set(DefaultLayoutPattern.PAUSE_RECORDING, new int[]{1, 1, 1, 2, 1, 3, 2, 2, 2, 1, 2, 1});
            return;
        }
        this.set(DefaultLayoutPattern.PREVIEW, new int[]{1, 1, 1, 1, 1, 3, 1, 1, 0, 2, 2, 1});
        this.set(DefaultLayoutPattern.CLEAR, new int[]{2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        this.set(DefaultLayoutPattern.ZOOMING, new int[]{2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2});
        this.set(DefaultLayoutPattern.FOCUS_SEARCHING, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        this.set(DefaultLayoutPattern.FOCUS_DONE, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        this.set(DefaultLayoutPattern.CAPTURE, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        this.set(DefaultLayoutPattern.RECORDING, new int[]{1, 1, 1, 2, 1, 3, 1, 2, 2, 1, 1, 1});
        this.set(DefaultLayoutPattern.BURST_SHOOTING, new int[]{0, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1});
        this.set(DefaultLayoutPattern.MODE_SELECTOR, new int[]{2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        this.set(DefaultLayoutPattern.SETTING, new int[]{1, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2});
        this.set(DefaultLayoutPattern.SELFTIMER, new int[]{1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        this.set(DefaultLayoutPattern.PAUSE_RECORDING, new int[]{1, 1, 1, 2, 1, 3, 2, 2, 2, 1, 1, 1});
    }

    protected static interface Component {
    }

    protected static enum DefaultComponent implements Component
    {
        CAPTURE_BUTTON,
        CAPTURE_METHOD_INDICATORS,
        MODE_INDICATORS,
        GEOTAG_INDICATORS,
        STORAGE_INDICATORS,
        ZOOM_BAR,
        CONTENT_VIEW,
        MODE_SELECTOR_BUTTON,
        BALLOON_TIPS,
        RECORDING_PROGRESS,
        RIGHT_BOTTOM_CAPTURE_BUTTON,
        THERMAL_INDICATORS;
        

        private DefaultComponent() {
        }
    }

}

