//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

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
import com.sonyericsson.android.camera.configuration.parameters.ExposureMode;
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
import com.sonyericsson.android.camera.configuration.parameters.ShutterSpeed;
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
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;


@DexEdit(defaultAction = DexAction.IGNORE)
public abstract class Parameters implements ParameterApplicable {

    public static final String TAG = "Parameters";
    public final CapturingMode capturingMode;
    public final boolean isOneShotVideo;
    protected CapturingModeParams mCapturingModeParams;
    protected Map<ParameterKey, ParameterValueHolder<?>> mHolders;
    protected StorageController mStorageController;

    @DexIgnore
    public Parameters(CapturingMode var1, boolean var2, StorageController var3) {
        this.capturingMode = var1;
        this.isOneShotVideo = var2;
        this.mHolders = new EnumMap(ParameterKey.class);
        this.mStorageController = var3;
    }

    @DexIgnore
    public static Parameters create(CapturingMode var0, boolean var1, StorageController var2) {
        switch (var0.ordinal()) {
            case 1:
                return new SceneRecognitionParameters(var0, var1, var2);
            case 2:
                return new NormalParameters(var0, var1, var2);
            case 3:
                return new SuperiorFrontParameters(var0, var1, var2);
            case 4:
                return new FrontPhotoParameters(var0, var1, var2);
            case 5:
                return new VideoParameters(var0, var1, var2);
            default:
                return new NormalParameters(var0, var1, var2);
        }
    }

    @DexIgnore
    public static Map<String, String> createStringMap(List<ParameterValueHolder<?>> var0) {
        HashMap var1 = new HashMap();
        Iterator var4 = var0.iterator();

        while (var4.hasNext()) {
            ParameterValueHolder var3 = (ParameterValueHolder) var4.next();
            ParameterKey var2 = var3.get().getParameterKey();
            if (var2.isSaved()) {
                String var5 = var3.createValueString();
                var1.put(var2.toString(), var5);
            }
        }

        return var1;
    }

    @DexIgnore
    public static void parseStringMap(List<ParameterValueHolder<?>> var0, Map<String, String> var1) {
        Iterator var4 = var0.iterator();

        while (var4.hasNext()) {
            ParameterValueHolder var2 = (ParameterValueHolder) var4.next();
            String var3 = (String) var1.get(var2.get().getParameterKey().toString());
            if (var3 != null) {
                var2.parseValueString(var3);
            }
        }

    }

    @DexIgnore
    public void clearHolder() {
        this.mHolders.clear();
    }

    @DexIgnore
    public void commit() {
        Iterator var1 = this.mHolders.keySet().iterator();

        while (var1.hasNext()) {
            ParameterKey var2 = (ParameterKey) var1.next();
            if (((ParameterValueHolder) this.mHolders.get(var2)).hasChanged()) {
                ((ParameterValueHolder) this.mHolders.get(var2)).onApplied();
            }
        }

    }

    @DexIgnore
    public AutoReview getAutoReview() {
        return (AutoReview) this.mCapturingModeParams.mAutoReview.get();
    }

    @DexIgnore
    public AutoUpload getAutoUpload() {
        return (AutoUpload) CommonParams.getInstance().mAutoUpload.get();
    }

    @DexIgnore
    public BurstShot getBurstShot() {
        return (BurstShot) this.mCapturingModeParams.mBurst.get();
    }

    @DexIgnore
    public CaptureFrameShape getCaptureFrameShape() {
        return (CaptureFrameShape) this.mCapturingModeParams.mCaptureFrameShape.get();
    }

    @DexIgnore
    public List<ParameterValue> getChangedValues() {
        ArrayList var1 = new ArrayList();
        Iterator var2 = this.mHolders.keySet().iterator();

        while (var2.hasNext()) {
            ParameterKey var3 = (ParameterKey) var2.next();
            if (((ParameterValueHolder) this.mHolders.get(var3)).hasChanged()) {
                var1.add(((ParameterValueHolder) this.mHolders.get(var3)).get());
            }
        }

        return var1;
    }

