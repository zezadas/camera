/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.device;

import android.hardware.Camera;
import java.util.ArrayList;
import java.util.List;

public class CommonPlatformDependencyResolver {
    private static final String TAG = CommonPlatformDependencyResolver.class.getSimpleName();

    private static List<String> getDcModeSupportedValueList(Camera.Parameters object) {
        String[] arrstring = object.get("sony-dc-mode-values");
        object = new ArrayList();
        if (arrstring != null) {
            arrstring = arrstring.split(",");
            int n = arrstring.length;
            for (int i = 0; i < n; ++i) {
                object.add(arrstring[i]);
            }
        }
        return object;
    }

    private static List<String> getSupportedValueList(Camera.Parameters object) {
        String[] arrstring = object.get("sony-video-nr-values");
        object = new ArrayList();
        if (arrstring != null) {
            arrstring = arrstring.split(",");
            int n = arrstring.length;
            for (int i = 0; i < n; ++i) {
                object.add(arrstring[i]);
            }
        }
        return object;
    }

    public static boolean isVideoNrSupported(Camera.Parameters parameters) {
        return CommonPlatformDependencyResolver.getSupportedValueList(parameters).contains("on");
    }

    private static void setDcModeIfSupported(Camera.Parameters parameters, String string, String string2) {
        if (CommonPlatformDependencyResolver.getDcModeSupportedValueList(parameters).contains(string2)) {
            parameters.set(string, string2);
        }
    }

    public static enum DcCategory {
        NORMAL("balance", "auto", "balance"),
        MAKE_IMAGE_FROM_PREVIEW("balance", "auto", "balance"),
        COMPOSE_IMAGE_FROM_PREVIEW("landscape", "auto", "balance"),
        THIRD_PARTY("landscape", "landscape", "landscape");
        
        final String mDcForPicture;
        final String mDcForPreview;
        final String mDcForVideo;

        private DcCategory(String string2, String string3, String string4) {
            this.mDcForPreview = string2;
            this.mDcForPicture = string3;
            this.mDcForVideo = string4;
        }

        public void writeTo(Camera.Parameters parameters) {
            CommonPlatformDependencyResolver.setDcModeIfSupported(parameters, "sony-dc-mode-for-preview", this.mDcForPreview);
            CommonPlatformDependencyResolver.setDcModeIfSupported(parameters, "sony-dc-mode-for-picture", this.mDcForPicture);
            CommonPlatformDependencyResolver.setDcModeIfSupported(parameters, "sony-dc-mode-for-video", this.mDcForVideo);
        }
    }

}

