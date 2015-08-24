/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import android.util.Log;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.ExposureMode;
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


import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;


@DexEdit(defaultAction = DexAction.IGNORE)
public class FrontPhotoParameters
        extends FrontParameters {
    public ParameterValueHolder<Resolution> mLocalResolution;

    @DexIgnore
    public FrontPhotoParameters(CapturingMode capturingMode, boolean bl, StorageController storageController) {
        super(capturingMode, bl, storageController);
    }

    @DexIgnore
    @Override
    public BurstShot getBurstShot() {
        BurstShot burstShot;
        BurstShot burstShot2 = burstShot = this.mCapturingModeParams.mBurst.get();
        if (burstShot == BurstShot.HIGH) {
            burstShot2 = BurstShot.BEST_EFFORT;
        }
        return burstShot2;
    }

    @DexIgnore
    @Override
    public List<ParameterValue> getChangedValues() {
        ArrayList<ParameterValue> arrayList = new ArrayList<ParameterValue>();
        block4:
        for (ParameterKey parameterKey : this.mHolders.keySet()) {
            if (!((ParameterValueHolder) this.mHolders.get((Object) parameterKey)).hasChanged())
                continue;
            switch (parameterKey.ordinal()) {
                case 1: {
                    continue block4;
                }
                default: {
                    arrayList.add((ParameterValue) ((ParameterValueHolder) this.mHolders.get((Object) parameterKey)).get());
                    continue block4;
                }
                case 2:
            }
            if (!this.isOneShotVideo) continue;
            arrayList.add((ParameterValue) ((ParameterValueHolder) this.mHolders.get((Object) parameterKey)).get());
        }
        return arrayList;
    }

    @DexIgnore
    @Override
    public EnumMap<ParameterKey, ParameterValue> getTargetParameters() {
        EnumMap<ParameterKey, ParameterValue> enumMap = new EnumMap<ParameterKey, ParameterValue>(ParameterKey.class);
        block7:
        for (ParameterKey parameterKey : this.mHolders.keySet()) {
            Object object = ((ParameterValueHolder) this.mHolders.get((Object) parameterKey)).get();
            switch (parameterKey.ordinal()) {
                case 1: {
                    continue block7;
                }
                default: {
                    enumMap.put(parameterKey, (ParameterValue) object);
                    continue block7;
                }
                case 3: {
                    if (this.isOneShotVideo) continue block7;
                    enumMap.put(parameterKey, (ParameterValue) object);
                    continue block7;
                }
                case 4: {
                    if (this.isOneShotVideo) continue block7;
                    enumMap.put(parameterKey, (ParameterValue) object);
                    continue block7;
                }
                case 5: {
                    if (this.isOneShotVideo) continue block7;
                    object = this.getBurstShot();
                    this.set((BurstShot) object);
                    enumMap.put(parameterKey, (ParameterValue) object);
                    continue block7;
                }
                case 2:
            }
            if (!this.isOneShotVideo) continue;
            enumMap.put(parameterKey, (ParameterValue) object);
        }
        return enumMap;
    }

    @DexIgnore
    @Override
    protected void prepare() {
        this.mLocalResolution = new ParameterValueHolder<Resolution>(this.mCapturingModeParams.mResolution.getDefaultValue());
        this.mLocalResolution.setOptions(this.mCapturingModeParams.mResolution.getOptions());
        this.updateHolder(this.mLocalResolution);
    }

    @DexReplace
    @Override
    public void set(CapturingMode capturingMode) {
        //TODO fix mExposureMode not being recognized
        ParameterUtil.forceChange(this.mCapturingModeParams.mScene, Scene.OFF);
        ParameterUtil.forceChange(this.mCapturingModeParams.mEv, Ev.ZERO);
        ParameterUtil.forceChange(this.mCapturingModeParams.mWhiteBalance, WhiteBalance.AUTO);
        ParameterUtil.forceChange(this.mCapturingModeParams.mExposureMode, ExposureMode.Exposure_AUTO);
        ParameterUtil.forceChange(this.mCapturingModeParams.mFocusMode, FocusMode.FIXED);
        ParameterUtil.forceChange(this.mCapturingModeParams.mIso, Iso.ISO_AUTO);
        ParameterUtil.forceChange(this.mCapturingModeParams.mMetering, Metering.getDefaultValue(this.mCapturingModeParams.mCapturingMode.get()));
    }


    @DexIgnore
    @Override
    public void set(Hdr hdr) {
        super.set(hdr);
        this.updateLocalResolution(this.mCapturingModeParams.mHdr.get(), this.mLocalResolution);
    }

    @DexIgnore
    @Override
    public void set(Resolution resolution) {
        super.set(resolution);
        this.updateLocalResolution(this.mCapturingModeParams.mHdr.get(), this.mLocalResolution);
    }

    @DexIgnore
    @Override
    public void set(Stabilizer stabilizer) {
        super.set(stabilizer);
        this.updateLocalResolution(this.mCapturingModeParams.mHdr.get(), this.mLocalResolution);
    }

    @DexIgnore
    @Override
    protected void updateSelectability() {
    }


}


