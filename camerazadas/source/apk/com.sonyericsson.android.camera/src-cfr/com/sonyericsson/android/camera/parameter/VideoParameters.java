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
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.SuperResolution;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.MainParameters;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;

public class VideoParameters
extends MainParameters {
    public VideoParameters(CapturingMode capturingMode, boolean bl, StorageController storageController) {
        super(capturingMode, bl, storageController);
    }

    @Override
    public FaceIdentify getFaceIdentify() {
        return FaceIdentify.OFF;
    }

    @Override
    public EnumMap<ParameterKey, ParameterValue> getTargetParameters() {
        EnumMap<ParameterKey, ParameterValue> enumMap = new EnumMap<ParameterKey, ParameterValue>(ParameterKey.class);
        for (ParameterKey parameterKey : this.mHolders.keySet()) {
            Object t = ((ParameterValueHolder)this.mHolders.get((Object)parameterKey)).get();
            if (parameterKey == ParameterKey.RESOLUTION || parameterKey == ParameterKey.SMILE_CAPTURE) continue;
            enumMap.put(parameterKey, (ParameterValue)t);
        }
        return enumMap;
    }

    @Override
    protected void prepare() {
    }

    @Override
    public void set(AutoReview autoReview) {
    }

    @Override
    public void set(BurstShot burstShot) {
    }

    @Override
    public void set(FaceIdentify faceIdentify) {
    }

    @Override
    public void set(Flash flash) {
    }

    @Override
    public void set(Hdr hdr) {
    }

    @Override
    public void set(Iso iso) {
    }

    @Override
    public void set(Resolution resolution) {
    }

    @Override
    public void set(Scene scene) {
        Scene scene2 = this.mCapturingModeParams.mScene.get();
        if (scene != scene2) {
            DependencyApplier.create(scene2).reset(this.mCapturingModeParams);
            super.set(scene);
            DependencyApplier.create(scene).apply(this.mCapturingModeParams);
        }
    }

    @Override
    public void set(SelfTimer selfTimer) {
    }

    @Override
    public void set(SmileCapture smileCapture) {
    }

    @Override
    public void set(SoftSkin softSkin) {
    }

    @Override
    public void set(Stabilizer stabilizer) {
    }

    @Override
    public void set(SuperResolution superResolution) {
    }

    @Override
    public void set(VideoAutoReview videoAutoReview) {
        this.mCapturingModeParams.mVideoAutoReview.set(videoAutoReview);
    }

    @Override
    protected void updateSelectability() {
        if (this.mCapturingModeParams.mScene.get() != Scene.OFF) {
            DependencyApplier.create(this.mCapturingModeParams.mScene.get()).apply(this.mCapturingModeParams);
        }
        DependencyApplier.create(this.mCapturingModeParams.mVideoSize.get(), this.isOneShotVideo).apply(this.mCapturingModeParams);
    }
}

