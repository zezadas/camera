//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.sonyericsson.android.camera.parameter;

import android.util.Log;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.ExposureMode;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Facing;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.Microphone;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSpeed;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.SuperResolution;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;


//TODO better use of Dex
@DexReplace
public class CapturingModeParams {
    private ActionMode mActionMode;
    public ParameterValueHolder<AutoReview> mAutoReview;
    public ParameterValueHolder<BurstShot> mBurst;
    public ParameterValueHolder<CaptureFrameShape> mCaptureFrameShape;
    public ParameterValueHolder<CapturingMode> mCapturingMode;
    private Configurations mConfig;
    public ParameterValueHolder<Ev> mEv;
    public ParameterValueHolder<FaceIdentify> mFaceIdentify;
    public ParameterValueHolder<Facing> mFacing;
    public ParameterValueHolder<Flash> mFlash;
    @DexAdd
    public ParameterValueHolder<ExposureMode> mExposureMode;
    @DexAdd
    public ParameterValueHolder<ShutterSpeed> mShutterSpeed;
    public ParameterValueHolder<FocusMode> mFocusMode;
    public ParameterValueHolder<Hdr> mHdr;
    private boolean mIsOneShot;
    private boolean mIsOneShotVideo;
    public ParameterValueHolder<Iso> mIso;
    public ParameterValueHolder<Metering> mMetering;
    public ParameterValueHolder<Microphone> mMicrophone;
    public ParameterValueHolder<PhotoLight> mPhotoLight;
    public ParameterValueHolder<Resolution> mResolution;
    public ParameterValueHolder<Scene> mScene;
    public ParameterValueHolder<SelfTimer> mSelfTimer;
    public ParameterValueHolder<SmileCapture> mSmileCapture;
    public ParameterValueHolder<SoftSkin> mSoftSkin;
    public ParameterValueHolder<Stabilizer> mStabilizer;
    public ParameterValueHolder<SuperResolution> mSuperResolution;
    public ParameterValueHolder<VideoAutoReview> mVideoAutoReview;
    public ParameterValueHolder<VideoHdr> mVideoHdr;
    public ParameterValueHolder<VideoSelfTimer> mVideoSelfTimer;
    public ParameterValueHolder<VideoSize> mVideoSize;
    public ParameterValueHolder<VideoSmileCapture> mVideoSmileCapture;
    public ParameterValueHolder<VideoStabilizer> mVideoStabilizer;
    public ParameterValueHolder<WhiteBalance> mWhiteBalance;


    @DexReplace
    public CapturingModeParams(CapturingMode var1) {
        this.mCapturingMode = new ParameterValueHolder(var1);
        this.mScene = new ParameterValueHolder(Scene.OFF);
        if(var1.getCameraId() == 1) {
            this.mFacing = new ParameterValueHolder(Facing.FRONT);
        } else {
            this.mFacing = new ParameterValueHolder(Facing.BACK);
        }

        if(var1.getType() == 1) {
            this.mFlash = new ParameterValueHolder(Flash.getDefaultValue());
        } else {
            this.mFlash = new ParameterValueHolder(Flash.OFF);
        }

        this.mPhotoLight = new ParameterValueHolder(PhotoLight.OFF);
        this.mEv = new ParameterValueHolder(Ev.ZERO);
        this.mWhiteBalance = new ParameterValueHolder(WhiteBalance.AUTO);
        this.mResolution = new ParameterValueHolder(Resolution.getDefaultValue(var1));
        this.mCaptureFrameShape = new ParameterValueHolder(CaptureFrameShape.getDefaultValue(var1));
        this.mSelfTimer = new ParameterValueHolder(SelfTimer.OFF);
        this.mSmileCapture = new ParameterValueHolder(SmileCapture.OFF);
        this.mFocusMode = new ParameterValueHolder(FocusMode.getDefaultValue(var1));
        this.mExposureMode = new ParameterValueHolder(ExposureMode.Exposure_AUTO);
        this.mShutterSpeed = new ParameterValueHolder(ShutterSpeed.SPEED_6);
        this.mHdr = new ParameterValueHolder(Hdr.HDR_OFF);
        this.mIso = new ParameterValueHolder(Iso.ISO_AUTO);
        this.mMetering = new ParameterValueHolder(Metering.getDefaultValue(var1));
        this.mSoftSkin = new ParameterValueHolder(SoftSkin.ON);
        if(var1 != CapturingMode.SCENE_RECOGNITION && var1 != CapturingMode.SUPERIOR_FRONT) {
            this.mStabilizer = new ParameterValueHolder(Stabilizer.OFF);
        } else {
            this.mStabilizer = new ParameterValueHolder(Stabilizer.AUTO);
        }

        this.mAutoReview = new ParameterValueHolder(AutoReview.OFF);
        this.mBurst = new ParameterValueHolder(BurstShot.OFF);
        this.mSuperResolution = new ParameterValueHolder(SuperResolution.OFF);
        this.mFaceIdentify = new ParameterValueHolder(FaceIdentify.OFF);
        this.mVideoSize = new ParameterValueHolder(VideoSize.FULL_HD);
        this.mVideoSelfTimer = new ParameterValueHolder(VideoSelfTimer.OFF);
        this.mVideoSmileCapture = new ParameterValueHolder(VideoSmileCapture.OFF);
        this.mVideoHdr = new ParameterValueHolder(VideoHdr.OFF);
        switch(var1.ordinal()) {
            case 1:
            case 2:
            case 3:
                this.mVideoStabilizer = new ParameterValueHolder(VideoStabilizer.STEADY_SHOT);
                break;
            default:
                this.mVideoStabilizer = new ParameterValueHolder(VideoStabilizer.INTELLIGENT_ACTIVE);
        }

        this.mVideoAutoReview = new ParameterValueHolder(VideoAutoReview.OFF);
        this.mMicrophone = new ParameterValueHolder(Microphone.ON);
    }

