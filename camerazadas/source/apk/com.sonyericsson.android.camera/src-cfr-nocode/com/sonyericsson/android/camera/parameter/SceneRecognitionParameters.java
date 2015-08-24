/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.parameter.MainParameters;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.EnumMap;
import java.util.List;

public class SceneRecognitionParameters
extends MainParameters {
    public SceneRecognitionParameters(CapturingMode var1, boolean var2, StorageController var3);

    @Override
    public List<ParameterValue> getChangedValues();

    @Override
    public EnumMap<ParameterKey, ParameterValue> getTargetParameters();

    @Override
    protected void prepare();

    @Override
    public void set(CaptureFrameShape var1);

    @Override
    public void set(CapturingMode var1);

    @Override
    protected void updateSelectability();

}

