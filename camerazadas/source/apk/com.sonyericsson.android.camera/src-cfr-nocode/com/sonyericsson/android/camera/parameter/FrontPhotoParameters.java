/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.parameter.FrontParameters;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.EnumMap;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public class FrontPhotoParameters
extends FrontParameters {
    public ParameterValueHolder<Resolution> mLocalResolution;

    public FrontPhotoParameters(CapturingMode var1, boolean var2, StorageController var3);

    @Override
    public BurstShot getBurstShot();

    @Override
    public List<ParameterValue> getChangedValues();

    @Override
    public EnumMap<ParameterKey, ParameterValue> getTargetParameters();

    @Override
    protected void prepare();

    @Override
    public void set(CapturingMode var1);

    @Override
    public void set(Hdr var1);

    @Override
    public void set(Resolution var1);

    @Override
    public void set(Stabilizer var1);

    @Override
    protected void updateSelectability();

}

