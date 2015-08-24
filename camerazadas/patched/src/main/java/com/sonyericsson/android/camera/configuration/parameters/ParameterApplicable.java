package com.sonyericsson.android.camera.configuration.parameters;

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

import com.sonyericsson.android.camera.configuration.parameters.ExposureMode;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;

@DexEdit(defaultAction = DexAction.IGNORE)
public interface ParameterApplicable {

    @DexAdd
    void set(ExposureMode var1);

    @DexAdd
    void set(ShutterSpeed var1);

    @DexIgnore
    void commit();

    @DexIgnore
    void set(AutoReview var1);

    @DexIgnore
    void set(AutoUpload var1);

    @DexIgnore
    void set(BurstShot var1);

    @DexIgnore
    void set(CaptureFrameShape var1);

    @DexIgnore
    void set(CapturingMode var1);

    @DexIgnore
    void set(DestinationToSave var1);

    @DexIgnore
    void set(Ev var1);

    @DexIgnore
    void set(FaceIdentify var1);

    @DexIgnore
    void set(Facing var1);

    @DexIgnore
    void set(FastCapture var1);

    @DexIgnore
    void set(Flash var1);

    @DexIgnore
    void set(FocusMode var1);

    @DexIgnore
    void set(Geotag var1);

    @DexIgnore
    void set(Hdr var1);

    @DexIgnore
    void set(Iso var1);

    @DexIgnore
    void set(Metering var1);

    @DexIgnore
    void set(Microphone var1);

    @DexIgnore
    void set(PhotoLight var1);

    @DexIgnore
    void set(Resolution var1);

    @DexIgnore
    void set(Scene var1);

    @DexIgnore
    void set(SelfTimer var1);

    @DexIgnore
    void set(ShutterSound var1);

    @DexIgnore
    void set(SmileCapture var1);

    @DexIgnore
    void set(SoftSkin var1);

    @DexIgnore
    void set(Stabilizer var1);

    @DexIgnore
    void set(SuperResolution var1);

    @DexIgnore
    void set(TouchBlock var1);

    @DexIgnore
    void set(TouchCapture var1);

    @DexIgnore
    void set(VideoAutoReview var1);

    @DexIgnore
    void set(VideoHdr var1);

    @DexIgnore
    void set(VideoSelfTimer var1);

    @DexIgnore
    void set(VideoSize var1);

    @DexIgnore
    void set(VideoSmileCapture var1);

    @DexIgnore
    void set(VideoStabilizer var1);

    @DexIgnore
    void set(VolumeKey var1);

    @DexIgnore
    void set(WhiteBalance var1);

}
