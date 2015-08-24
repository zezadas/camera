/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;

/*
 * Exception performing whole class analysis.
 */
public class UxOptions {
    private final String[] mPhotoFocusModes;
    private final String[] mPhotoFocusModesNoExtension;
    private final String[] mPhotoScenes;
    private final String[] mVideoFocusModes;
    private final String[] mVideoFocusModesNoExtension;
    private final String[] mVideoScenes;
    private final String mVideoSizeOneShot;

    public UxOptions();

    public UxOptions(Context var1);

    public String[] getFocusModeOptions(CapturingMode var1);

    public String[] getSceneOptions(int var1);

    public String getVideoSizeForOneShot();
}

