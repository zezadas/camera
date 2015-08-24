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
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
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

    public CapturingModeParams(CapturingMode var1);

    public ActionMode getActionMode();

    public Configurations getConfig();

    public void init(boolean var1, boolean var2, Configurations var3, SharedPreferencesUtil var4);

    public boolean isOneShotVideo();

    public List<ParameterValueHolder<?>> values();

}

