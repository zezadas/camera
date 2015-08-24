/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
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
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.FrontParameters;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SuperiorFrontParameters
extends FrontParameters {
    public SuperiorFrontParameters(CapturingMode capturingMode, boolean bl, StorageController storageController) {
        super(capturingMode, bl, storageController);
    }

    @Override
    public BurstShot getBurstShot() {
        BurstShot burstShot;
        BurstShot burstShot2 = burstShot = this.mCapturingModeParams.mBurst.get();
        if (burstShot == BurstShot.HIGH) {
            burstShot2 = BurstShot.BEST_EFFORT;
        }
        return burstShot2;
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
            Object object = ((ParameterValueHolder)this.mHolders.get((Object)parameterKey)).get();
            switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterKey.ordinal()]) {
                case 1: {
                    continue block7;
                }
                default: {
                    enumMap.put(parameterKey, (ParameterValue)object);
                    continue block7;
                }
                case 3: {
                    if (this.isOneShotVideo) continue block7;
                    enumMap.put(parameterKey, (ParameterValue)object);
                    continue block7;
                }
                case 4: {
                    if (this.isOneShotVideo) continue block7;
                    enumMap.put(parameterKey, (ParameterValue)object);
                    continue block7;
                }
                case 5: {
                    if (this.isOneShotVideo) continue block7;
                    object = this.getBurstShot();
                    this.set((BurstShot)object);
                    enumMap.put(parameterKey, (ParameterValue)object);
                    continue block7;
                }
                case 2: 
            }
            if (!this.isOneShotVideo) continue;
            enumMap.put(parameterKey, (ParameterValue)object);
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
        ParameterUtil.forceChange(this.mCapturingModeParams.mFocusMode, FocusMode.FIXED);
        ParameterUtil.forceChange(this.mCapturingModeParams.mHdr, Hdr.HDR_AUTO);
        ParameterUtil.forceChange(this.mCapturingModeParams.mIso, Iso.ISO_AUTO);
        ParameterUtil.forceChange(this.mCapturingModeParams.mMetering, Metering.getDefaultValue(this.mCapturingModeParams.mCapturingMode.get()));
        ParameterUtil.forceChange(this.mCapturingModeParams.mStabilizer, Stabilizer.AUTO);
        if (this.isOneShotVideo) {
            ParameterUtil.reset(this.mCapturingModeParams.mVideoSize, VideoSize.getDefaultValue(this.mCapturingModeParams.getActionMode(), this.mCapturingModeParams.getConfig(), this.mStorageController));
        } else {
            ParameterUtil.forceChange(this.mCapturingModeParams.mVideoSize, VideoSize.getDefaultValue(this.mCapturingModeParams.getActionMode(), this.mCapturingModeParams.getConfig(), this.mStorageController));
        }
        DependencyApplier.create(this.mCapturingModeParams.mVideoSize.get(), this.isOneShotVideo).apply(this.mCapturingModeParams);
    }

}

