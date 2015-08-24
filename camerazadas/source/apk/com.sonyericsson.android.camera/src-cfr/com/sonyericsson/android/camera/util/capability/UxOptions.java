/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.content.res.Resources;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;

public class UxOptions {
    private final String[] mPhotoFocusModes;
    private final String[] mPhotoFocusModesNoExtension;
    private final String[] mPhotoScenes;
    private final String[] mVideoFocusModes;
    private final String[] mVideoFocusModesNoExtension;
    private final String[] mVideoScenes;
    private final String mVideoSizeOneShot;

    public UxOptions() {
        this.mPhotoScenes = new String[0];
        this.mVideoScenes = new String[0];
        this.mPhotoFocusModes = new String[0];
        this.mVideoFocusModes = new String[0];
        this.mPhotoFocusModesNoExtension = new String[0];
        this.mVideoFocusModesNoExtension = new String[0];
        this.mVideoSizeOneShot = "";
    }

    public UxOptions(Context object) {
        object = object.getResources();
        this.mPhotoScenes = object.getStringArray(2131623936);
        this.mVideoScenes = object.getStringArray(2131623937);
        this.mPhotoFocusModes = object.getStringArray(2131623938);
        this.mVideoFocusModes = object.getStringArray(2131623939);
        this.mPhotoFocusModesNoExtension = object.getStringArray(2131623940);
        this.mVideoFocusModesNoExtension = object.getStringArray(2131623941);
        this.mVideoSizeOneShot = object.getString(2131296809);
    }

    public String[] getFocusModeOptions(CapturingMode capturingMode) {
        if (HardwareCapability.getInstance().isCameraExtensionSupported(capturingMode.getCameraId())) {
            if (capturingMode.getType() == 2) {
                return this.mVideoFocusModes;
            }
            return this.mPhotoFocusModes;
        }
        if (capturingMode.getType() == 2) {
            return this.mVideoFocusModesNoExtension;
        }
        return this.mPhotoFocusModesNoExtension;
    }

    public String[] getSceneOptions(int n) {
        if (n == 2) {
            return this.mVideoScenes;
        }
        return this.mPhotoScenes;
    }

    public String getVideoSizeForOneShot() {
        return this.mVideoSizeOneShot;
    }
}

