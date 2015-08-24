/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.ParameterCategory;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.ParameterSelectability;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.AutoUpload;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Facing;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.Microphone;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.SuperResolution;
import com.sonyericsson.android.camera.configuration.parameters.TouchBlock;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VolumeKey;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.CommonParams;
import com.sonyericsson.android.camera.parameter.FrontPhotoParameters;
import com.sonyericsson.android.camera.parameter.NormalParameters;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.SceneRecognitionParameters;
import com.sonyericsson.android.camera.parameter.SuperiorFrontParameters;
import com.sonyericsson.android.camera.parameter.VideoParameters;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class Parameters
implements ParameterApplicable {
    public static final String TAG = "Parameters";
    public final CapturingMode capturingMode;
    public final boolean isOneShotVideo;
    protected CapturingModeParams mCapturingModeParams;
    protected Map<ParameterKey, ParameterValueHolder<?>> mHolders;
    protected StorageController mStorageController;

    public Parameters(CapturingMode capturingMode, boolean bl, StorageController storageController) {
        this.capturingMode = capturingMode;
        this.isOneShotVideo = bl;
        this.mHolders = new EnumMap(ParameterKey.class);
        this.mStorageController = storageController;
    }

    public static Parameters create(CapturingMode capturingMode, boolean bl, StorageController storageController) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            default: {
                return new NormalParameters(capturingMode, bl, storageController);
            }
            case 1: {
                return new SceneRecognitionParameters(capturingMode, bl, storageController);
            }
            case 2: {
                return new NormalParameters(capturingMode, bl, storageController);
            }
            case 3: {
                return new SuperiorFrontParameters(capturingMode, bl, storageController);
            }
            case 4: {
                return new FrontPhotoParameters(capturingMode, bl, storageController);
            }
            case 5: 
        }
        return new VideoParameters(capturingMode, bl, storageController);
    }

    public static Map<String, String> createStringMap(List<ParameterValueHolder<?>> object) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        object = object.iterator();
        while (object.hasNext()) {
            Object object2 = (ParameterValueHolder)object.next();
            ParameterKey parameterKey = object2.get().getParameterKey();
            if (!parameterKey.isSaved()) continue;
            object2 = object2.createValueString();
            hashMap.put(parameterKey.toString(), (String)object2);
        }
        return hashMap;
    }

    public static void parseStringMap(List<ParameterValueHolder<?>> object, Map<String, String> map) {
        for (ParameterValueHolder parameterValueHolder : object) {
            String string = map.get(parameterValueHolder.get().getParameterKey().toString());
            if (string == null) continue;
            parameterValueHolder.parseValueString(string);
        }
    }

    public void clearHolder() {
        this.mHolders.clear();
    }

    @Override
    public void commit() {
        for (ParameterKey parameterKey : this.mHolders.keySet()) {
            if (!this.mHolders.get((Object)parameterKey).hasChanged()) continue;
            this.mHolders.get((Object)parameterKey).onApplied();
        }
    }

    public AutoReview getAutoReview() {
        return this.mCapturingModeParams.mAutoReview.get();
    }

    public AutoUpload getAutoUpload() {
        return CommonParams.getInstance().mAutoUpload.get();
    }

    public BurstShot getBurstShot() {
        return this.mCapturingModeParams.mBurst.get();
    }

    public CaptureFrameShape getCaptureFrameShape() {
        return this.mCapturingModeParams.mCaptureFrameShape.get();
    }

    public List<ParameterValue> getChangedValues() {
        ArrayList<ParameterValue> arrayList = new ArrayList<ParameterValue>();
        for (ParameterKey parameterKey : this.mHolders.keySet()) {
            if (!this.mHolders.get((Object)parameterKey).hasChanged()) continue;
            arrayList.add((ParameterValue)this.mHolders.get((Object)parameterKey).get());
        }
        return arrayList;
    }

    public List<ParameterValue> getChangedValues(EnumMap<ParameterKey, ParameterValue> enumMap) {
        ArrayList<ParameterValue> arrayList = new ArrayList<ParameterValue>();
        for (ParameterValue parameterValue : this.getParameters().values()) {
            ParameterKey parameterKey = parameterValue.getParameterKey();
            if (parameterKey.getCategory() == ParameterCategory.COMMON) continue;
            if (enumMap.containsKey((Object)parameterKey)) {
                if (enumMap.get((Object)parameterKey) == parameterValue) continue;
                arrayList.add(parameterValue);
                continue;
            }
            arrayList.add(parameterValue);
        }
        return arrayList;
    }

    public Ev getEv() {
        return this.mCapturingModeParams.mEv.get();
    }

    public FaceIdentify getFaceIdentify() {
        return this.mCapturingModeParams.mFaceIdentify.get();
    }

    public Facing getFacing() {
        return this.mCapturingModeParams.mFacing.get();
    }

    public FastCapture getFastCapture() {
        return CommonParams.getInstance().mFastCapture.get();
    }

    public Flash getFlash() {
        return this.mCapturingModeParams.mFlash.get();
    }

    public FocusMode getFocusMode() {
        return this.mCapturingModeParams.mFocusMode.get();
    }

    public Geotag getGeotag() {
        return CommonParams.getInstance().mGeotag.get();
    }

    public Hdr getHdr() {
        return this.mCapturingModeParams.mHdr.get();
    }

    public Iso getIso() {
        return this.mCapturingModeParams.mIso.get();
    }

    public Metering getMetering() {
        return this.mCapturingModeParams.mMetering.get();
    }

    public Microphone getMicrophone() {
        return this.mCapturingModeParams.mMicrophone.get();
    }

    public ParameterValue[] getOptions(ParameterKey parameterKey) {
        if (this.mHolders.containsKey((Object)parameterKey)) {
            return this.mHolders.get((Object)parameterKey).getOptions();
        }
        return new ParameterValue[0];
    }

    public EnumMap<ParameterKey, ParameterValue> getParameters() {
        EnumMap<ParameterKey, ParameterValue> enumMap = new EnumMap<ParameterKey, ParameterValue>(ParameterKey.class);
        for (ParameterKey parameterKey : this.mHolders.keySet()) {
            enumMap.put(parameterKey, (ParameterValue)this.mHolders.get((Object)parameterKey).get());
        }
        return enumMap;
    }

    public PhotoLight getPhotoLight() {
        return this.mCapturingModeParams.mPhotoLight.get();
    }

    public Resolution getResolution() {
        return this.mCapturingModeParams.mResolution.get();
    }

    public Scene getScene() {
        return this.mCapturingModeParams.mScene.get();
    }

    public SelfTimer getSelfTimer() {
        return this.mCapturingModeParams.mSelfTimer.get();
    }

    public ShutterSound getShutterSound() {
        return CommonParams.getInstance().mShutterSound.get();
    }

    public SmileCapture getSmileCapture() {
        return this.mCapturingModeParams.mSmileCapture.get();
    }

    public SoftSkin getSoftSkin() {
        return this.mCapturingModeParams.mSoftSkin.get();
    }

    public Stabilizer getStabilizer() {
        return this.mCapturingModeParams.mStabilizer.get();
    }

    public SuperResolution getSuperResolution() {
        return this.mCapturingModeParams.mSuperResolution.get();
    }

    public abstract EnumMap<ParameterKey, ParameterValue> getTargetParameters();

    public TouchCapture getTouchCapture() {
        return CommonParams.getInstance().mTouchCapture.get();
    }

    public Resolution getUpdatedResolution(Hdr hdr) {
        boolean bl = true;
        if (hdr == Hdr.HDR_OFF) {
            bl = false;
        }
        return Resolution.getHdrResolution(this.getResolution(), bl, this.capturingMode.getCameraId());
    }

    public VideoAutoReview getVideoAutoReview() {
        return this.mCapturingModeParams.mVideoAutoReview.get();
    }

    public VideoHdr getVideoHdr() {
        return this.mCapturingModeParams.mVideoHdr.get();
    }

    public VideoSelfTimer getVideoSelfTimer() {
        return this.mCapturingModeParams.mVideoSelfTimer.get();
    }

    public VideoSize getVideoSize() {
        return this.mCapturingModeParams.mVideoSize.get();
    }

    public VideoSmileCapture getVideoSmileCapture() {
        return this.mCapturingModeParams.mVideoSmileCapture.get();
    }

    public VideoStabilizer getVideoStabilizer() {
        return this.mCapturingModeParams.mVideoStabilizer.get();
    }

    public VolumeKey getVolumeKey() {
        return CommonParams.getInstance().mVolumeKey.get();
    }

    public WhiteBalance getWhiteBalance() {
        return this.mCapturingModeParams.mWhiteBalance.get();
    }

    protected abstract void prepare();

    public void prepareHolder(boolean bl, boolean bl2, Configurations configurations, SharedPreferencesUtil sharedPreferencesUtil) {
        this.mCapturingModeParams = new CapturingModeParams(this.capturingMode);
        this.mCapturingModeParams.init(bl, bl2, configurations, sharedPreferencesUtil);
        this.putHolders(CommonParams.getInstance().values());
        this.putHolders(this.mCapturingModeParams.values());
        this.prepare();
        sharedPreferencesUtil.registerKey(SharedPreferencesUtil.createPrefix(ParameterCategory.CAPTURING_MODE, this.capturingMode, ""));
    }

    protected void putHolders(List<ParameterValueHolder<?>> object) {
        object = object.iterator();
        while (object.hasNext()) {
            this.updateHolder((ParameterValueHolder)object.next());
        }
    }

    public void readSharedPrefs(SharedPreferencesUtil object) {
        object = object.getStringMap(SharedPreferencesUtil.createPrefix(ParameterCategory.CAPTURING_MODE, this.capturingMode, ""));
        Parameters.parseStringMap(this.mCapturingModeParams.values(), object);
    }

    public void reset() {
        for (ParameterKey parameterKey : this.mHolders.keySet()) {
            this.mHolders.get((Object)parameterKey).reset();
            this.mHolders.get((Object)parameterKey).setDefaultValue().apply(this);
        }
        this.commit();
    }

    @Override
    public void set(AutoReview autoReview) {
        this.mCapturingModeParams.mAutoReview.set(autoReview);
    }

    @Override
    public void set(AutoUpload autoUpload) {
        CommonParams.getInstance().mAutoUpload.set(autoUpload);
    }

    @Override
    public void set(BurstShot burstShot) {
        this.mCapturingModeParams.mBurst.set(burstShot);
    }

    @Override
    public void set(CaptureFrameShape captureFrameShape) {
        this.mCapturingModeParams.mCaptureFrameShape.set(captureFrameShape);
    }

    @Override
    public void set(CapturingMode capturingMode) {
    }

    @Override
    public void set(DestinationToSave destinationToSave) {
        CommonParams.getInstance().mDestinationToSave.set(destinationToSave);
    }

    @Override
    public void set(Ev ev) {
        DependencyApplier.create(this.mCapturingModeParams.mEv.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mEv.set(ev);
        DependencyApplier.create(ev).apply(this.mCapturingModeParams);
    }

    @Override
    public void set(FaceIdentify faceIdentify) {
        DependencyApplier.create(this.mCapturingModeParams.mFaceIdentify.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mFaceIdentify.set(faceIdentify);
        DependencyApplier.create(faceIdentify).apply(this.mCapturingModeParams);
    }

    @Override
    public void set(Facing facing) {
    }

    @Override
    public void set(FastCapture fastCapture) {
        CommonParams.getInstance().mFastCapture.set(fastCapture);
    }

    @Override
    public void set(Flash flash) {
        ParameterUtil.reset(this.mCapturingModeParams.mFlash);
        this.mCapturingModeParams.mFlash.set(flash);
    }

    @Override
    public void set(FocusMode focusMode) {
        DependencyApplier.create(this.mCapturingModeParams.mFocusMode.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mFocusMode.set(focusMode);
        DependencyApplier.create(focusMode).apply(this.mCapturingModeParams);
    }

    @Override
    public void set(Geotag geotag) {
        CommonParams.getInstance().mGeotag.set(geotag);
    }

    @Override
    public void set(Hdr hdr) {
        ParameterUtil.reset(this.mCapturingModeParams.mHdr, hdr);
        DependencyApplier.create(this.mCapturingModeParams.mHdr.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mHdr.set(hdr);
        DependencyApplier.create(hdr).apply(this.mCapturingModeParams);
    }

    @Override
    public void set(Iso iso) {
        ParameterUtil.reset(this.mCapturingModeParams.mIso, iso);
        DependencyApplier.create(this.mCapturingModeParams.mIso.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mIso.set(iso);
        DependencyApplier.create(iso).apply(this.mCapturingModeParams);
    }

    @Override
    public void set(Metering metering) {
        this.mCapturingModeParams.mMetering.set(metering);
    }

    @Override
    public void set(Microphone microphone) {
        this.mCapturingModeParams.mMicrophone.set(microphone);
    }

    @Override
    public void set(PhotoLight photoLight) {
        this.mCapturingModeParams.mPhotoLight.set(photoLight);
    }

    @Override
    public void set(Resolution resolution) {
        this.mCapturingModeParams.mResolution.set(resolution);
    }

    @Override
    public void set(Scene scene) {
        this.mCapturingModeParams.mScene.set(scene);
    }

    @Override
    public void set(SelfTimer selfTimer) {
        DependencyApplier.create(this.mCapturingModeParams.mSelfTimer.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mSelfTimer.set(selfTimer);
        DependencyApplier.create(selfTimer).apply(this.mCapturingModeParams);
    }

    @Override
    public void set(ShutterSound shutterSound) {
        CommonParams.getInstance().mShutterSound.set(shutterSound);
    }

    @Override
    public void set(SmileCapture smileCapture) {
        DependencyApplier.create(this.mCapturingModeParams.mSmileCapture.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mSmileCapture.set(smileCapture);
        DependencyApplier.create(smileCapture).apply(this.mCapturingModeParams);
    }

    @Override
    public void set(SoftSkin softSkin) {
        this.mCapturingModeParams.mSoftSkin.set(softSkin);
    }

    @Override
    public void set(Stabilizer stabilizer) {
        ParameterUtil.reset(this.mCapturingModeParams.mStabilizer, stabilizer);
        DependencyApplier.create(this.mCapturingModeParams.mStabilizer.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mStabilizer.set(stabilizer);
        DependencyApplier.create(stabilizer).apply(this.mCapturingModeParams);
    }

    @Override
    public void set(SuperResolution superResolution) {
        this.mCapturingModeParams.mSuperResolution.set(superResolution);
    }

    @Override
    public void set(TouchBlock touchBlock) {
        CommonParams.getInstance().mTouchBlock.set(touchBlock);
    }

    @Override
    public void set(TouchCapture touchCapture) {
        CommonParams.getInstance().mTouchCapture.set(touchCapture);
    }

    @Override
    public void set(VideoAutoReview videoAutoReview) {
        this.mCapturingModeParams.mVideoAutoReview.set(videoAutoReview);
    }

    @Override
    public void set(VideoHdr videoHdr) {
        DependencyApplier.create(this.mCapturingModeParams.mVideoHdr.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mVideoHdr.set(videoHdr);
        DependencyApplier.create(videoHdr).apply(this.mCapturingModeParams);
    }

    @Override
    public void set(VideoSelfTimer videoSelfTimer) {
        this.mCapturingModeParams.mVideoSelfTimer.set(videoSelfTimer);
    }

    @Override
    public void set(VideoSize videoSize) {
        DependencyApplier.create(this.mCapturingModeParams.mVideoSize.get(), this.isOneShotVideo).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mVideoSize.set(videoSize);
        DependencyApplier.create(videoSize, this.isOneShotVideo).apply(this.mCapturingModeParams);
    }

    @Override
    public void set(VideoSmileCapture videoSmileCapture) {
        DependencyApplier.create(this.mCapturingModeParams.mVideoSmileCapture.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mVideoSmileCapture.set(videoSmileCapture);
        DependencyApplier.create(videoSmileCapture).apply(this.mCapturingModeParams);
    }

    @Override
    public void set(VideoStabilizer videoStabilizer) {
        this.mCapturingModeParams.mVideoStabilizer.set(videoStabilizer);
    }

    @Override
    public void set(VolumeKey volumeKey) {
        CommonParams.getInstance().mVolumeKey.set(volumeKey);
    }

    @Override
    public void set(WhiteBalance whiteBalance) {
        this.mCapturingModeParams.mWhiteBalance.set(whiteBalance);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void updateHolder(ParameterValueHolder<?> parameterValueHolder) {
        ParameterKey parameterKey = parameterValueHolder.get().getParameterKey();
        if (ParameterSelectability.getSelectability(parameterValueHolder.getOptions().length) != ParameterSelectability.INVALID) {
            this.mHolders.put(parameterKey, parameterValueHolder);
            return;
        } else {
            if (!this.mHolders.containsKey((Object)parameterKey)) return;
            {
                this.mHolders.remove((Object)parameterKey);
                return;
            }
        }
    }

    public void updateLocalResolution(Hdr object, ParameterValueHolder<Resolution> parameterValueHolder) {
        boolean bl = true;
        if (object == Hdr.HDR_OFF) {
            bl = false;
        }
        object = this.mCapturingModeParams.mResolution;
        int n = this.capturingMode.getCameraId();
        parameterValueHolder.setOptions((ParameterValue[])Resolution.getHdrDependentOptions((Resolution[])object.getOptions(), bl, n));
        this.updateHolder(parameterValueHolder);
        parameterValueHolder.set(Resolution.getHdrResolution(this.getResolution(), bl, n));
    }

    protected abstract void updatePhotoLight();

    protected abstract void updateSelectability();

    protected void writeSharedPrefs(SharedPreferencesUtil sharedPreferencesUtil) {
        sharedPreferencesUtil.setStringMap(SharedPreferencesUtil.createPrefix(ParameterCategory.CAPTURING_MODE, this.capturingMode, ""), Parameters.createStringMap(this.mCapturingModeParams.values()));
    }

}

