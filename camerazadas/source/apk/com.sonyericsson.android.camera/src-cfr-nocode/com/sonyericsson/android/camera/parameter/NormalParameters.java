/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.parameter.MainParameters;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.EnumMap;

/*
 * Exception performing whole class analysis.
 */
public class NormalParameters
extends MainParameters {
    private ParameterValueHolder<Resolution> mLocalResolution;

    public NormalParameters(CapturingMode var1, boolean var2, StorageController var3);

    @Override
    public BurstShot getBurstShot();

    @Override
    public EnumMap<ParameterKey, ParameterValue> getTargetParameters();

    @Override
    protected void prepare();

    @Override
    public void set(BurstShot var1);

    @Override
    public void set(Hdr var1);

    @Override
    public void set(Iso var1);

    @Override
    public void set(Resolution var1);

    @Override
    public void set(Scene var1);

    @Override
    public void set(Stabilizer var1);

    @Override
    public void set(VideoHdr var1);

    @Override
    public void set(VideoSelfTimer var1);

    @Override
    public void set(VideoSize var1);

    @Override
    public void set(VideoSmileCapture var1);

    @Override
    public void set(VideoStabilizer var1);

    @Override
    protected void updateSelectability();
}

