/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.MainParameters;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SceneRecognitionParameters
extends MainParameters {
    public SceneRecognitionParameters(CapturingMode capturingMode, boolean bl, StorageController storageController) {
        super(capturingMode, bl, storageController);
    }

    @Override
    public List<ParameterValue> getChangedValues() {
        ArrayList<ParameterValue> arrayList = new ArrayList<ParameterValue>();
        block4 : for (ParameterKey parameterKey : this.mHolders.keySet()) {
            if (!((ParameterValueHolder)this.mHolders.get((Object)parameterKey)).hasChanged()) continue;
            switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterKey.ordinal()]) {
                case 1: {
                    continue block4;
                }
                default: {
                    arrayList.add((ParameterValue)((ParameterValueHolder)this.mHolders.get((Object)parameterKey)).get());
                    continue block4;
                }
                case 2: 
            }
            if (!this.isOneShotVideo) continue;
            arrayList.add((ParameterValue)((ParameterValueHolder)this.mHolders.get((Object)parameterKey)).get());
        }
        return arrayList;
    }

    @Override
    public EnumMap<ParameterKey, ParameterValue> getTargetParameters() {
        EnumMap<ParameterKey, ParameterValue> enumMap = new EnumMap<ParameterKey, ParameterValue>(ParameterKey.class);
        block7 : for (ParameterKey parameterKey : this.mHolders.keySet()) {
            Object t = ((ParameterValueHolder)this.mHolders.get((Object)parameterKey)).get();
            switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterKey.ordinal()]) {
                case 1: {
                    continue block7;
                }
                default: {
                    enumMap.put(parameterKey, (ParameterValue)t);
                    continue block7;
                }
                case 3: {
                    if (this.isOneShotVideo) continue block7;
                    enumMap.put(parameterKey, (ParameterValue)t);
                    continue block7;
                }
                case 4: {
                    if (this.isOneShotVideo) continue block7;
                    enumMap.put(parameterKey, (ParameterValue)t);
                    continue block7;
                }
                case 5: {
                    if (this.isOneShotVideo) continue block7;
                    enumMap.put(parameterKey, (ParameterValue)t);
                    continue block7;
                }
                case 2: 
            }
            if (!this.isOneShotVideo) continue;
            enumMap.put(parameterKey, (ParameterValue)t);
        }
        return enumMap;
    }

    @Override
    protected void prepare() {
    }

    @Override
    public void set(CaptureFrameShape captureFrameShape) {
        DependencyApplier dependencyApplier = DependencyApplier.create(captureFrameShape);
        dependencyApplier.reset(this.mCapturingModeParams);
        super.set(captureFrameShape);
        dependencyApplier.apply(this.mCapturingModeParams);
    }

    @Override
    public void set(CapturingMode capturingMode) {
        this.updateSelectability();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void updateSelectability() {
        ParameterUtil.forceChange(this.mCapturingModeParams.mScene, Scene.OFF);
        ParameterUtil.forceChange(this.mCapturingModeParams.mEv, Ev.ZERO);
        ParameterUtil.forceChange(this.mCapturingModeParams.mWhiteBalance, WhiteBalance.AUTO);
        ParameterUtil.forceChange(this.mCapturingModeParams.mResolution, this.mCapturingModeParams.mCaptureFrameShape.get().getResolution(this.mCapturingModeParams.mCapturingMode.get().getCameraId()));
        ParameterUtil.forceChange(this.mCapturingModeParams.mFocusMode, FocusMode.FACE_DETECTION);
        ParameterUtil.forceChange(this.mCapturingModeParams.mHdr, Hdr.HDR_AUTO);
        ParameterUtil.forceChange(this.mCapturingModeParams.mIso, Iso.ISO_AUTO);
        ParameterUtil.forceChange(this.mCapturingModeParams.mMetering, Metering.getDefaultValue(this.mCapturingModeParams.mCapturingMode.get()));
        ParameterUtil.forceChange(this.mCapturingModeParams.mStabilizer, Stabilizer.AUTO);
        if (this.isOneShotVideo) {
            ParameterUtil.reset(this.mCapturingModeParams.mVideoSize, VideoSize.getDefaultValue(this.mCapturingModeParams.getActionMode(), this.mCapturingModeParams.getConfig(), this.mStorageController));
        } else {
            ParameterUtil.forceChange(this.mCapturingModeParams.mVideoSize, VideoSize.getDefaultValue(this.mCapturingModeParams.getActionMode(), this.mCapturingModeParams.getConfig(), this.mStorageController));
        }
        ParameterUtil.forceChange(this.mCapturingModeParams.mVideoHdr, VideoHdr.OFF);
        boolean bl = VideoStabilizer.isSteadyShotSupported(this.mCapturingModeParams.getActionMode().mCameraId, this.mCapturingModeParams.mVideoSize.get());
        boolean bl2 = VideoStabilizer.isIntelligentActiveSupported(this.mCapturingModeParams.getActionMode().mCameraId, this.mCapturingModeParams.mVideoSize.get());
        if (!(bl || bl2)) {
            ParameterUtil.unavailable(this.mCapturingModeParams.mVideoStabilizer, VideoStabilizer.OFF);
            return;
        }
        ParameterUtil.reset(this.mCapturingModeParams.mVideoStabilizer);
    }

}

