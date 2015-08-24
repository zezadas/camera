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
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.MainParameters;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;

public class NormalParameters
extends MainParameters {
    private ParameterValueHolder<Resolution> mLocalResolution;

    public NormalParameters(CapturingMode capturingMode, boolean bl, StorageController storageController) {
        super(capturingMode, bl, storageController);
    }

    @Override
    public BurstShot getBurstShot() {
        return BurstShot.OFF;
    }

    @Override
    public EnumMap<ParameterKey, ParameterValue> getTargetParameters() {
        EnumMap<ParameterKey, ParameterValue> enumMap = new EnumMap<ParameterKey, ParameterValue>(ParameterKey.class);
        for (ParameterKey parameterKey : this.mHolders.keySet()) {
            Object t = ((ParameterValueHolder)this.mHolders.get((Object)parameterKey)).get();
            if (parameterKey == ParameterKey.VIDEO_SIZE || parameterKey == ParameterKey.VIDEO_SMILE_CAPTURE) continue;
            enumMap.put(parameterKey, (ParameterValue)t);
        }
        return enumMap;
    }

    @Override
    protected void prepare() {
        this.mLocalResolution = new ParameterValueHolder<Resolution>(this.mCapturingModeParams.mResolution.getDefaultValue());
        this.mLocalResolution.setOptions(this.mCapturingModeParams.mResolution.getOptions());
        this.updateHolder(this.mLocalResolution);
    }

    @Override
    public void set(BurstShot burstShot) {
    }

    @Override
    public void set(Hdr hdr) {
        super.set(hdr);
        this.updateLocalResolution(hdr, this.mLocalResolution);
    }

    @Override
    public void set(Iso iso) {
        super.set(iso);
        this.updateLocalResolution(this.mCapturingModeParams.mHdr.get(), this.mLocalResolution);
    }

    @Override
    public void set(Resolution resolution) {
        DependencyApplier.create(this.mCapturingModeParams.mResolution.get()).reset(this.mCapturingModeParams);
        super.set(resolution);
        DependencyApplier.create(resolution).apply(this.mCapturingModeParams);
        this.updateLocalResolution(this.mCapturingModeParams.mHdr.get(), this.mLocalResolution);
    }

    @Override
    public void set(Scene scene) {
        Scene scene2 = this.mCapturingModeParams.mScene.get();
        if (scene != scene2) {
            DependencyApplier.create(scene2).reset(this.mCapturingModeParams);
            super.set(scene);
            DependencyApplier.create(scene).apply(this.mCapturingModeParams);
            this.updateLocalResolution(this.mCapturingModeParams.mHdr.get(), this.mLocalResolution);
        }
    }

    @Override
    public void set(Stabilizer stabilizer) {
        super.set(stabilizer);
        this.updateLocalResolution(this.mCapturingModeParams.mHdr.get(), this.mLocalResolution);
    }

    @Override
    public void set(VideoHdr videoHdr) {
    }

    @Override
    public void set(VideoSelfTimer videoSelfTimer) {
    }

    @Override
    public void set(VideoSize videoSize) {
    }

    @Override
    public void set(VideoSmileCapture videoSmileCapture) {
    }

    @Override
    public void set(VideoStabilizer videoStabilizer) {
    }

    @Override
    protected void updateSelectability() {
        if (this.mCapturingModeParams.mScene.get() != Scene.OFF) {
            DependencyApplier.create(this.mCapturingModeParams.mScene.get()).apply(this.mCapturingModeParams);
        }
        DependencyApplier.create(this.mCapturingModeParams.mResolution.get()).apply(this.mCapturingModeParams);
        this.updateLocalResolution(this.mCapturingModeParams.mHdr.get(), this.mLocalResolution);
        DependencyApplier.create(this.mCapturingModeParams.mSmileCapture.get()).apply(this.mCapturingModeParams);
    }
}

