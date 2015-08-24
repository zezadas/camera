/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.SuperResolution;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.parameter.MainParameters;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.EnumMap;

public class VideoParameters
extends MainParameters {
    public VideoParameters(CapturingMode var1, boolean var2, StorageController var3);

    @Override
    public FaceIdentify getFaceIdentify();

    @Override
    public EnumMap<ParameterKey, ParameterValue> getTargetParameters();

    @Override
    protected void prepare();

    @Override
    public void set(AutoReview var1);

    @Override
    public void set(BurstShot var1);

    @Override
    public void set(FaceIdentify var1);

    @Override
    public void set(Flash var1);

    @Override
    public void set(Hdr var1);

    @Override
    public void set(Iso var1);

    @Override
    public void set(Resolution var1);

    @Override
    public void set(Scene var1);

    @Override
    public void set(SelfTimer var1);

    @Override
    public void set(SmileCapture var1);

    @Override
    public void set(SoftSkin var1);

    @Override
    public void set(Stabilizer var1);

    @Override
    public void set(SuperResolution var1);

    @Override
    public void set(VideoAutoReview var1);

    @Override
    protected void updateSelectability();
}