    public ActionMode getActionMode() {
        return this.mActionMode;
    }

    public Configurations getConfig() {
        return this.mConfig;
    }

    @DexReplace
    public void init(boolean var1, boolean var2, Configurations var3, SharedPreferencesUtil var4) {
        this.mIsOneShot = var1;
        this.mIsOneShotVideo = var2;
        CapturingMode var8 = (CapturingMode)this.mCapturingMode.get();
        this.mActionMode = new ActionMode(var1, var8.getType(), var8.getCameraId());
        this.mConfig = var3;
        this.mCapturingMode.setOptions(new CapturingMode[]{var8});
        this.mScene.setOptions(Scene.getOptions(var8));
        this.mFacing.setOptions(Facing.getOptions());
        this.mFlash.setOptions(Flash.getOptions(this.mActionMode));
        this.mPhotoLight.setOptions(PhotoLight.getOptions(this.mActionMode));
        this.mEv.setOptions(Ev.getOptions(var8));
        this.mWhiteBalance.setOptions(WhiteBalance.getOptions(var8));
        this.mResolution.setOptions(Resolution.getOptions(var8));
        this.mCaptureFrameShape.setOptions(CaptureFrameShape.getOptions(var8));
        this.mSelfTimer.setOptions(SelfTimer.getOptions());
        this.mSmileCapture.setOptions(SmileCapture.getOptions(var8));
        this.mFocusMode.setOptions(FocusMode.getOptions(var8));
        this.mShutterSpeed.setOptions(ShutterSpeed.getOptions(var8));
        this.mExposureMode.setOptions(ExposureMode.getOptions(var8));
        this.mHdr.setOptions(Hdr.getOptions(var8));
        this.mIso.setOptions(Iso.getOptions(var8, (Resolution)this.mResolution.get()));
        this.mMetering.setOptions(Metering.getOptions(var8));
        this.mSoftSkin.setOptions(SoftSkin.getOptions(var8));
        this.mStabilizer.setOptions(Stabilizer.getOptions(var8));
        this.mAutoReview.setOptions(AutoReview.getOptions(var8));
        this.mBurst.setOptions(BurstShot.getOptions(this.mIsOneShot, var8));
        this.mSuperResolution.setOptions(SuperResolution.getOptions(var8, this.mIsOneShotVideo));
        this.mFaceIdentify.setOptions(FaceIdentify.getOptions(this.mActionMode));
        this.mVideoSize.setOptions(VideoSize.getOptions(this.mActionMode, var3));
        this.mVideoSelfTimer.setOptions(VideoSelfTimer.getOptions());
        this.mVideoSmileCapture.setOptions(VideoSmileCapture.getOptions(this.mIsOneShot, var8));
        this.mVideoHdr.setOptions(VideoHdr.getOptions(var8));
        this.mVideoStabilizer.setOptions(VideoStabilizer.getOptions(var8.getCameraId()));
        this.mVideoAutoReview.setOptions(VideoAutoReview.getOptions(var8));
        this.mMicrophone.setOptions(Microphone.getOptions());
        if(this.mIsOneShotVideo && var8 != CapturingMode.FRONT_PHOTO && var8 != CapturingMode.SUPERIOR_FRONT) {
            CapturingMode var5 = CapturingMode.VIDEO;
            ActionMode var6 = new ActionMode(this.mIsOneShot, var5.getType(), var5.getCameraId());
            this.mFlash.setOptions(Flash.getOptions(var6));
            this.mPhotoLight.setOptions(PhotoLight.getOptions(var6));
        }

        Iterator var7 = this.values().iterator();

        while(var7.hasNext()) {
            ParameterUtil.updateDefaultValue((ParameterValueHolder)var7.next());
        }

    }

    public boolean isOneShotVideo() {
        return this.mIsOneShotVideo;
    }

    @DexReplace
    public List<ParameterValueHolder<?>> values() {
        ArrayList var1 = new ArrayList();
        var1.add(this.mCapturingMode);
        var1.add(this.mScene);
        var1.add(this.mFacing);
        var1.add(this.mFlash);
        var1.add(this.mPhotoLight);
        var1.add(this.mEv);
        var1.add(this.mWhiteBalance);
        var1.add(this.mResolution);
        var1.add(this.mCaptureFrameShape);
        var1.add(this.mSelfTimer);
        var1.add(this.mSmileCapture);
        var1.add(this.mExposureMode);
        var1.add(this.mFocusMode);
        var1.add(this.mHdr);
        var1.add(this.mIso);
        var1.add(this.mShutterSpeed);
        var1.add(this.mMetering);
        var1.add(this.mSoftSkin);
        var1.add(this.mStabilizer);
        if(!this.mIsOneShot) {
            var1.add(this.mAutoReview);
        }

        var1.add(this.mBurst);
        var1.add(this.mSuperResolution);
        var1.add(this.mFaceIdentify);
        var1.add(this.mVideoSize);
        var1.add(this.mVideoSelfTimer);
        var1.add(this.mVideoSmileCapture);
        var1.add(this.mVideoHdr);
        var1.add(this.mVideoStabilizer);
        if(!this.mIsOneShotVideo) {
            var1.add(this.mVideoAutoReview);
        }

        var1.add(this.mMicrophone);
        return var1;
    }
}
