/*
 * Decompiled with CFR 0_100.
 */
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

public interface ParameterApplicable {
    public void commit();

    public void set(AutoReview var1);

    public void set(AutoUpload var1);

    public void set(BurstShot var1);

    public void set(CaptureFrameShape var1);

    public void set(CapturingMode var1);

    public void set(DestinationToSave var1);

    public void set(Ev var1);

    public void set(FaceIdentify var1);

    public void set(Facing var1);

    public void set(FastCapture var1);

    public void set(Flash var1);

    public void set(FocusMode var1);

    public void set(Geotag var1);

    public void set(Hdr var1);

    public void set(Iso var1);

    public void set(Metering var1);

    public void set(Microphone var1);

    public void set(PhotoLight var1);

    public void set(Resolution var1);

    public void set(Scene var1);

    public void set(SelfTimer var1);

    public void set(ShutterSound var1);

    public void set(SmileCapture var1);

    public void set(SoftSkin var1);

    public void set(Stabilizer var1);

    public void set(SuperResolution var1);

    public void set(TouchBlock var1);

    public void set(TouchCapture var1);

    public void set(VideoAutoReview var1);

    public void set(VideoHdr var1);

    public void set(VideoSelfTimer var1);

    public void set(VideoSize var1);

    public void set(VideoSmileCapture var1);

    public void set(VideoStabilizer var1);

    public void set(VolumeKey var1);

    public void set(WhiteBalance var1);
}

