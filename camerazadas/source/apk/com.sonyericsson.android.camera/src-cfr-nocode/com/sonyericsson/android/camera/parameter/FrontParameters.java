/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.SuperResolution;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.cameracommon.mediasaving.StorageController;

public abstract class FrontParameters
extends Parameters {
    public FrontParameters(CapturingMode var1, boolean var2, StorageController var3);

    @Override
    public FaceIdentify getFaceIdentify();

    @Override
    public SuperResolution getSuperResolution();

    @Override
    public VideoHdr getVideoHdr();

    @Override
    public void set(FaceIdentify var1);

    @Override
    public void set(SuperResolution var1);

    @Override
    public void set(VideoHdr var1);

    @Override
    protected void updatePhotoLight();
}

