/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.graphics.Rect;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.device.CameraExtensionVersion;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.ArrayList;
import java.util.List;

public enum VideoStabilizer implements ParameterValue
{
    STEADY_SHOT(-1, 2131296640, "on-steady-shot"),
    INTELLIGENT_ACTIVE(-1, 2131296601, "on-intelligent-active"),
    ON(-1, 2131296303, "on"),
    OFF(-1, 2131296304, "off");
    
    private static final int TEXT_ID_SS = 2131296477;
    private static final int TEXT_ID_VS = 2131296529;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    private VideoStabilizer(int n2, int n3, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = string2;
    }

    public static VideoStabilizer[] getOptions(int n) {
        return VideoStabilizer.getVideoStabilizerOptions(n);
    }

    public static int getParameterKeyTitleText(int n) {
        if (HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 7)) {
            return 2131296477;
        }
        if (HardwareCapability.getInstance().getCameraExtensionVersion().isSupported()) {
            if (HardwareCapability.getCapability((int)n).VIDEO_STABILIZER_TYPE.get().contains("steady-shot")) {
                return 2131296477;
            }
            return 2131296529;
        }
        return 2131296529;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static VideoStabilizer getRecommendedVideoStabilizerValue(int n, VideoSize videoSize) {
        boolean bl = true;
        CameraLogger.e("## ## ## ##", "getRecommendedVideoStabilizerValue()");
        if (!HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 7)) {
            CameraLogger.e("## ## ## ##", "  ON");
            return ON;
        }
        if (n != 1) {
            bl = false;
        }
        boolean bl2 = VideoStabilizer.isSteadyShotSupported(n, videoSize);
        boolean bl3 = VideoStabilizer.isIntelligentActiveSupported(n, videoSize);
        if (!bl && bl3) {
            CameraLogger.e("## ## ## ##", "  INTELLIGENT_ACTIVE front:" + bl + " isSteadyShotSupported:" + bl2 + " isIntelligentActiveSupported:" + bl3);
            return INTELLIGENT_ACTIVE;
        }
        if (bl2) {
            CameraLogger.e("## ## ## ##", "  STEADY_SHOT front:" + bl + " isSteadyShotSupported:" + bl2 + " isIntelligentActiveSupported:" + bl3);
            return STEADY_SHOT;
        }
        CameraLogger.e("## ## ## ##", "  OFF front:" + bl + " isSteadyShotSupported:" + bl2 + " isIntelligentActiveSupported:" + bl3);
        return OFF;
    }

    public static VideoStabilizer[] getVideoStabilizerOptions(int n) {
        CapabilityList capabilityList = HardwareCapability.getCapability(n);
        if (HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 7)) {
            ArrayList<VideoStabilizer> arrayList = new ArrayList<VideoStabilizer>();
            if (capabilityList.VIDEO_STABILIZER.get().contains("on-intelligent-active")) {
                arrayList.add(INTELLIGENT_ACTIVE);
            }
            if (capabilityList.VIDEO_STABILIZER.get().contains("on-steady-shot")) {
                arrayList.add(STEADY_SHOT);
            }
            if (arrayList.size() == 0 && capabilityList.VIDEO_STABILIZER.get().contains("on")) {
                arrayList.add(ON);
            }
            arrayList.add(OFF);
            return arrayList.toArray(new VideoStabilizer[0]);
        }
        if (HardwareCapability.getInstance().getCameraExtensionVersion().isSupported() && !capabilityList.VIDEO_STABILIZER.get().isEmpty()) {
            return new VideoStabilizer[]{ON, OFF};
        }
        return new VideoStabilizer[0];
    }

    public static boolean isIntelligentActive(VideoStabilizer videoStabilizer) {
        if (videoStabilizer == INTELLIGENT_ACTIVE) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean isIntelligentActiveSupported(int n, VideoSize videoSize) {
        if (!VideoStabilizer.isValidWhenVideoSizeIs(videoSize)) {
            return false;
        }
        CapabilityList capabilityList = HardwareCapability.getCapability(n);
        if (!HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 7)) return false;
        if (videoSize == VideoSize.FULL_HD_60FPS) return false;
        return VideoStabilizer.isMaxSizeLargerThanOrEqualToVideoSize(capabilityList.MAX_INTELLIGENT_ACTIVE_SIZE.get(), videoSize);
    }

    private static boolean isMaxSizeLargerThanOrEqualToVideoSize(Rect rect, VideoSize videoSize) {
        if (rect != null && rect.width() >= videoSize.getVideoRect().width() && rect.height() >= videoSize.getVideoRect().height()) {
            return true;
        }
        return false;
    }

    public static boolean isSteadyShotSupported(int n, VideoSize videoSize) {
        if (!VideoStabilizer.isValidWhenVideoSizeIs(videoSize)) {
            return false;
        }
        CapabilityList capabilityList = HardwareCapability.getCapability(n);
        if (HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 7)) {
            return VideoStabilizer.isMaxSizeLargerThanOrEqualToVideoSize(capabilityList.MAX_STEADY_SHOT_SIZE.get(), videoSize);
        }
        if (capabilityList.VIDEO_STABILIZER_TYPE.get().contains("steady-shot")) {
            return VideoStabilizer.isMaxSizeLargerThanOrEqualToVideoSize(capabilityList.MAX_VIDEO_STABILIZER_SIZE_FOR_LEGACY.get(), videoSize);
        }
        if (capabilityList.VIDEO_STABILIZER.get().contains("on")) {
            return true;
        }
        return false;
    }

    private static boolean isValidWhenVideoSizeIs(VideoSize videoSize) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize[videoSize.ordinal()]) {
            default: {
                return true;
            }
            case 1: 
            case 2: 
        }
        return false;
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.VIDEO_STABILIZER;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296477;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return OFF;
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }

    @Override
    public String getValue() {
        return this.mValue;
    }

}