    @DexIgnore
    public List<ParameterValue> getChangedValues(EnumMap<ParameterKey, ParameterValue> var1) {
        ArrayList var2 = new ArrayList();
        Iterator var3 = this.getParameters().values().iterator();

        while (var3.hasNext()) {
            ParameterValue var4 = (ParameterValue) var3.next();
            ParameterKey var5 = var4.getParameterKey();
            if (var5.getCategory() != ParameterCategory.COMMON) {
                if (var1.containsKey(var5)) {
                    if (var1.get(var5) != var4) {
                        var2.add(var4);
                    }
                } else {
                    var2.add(var4);
                }
            }
        }

        return var2;
    }

    @DexIgnore
    public Ev getEv() {
        return (Ev) this.mCapturingModeParams.mEv.get();
    }

    @DexIgnore
    public FaceIdentify getFaceIdentify() {
        return (FaceIdentify) this.mCapturingModeParams.mFaceIdentify.get();
    }

    @DexIgnore
    public Facing getFacing() {
        return (Facing) this.mCapturingModeParams.mFacing.get();
    }

    @DexIgnore
    public FastCapture getFastCapture() {
        return (FastCapture) CommonParams.getInstance().mFastCapture.get();
    }

    @DexIgnore
    public Flash getFlash() {
        return (Flash) this.mCapturingModeParams.mFlash.get();
    }

    @DexIgnore
    public FocusMode getFocusMode() {
        return (FocusMode) this.mCapturingModeParams.mFocusMode.get();
    }

    @DexIgnore
    public Geotag getGeotag() {
        return (Geotag) CommonParams.getInstance().mGeotag.get();
    }

    @DexIgnore
    public Hdr getHdr() {
        return (Hdr) this.mCapturingModeParams.mHdr.get();
    }

    @DexIgnore
    public Iso getIso() {
        return (Iso) this.mCapturingModeParams.mIso.get();
    }

    @DexAdd
    public ExposureMode getExposureMode() {
        return (ExposureMode) this.mCapturingModeParams.mExposureMode.get();
    }

    @DexAdd
    public ShutterSpeed getShutterSpeed() {
        return (ShutterSpeed) this.mCapturingModeParams.mShutterSpeed.get();
    }

    @DexIgnore
    public Metering getMetering() {
        return (Metering) this.mCapturingModeParams.mMetering.get();
    }

    @DexIgnore
    public Microphone getMicrophone() {
        return (Microphone) this.mCapturingModeParams.mMicrophone.get();
    }

    @DexIgnore
    public ParameterValue[] getOptions(ParameterKey var1) {
        return this.mHolders.containsKey(var1) ? ((ParameterValueHolder) this.mHolders.get(var1)).getOptions() : new ParameterValue[0];
    }

    @DexIgnore
    public EnumMap<ParameterKey, ParameterValue> getParameters() {
        EnumMap var1 = new EnumMap(ParameterKey.class);
        Iterator var2 = this.mHolders.keySet().iterator();

        while (var2.hasNext()) {
            ParameterKey var3 = (ParameterKey) var2.next();
            var1.put(var3, ((ParameterValueHolder) this.mHolders.get(var3)).get());
        }

        return var1;
    }

    @DexIgnore
    public PhotoLight getPhotoLight() {
        return (PhotoLight) this.mCapturingModeParams.mPhotoLight.get();
    }

    @DexIgnore
    public Resolution getResolution() {
        return (Resolution) this.mCapturingModeParams.mResolution.get();
    }

    @DexIgnore
    public Scene getScene() {
        return (Scene) this.mCapturingModeParams.mScene.get();
    }

    @DexIgnore
    public SelfTimer getSelfTimer() {
        return (SelfTimer) this.mCapturingModeParams.mSelfTimer.get();
    }

    @DexIgnore
    public ShutterSound getShutterSound() {
        return (ShutterSound) CommonParams.getInstance().mShutterSound.get();
    }

    @DexIgnore
    public SmileCapture getSmileCapture() {
        return (SmileCapture) this.mCapturingModeParams.mSmileCapture.get();
    }

    @DexIgnore
    public SoftSkin getSoftSkin() {
        return (SoftSkin) this.mCapturingModeParams.mSoftSkin.get();
    }

