/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Facing;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.Microphone;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
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
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

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

    /*
     * Exception decompiling
     */
    public CapturingModeParams(CapturingMode var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    public ActionMode getActionMode() {
        return this.mActionMode;
    }

    public Configurations getConfig() {
        return this.mConfig;
    }

    public void init(boolean bl, boolean bl2, Configurations object, SharedPreferencesUtil object2) {
        this.mIsOneShot = bl;
        this.mIsOneShotVideo = bl2;
        object2 = this.mCapturingMode.get();
        this.mActionMode = new ActionMode(bl, object2.getType(), object2.getCameraId());
        this.mConfig = object;
        this.mCapturingMode.setOptions((ParameterValue[])new CapturingMode[]{object2});
        this.mScene.setOptions((ParameterValue[])Scene.getOptions((CapturingMode)object2));
        this.mFacing.setOptions((ParameterValue[])Facing.getOptions());
        this.mFlash.setOptions((ParameterValue[])Flash.getOptions(this.mActionMode));
        this.mPhotoLight.setOptions((ParameterValue[])PhotoLight.getOptions(this.mActionMode));
        this.mEv.setOptions((ParameterValue[])Ev.getOptions((CapturingMode)object2));
        this.mWhiteBalance.setOptions((ParameterValue[])WhiteBalance.getOptions((CapturingMode)object2));
        this.mResolution.setOptions((ParameterValue[])Resolution.getOptions((CapturingMode)object2));
        this.mCaptureFrameShape.setOptions((ParameterValue[])CaptureFrameShape.getOptions((CapturingMode)object2));
        this.mSelfTimer.setOptions((ParameterValue[])SelfTimer.getOptions());
        this.mSmileCapture.setOptions((ParameterValue[])SmileCapture.getOptions((CapturingMode)object2));
        this.mFocusMode.setOptions((ParameterValue[])FocusMode.getOptions((CapturingMode)object2));
        this.mHdr.setOptions((ParameterValue[])Hdr.getOptions((CapturingMode)object2));
        this.mIso.setOptions((ParameterValue[])Iso.getOptions((CapturingMode)object2, this.mResolution.get()));
        this.mMetering.setOptions((ParameterValue[])Metering.getOptions((CapturingMode)object2));
        this.mSoftSkin.setOptions((ParameterValue[])SoftSkin.getOptions((CapturingMode)object2));
        this.mStabilizer.setOptions((ParameterValue[])Stabilizer.getOptions((CapturingMode)object2));
        this.mAutoReview.setOptions((ParameterValue[])AutoReview.getOptions((CapturingMode)object2));
        this.mBurst.setOptions((ParameterValue[])BurstShot.getOptions(this.mIsOneShot, (CapturingMode)object2));
        this.mSuperResolution.setOptions((ParameterValue[])SuperResolution.getOptions((CapturingMode)object2, this.mIsOneShotVideo));
        this.mFaceIdentify.setOptions((ParameterValue[])FaceIdentify.getOptions(this.mActionMode));
        this.mVideoSize.setOptions((ParameterValue[])VideoSize.getOptions(this.mActionMode, (Configurations)object));
        this.mVideoSelfTimer.setOptions((ParameterValue[])VideoSelfTimer.getOptions());
        this.mVideoSmileCapture.setOptions((ParameterValue[])VideoSmileCapture.getOptions(this.mIsOneShot, (CapturingMode)object2));
        this.mVideoHdr.setOptions((ParameterValue[])VideoHdr.getOptions((CapturingMode)object2));
        this.mVideoStabilizer.setOptions((ParameterValue[])VideoStabilizer.getOptions(object2.getCameraId()));
        this.mVideoAutoReview.setOptions((ParameterValue[])VideoAutoReview.getOptions((CapturingMode)object2));
        this.mMicrophone.setOptions((ParameterValue[])Microphone.getOptions());
        if (this.mIsOneShotVideo && object2 != CapturingMode.FRONT_PHOTO && object2 != CapturingMode.SUPERIOR_FRONT) {
            object = CapturingMode.VIDEO;
            object = new ActionMode(this.mIsOneShot, object.getType(), object.getCameraId());
            this.mFlash.setOptions((ParameterValue[])Flash.getOptions((ActionMode)object));
            this.mPhotoLight.setOptions((ParameterValue[])PhotoLight.getOptions((ActionMode)object));
        }
        object = this.values().iterator();
        while (object.hasNext()) {
            ParameterUtil.updateDefaultValue((ParameterValueHolder)object.next());
        }
    }

    public boolean isOneShotVideo() {
        return this.mIsOneShotVideo;
    }

    public List<ParameterValueHolder<?>> values() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.mCapturingMode);
        arrayList.add(this.mScene);
        arrayList.add(this.mFacing);
        arrayList.add(this.mFlash);
        arrayList.add(this.mPhotoLight);
        arrayList.add(this.mEv);
        arrayList.add(this.mWhiteBalance);
        arrayList.add(this.mResolution);
        arrayList.add(this.mCaptureFrameShape);
        arrayList.add(this.mSelfTimer);
        arrayList.add(this.mSmileCapture);
        arrayList.add(this.mFocusMode);
        arrayList.add(this.mHdr);
        arrayList.add(this.mIso);
        arrayList.add(this.mMetering);
        arrayList.add(this.mSoftSkin);
        arrayList.add(this.mStabilizer);
        if (!this.mIsOneShot) {
            arrayList.add(this.mAutoReview);
        }
        arrayList.add(this.mBurst);
        arrayList.add(this.mSuperResolution);
        arrayList.add(this.mFaceIdentify);
        arrayList.add(this.mVideoSize);
        arrayList.add(this.mVideoSelfTimer);
        arrayList.add(this.mVideoSmileCapture);
        arrayList.add(this.mVideoHdr);
        arrayList.add(this.mVideoStabilizer);
        if (!this.mIsOneShotVideo) {
            arrayList.add(this.mVideoAutoReview);
        }
        arrayList.add(this.mMicrophone);
        return arrayList;
    }

}

