/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.cameracommon.mediasaving.StorageController;

public abstract class MainParameters
extends Parameters {
    public MainParameters(CapturingMode var1, boolean var2, StorageController var3);

    @Override
    public SoftSkin getSoftSkin();

    @Override
    public void set(SoftSkin var1);

    @Override
    public void updatePhotoLight();
}