    @DexIgnore
    public Stabilizer getStabilizer() {
        return (Stabilizer) this.mCapturingModeParams.mStabilizer.get();
    }

    @DexIgnore
    public SuperResolution getSuperResolution() {
        return (SuperResolution) this.mCapturingModeParams.mSuperResolution.get();
    }

    @DexIgnore
    public abstract EnumMap<ParameterKey, ParameterValue> getTargetParameters();

    @DexIgnore
    public TouchCapture getTouchCapture() {
        return (TouchCapture) CommonParams.getInstance().mTouchCapture.get();
    }

    @DexIgnore
    public Resolution getUpdatedResolution(Hdr var1) {
        boolean var2 = true;
        if (var1 == Hdr.HDR_OFF) {
            var2 = false;
        }

        return Resolution.getHdrResolution(this.getResolution(), var2, this.capturingMode.getCameraId());
    }

    @DexIgnore
    public VideoAutoReview getVideoAutoReview() {
        return (VideoAutoReview) this.mCapturingModeParams.mVideoAutoReview.get();
    }

    @DexIgnore
    public VideoHdr getVideoHdr() {
        return (VideoHdr) this.mCapturingModeParams.mVideoHdr.get();
    }

    @DexIgnore
    public VideoSelfTimer getVideoSelfTimer() {
        return (VideoSelfTimer) this.mCapturingModeParams.mVideoSelfTimer.get();
    }

    @DexIgnore
    public VideoSize getVideoSize() {
        return (VideoSize) this.mCapturingModeParams.mVideoSize.get();
    }

    @DexIgnore
    public VideoSmileCapture getVideoSmileCapture() {
        return (VideoSmileCapture) this.mCapturingModeParams.mVideoSmileCapture.get();
    }

    @DexIgnore
    public VideoStabilizer getVideoStabilizer() {
        return (VideoStabilizer) this.mCapturingModeParams.mVideoStabilizer.get();
    }

    @DexIgnore
    public VolumeKey getVolumeKey() {
        return (VolumeKey) CommonParams.getInstance().mVolumeKey.get();
    }

    @DexIgnore
    public WhiteBalance getWhiteBalance() {
        return (WhiteBalance) this.mCapturingModeParams.mWhiteBalance.get();
    }

    protected abstract void prepare();

    @DexIgnore
    public void prepareHolder(boolean var1, boolean var2, Configurations var3, SharedPreferencesUtil var4) {
        this.mCapturingModeParams = new CapturingModeParams(this.capturingMode);
        this.mCapturingModeParams.init(var1, var2, var3, var4);
        this.putHolders(CommonParams.getInstance().values());
        this.putHolders(this.mCapturingModeParams.values());
        this.prepare();
        var4.registerKey(SharedPreferencesUtil.createPrefix(ParameterCategory.CAPTURING_MODE, this.capturingMode, ""));
    }

    @DexIgnore
    protected void putHolders(List<ParameterValueHolder<?>> var1) {
        Iterator var2 = var1.iterator();

        while (var2.hasNext()) {
            this.updateHolder((ParameterValueHolder) var2.next());
        }

    }

    @DexIgnore
    public void readSharedPrefs(SharedPreferencesUtil var1) {
        Map var2 = var1.getStringMap(SharedPreferencesUtil.createPrefix(ParameterCategory.CAPTURING_MODE, this.capturingMode, ""));
        parseStringMap(this.mCapturingModeParams.values(), var2);
    }

    @DexIgnore
    public void reset() {
        Iterator var1 = this.mHolders.keySet().iterator();

        while (var1.hasNext()) {
            ParameterKey var2 = (ParameterKey) var1.next();
            ((ParameterValueHolder) this.mHolders.get(var2)).reset();
            ((ParameterValueHolder) this.mHolders.get(var2)).setDefaultValue().apply(this);
        }

        this.commit();
    }

    @DexAdd
    public void set(ExposureMode var1) {
        this.mCapturingModeParams.mExposureMode.set(var1);
    }

    @DexAdd
    public void set(ShutterSpeed var1) {
        this.mCapturingModeParams.mShutterSpeed.set(var1);
    }

    @DexIgnore
    public void set(AutoReview var1) {
        this.mCapturingModeParams.mAutoReview.set(var1);
    }

    @DexIgnore
    public void set(AutoUpload var1) {
        CommonParams.getInstance().mAutoUpload.set(var1);
    }

    @DexIgnore
    public void set(BurstShot var1) {
        this.mCapturingModeParams.mBurst.set(var1);
    }

    @DexIgnore
    public void set(CaptureFrameShape var1) {
        this.mCapturingModeParams.mCaptureFrameShape.set(var1);
    }

    @DexIgnore
    public void set(CapturingMode var1) {
    }

    @DexIgnore
    public void set(DestinationToSave var1) {
        CommonParams.getInstance().mDestinationToSave.set(var1);
    }

    @DexIgnore
    public void set(Ev var1) {
        DependencyApplier.create((Ev) this.mCapturingModeParams.mEv.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mEv.set(var1);
        DependencyApplier.create(var1).apply(this.mCapturingModeParams);
    }

    @DexIgnore
    public void set(FaceIdentify var1) {
        DependencyApplier.create((FaceIdentify) this.mCapturingModeParams.mFaceIdentify.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mFaceIdentify.set(var1);
        DependencyApplier.create(var1).apply(this.mCapturingModeParams);
    }

    @DexIgnore
    public void set(Facing var1) {
    }

    @DexIgnore
    public void set(FastCapture var1) {
        CommonParams.getInstance().mFastCapture.set(var1);
    }

    @DexIgnore
    public void set(Flash var1) {
        ParameterUtil.reset(this.mCapturingModeParams.mFlash);
        this.mCapturingModeParams.mFlash.set(var1);
    }

    @DexIgnore
    public void set(FocusMode var1) {
        DependencyApplier.create((FocusMode) this.mCapturingModeParams.mFocusMode.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mFocusMode.set(var1);
        DependencyApplier.create(var1).apply(this.mCapturingModeParams);
    }

    @DexIgnore
    public void set(Geotag var1) {
        CommonParams.getInstance().mGeotag.set(var1);
    }

    @DexIgnore
    public void set(Hdr var1) {
        ParameterUtil.reset(this.mCapturingModeParams.mHdr, var1);
        DependencyApplier.create((Hdr) this.mCapturingModeParams.mHdr.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mHdr.set(var1);
        DependencyApplier.create(var1).apply(this.mCapturingModeParams);
    }

    @DexIgnore
    public void set(Iso var1) {
        ParameterUtil.reset(this.mCapturingModeParams.mIso, var1);
        DependencyApplier.create((Iso) this.mCapturingModeParams.mIso.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mIso.set(var1);
        DependencyApplier.create(var1).apply(this.mCapturingModeParams);
    }

    @DexIgnore
    public void set(Metering var1) {
        this.mCapturingModeParams.mMetering.set(var1);
    }

    @DexIgnore
    public void set(Microphone var1) {
        this.mCapturingModeParams.mMicrophone.set(var1);
    }

    @DexIgnore
    public void set(PhotoLight var1) {
        this.mCapturingModeParams.mPhotoLight.set(var1);
    }

    @DexIgnore
    public void set(Resolution var1) {
        this.mCapturingModeParams.mResolution.set(var1);
    }

    @DexIgnore
    public void set(Scene var1) {
        this.mCapturingModeParams.mScene.set(var1);
    }

    @DexIgnore
    public void set(SelfTimer var1) {
        DependencyApplier.create((SelfTimer) this.mCapturingModeParams.mSelfTimer.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mSelfTimer.set(var1);
        DependencyApplier.create(var1).apply(this.mCapturingModeParams);
    }

    @DexIgnore
    public void set(ShutterSound var1) {
        CommonParams.getInstance().mShutterSound.set(var1);
    }

    @DexIgnore
    public void set(SmileCapture var1) {
        DependencyApplier.create((SmileCapture) this.mCapturingModeParams.mSmileCapture.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mSmileCapture.set(var1);
        DependencyApplier.create(var1).apply(this.mCapturingModeParams);
    }

    @DexIgnore
    public void set(SoftSkin var1) {
        this.mCapturingModeParams.mSoftSkin.set(var1);
    }

    @DexIgnore
    public void set(Stabilizer var1) {
        ParameterUtil.reset(this.mCapturingModeParams.mStabilizer, var1);
        DependencyApplier.create((Stabilizer) this.mCapturingModeParams.mStabilizer.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mStabilizer.set(var1);
        DependencyApplier.create(var1).apply(this.mCapturingModeParams);
    }

    @DexIgnore
    public void set(SuperResolution var1) {
        this.mCapturingModeParams.mSuperResolution.set(var1);
    }

    @DexIgnore
    public void set(TouchBlock var1) {
        CommonParams.getInstance().mTouchBlock.set(var1);
    }

    @DexIgnore
    public void set(TouchCapture var1) {
        CommonParams.getInstance().mTouchCapture.set(var1);
    }

    @DexIgnore
    public void set(VideoAutoReview var1) {
        this.mCapturingModeParams.mVideoAutoReview.set(var1);
    }

    @DexIgnore
    public void set(VideoHdr var1) {
        DependencyApplier.create((VideoHdr) this.mCapturingModeParams.mVideoHdr.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mVideoHdr.set(var1);
        DependencyApplier.create(var1).apply(this.mCapturingModeParams);
    }

    @DexIgnore
    public void set(VideoSelfTimer var1) {
        this.mCapturingModeParams.mVideoSelfTimer.set(var1);
    }

    @DexIgnore
    public void set(VideoSize var1) {
        DependencyApplier.create((VideoSize) this.mCapturingModeParams.mVideoSize.get(), this.isOneShotVideo).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mVideoSize.set(var1);
        DependencyApplier.create(var1, this.isOneShotVideo).apply(this.mCapturingModeParams);
    }

    @DexIgnore
    public void set(VideoSmileCapture var1) {
        DependencyApplier.create((VideoSmileCapture) this.mCapturingModeParams.mVideoSmileCapture.get()).reset(this.mCapturingModeParams);
        this.mCapturingModeParams.mVideoSmileCapture.set(var1);
        DependencyApplier.create(var1).apply(this.mCapturingModeParams);
    }

    @DexIgnore
    public void set(VideoStabilizer var1) {
        this.mCapturingModeParams.mVideoStabilizer.set(var1);
    }

    @DexIgnore
    public void set(VolumeKey var1) {
        CommonParams.getInstance().mVolumeKey.set(var1);
    }

    @DexIgnore
    public void set(WhiteBalance var1) {
        this.mCapturingModeParams.mWhiteBalance.set(var1);
    }

    @DexIgnore
    protected void updateHolder(ParameterValueHolder<?> var1) {
        ParameterKey var2 = var1.get().getParameterKey();
        if (ParameterSelectability.getSelectability(var1.getOptions().length) != ParameterSelectability.INVALID) {
            this.mHolders.put(var2, var1);
        } else if (this.mHolders.containsKey(var2)) {
            this.mHolders.remove(var2);
            return;
        }

    }

    @DexIgnore
    public void updateLocalResolution(Hdr var1, ParameterValueHolder<Resolution> var2) {
        boolean var4 = true;
        if (var1 == Hdr.HDR_OFF) {
            var4 = false;
        }

        ParameterValueHolder var5 = this.mCapturingModeParams.mResolution;
        int var3 = this.capturingMode.getCameraId();
        var2.setOptions(Resolution.getHdrDependentOptions((Resolution[]) var5.getOptions(), var4, var3));
        this.updateHolder(var2);
        var2.set(Resolution.getHdrResolution(this.getResolution(), var4, var3));
    }


    @DexIgnore
    protected abstract void updatePhotoLight();

    @DexIgnore
    protected abstract void updateSelectability();

    @DexIgnore
    protected void writeSharedPrefs(SharedPreferencesUtil var1) {
        var1.setStringMap(SharedPreferencesUtil.createPrefix(ParameterCategory.CAPTURING_MODE, this.capturingMode, ""), createStringMap(this.mCapturingModeParams.values()));
    }
}
