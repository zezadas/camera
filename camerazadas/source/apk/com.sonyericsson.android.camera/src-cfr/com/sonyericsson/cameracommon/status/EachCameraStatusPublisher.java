/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.cameracommon.device.CameraParameterUtil;
import com.sonyericsson.cameracommon.status.CameraStatusPublisher;
import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.eachcamera.ArtFilter;
import com.sonyericsson.cameracommon.status.eachcamera.BurstShooting;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus;
import com.sonyericsson.cameracommon.status.eachcamera.FaceDetection;
import com.sonyericsson.cameracommon.status.eachcamera.FaceIdentification;
import com.sonyericsson.cameracommon.status.eachcamera.Metadata;
import com.sonyericsson.cameracommon.status.eachcamera.ObjectTracking;
import com.sonyericsson.cameracommon.status.eachcamera.OnlineRemote;
import com.sonyericsson.cameracommon.status.eachcamera.PhotoLight;
import com.sonyericsson.cameracommon.status.eachcamera.PictureResolution;
import com.sonyericsson.cameracommon.status.eachcamera.PreviewMaxFps;
import com.sonyericsson.cameracommon.status.eachcamera.PreviewResolution;
import com.sonyericsson.cameracommon.status.eachcamera.SceneRecognition;
import com.sonyericsson.cameracommon.status.eachcamera.SoundPhoto;
import com.sonyericsson.cameracommon.status.eachcamera.TimeShift;
import com.sonyericsson.cameracommon.status.eachcamera.VideoNoiseReduction;
import com.sonyericsson.cameracommon.status.eachcamera.VideoRecordingFps;
import com.sonyericsson.cameracommon.status.eachcamera.VideoResolution;
import com.sonyericsson.cameracommon.status.eachcamera.VideoStabilizerStatus;

public class EachCameraStatusPublisher
extends CameraStatusPublisher<EachCameraStatusValue> {
    private final String mKeyPrefix;

    public EachCameraStatusPublisher(Context context, int n) {
        super(context);
        if (this.getCameraCommonVersion() >= 10) {
            this.mKeyPrefix = "camera" + n + "_";
            return;
        }
        this.mKeyPrefix = null;
    }

    @Override
    protected String keyPrefix() {
        return this.mKeyPrefix;
    }

    @Override
    public CameraStatusPublisher<EachCameraStatusValue> putDefaultAll() {
        this.put(new DeviceStatus(DeviceStatus.DEFAULT_VALUE));
        this.put(new PreviewResolution(PreviewResolution.DEFAULT_VALUE));
        this.put(new PictureResolution(PictureResolution.DEFAULT_VALUE));
        this.put(new VideoResolution(VideoResolution.DEFAULT_VALUE));
        this.put(new PreviewMaxFps(0));
        this.put(new VideoRecordingFps(0));
        this.put(new BurstShooting(BurstShooting.DEFAULT_VALUE));
        this.put(new FaceIdentification(FaceIdentification.DEFAULT_VALUE));
        this.put(new FaceDetection(FaceDetection.DEFAULT_VALUE));
        this.put(new SceneRecognition(SceneRecognition.DEFAULT_VALUE));
        this.put(new ObjectTracking(ObjectTracking.DEFAULT_VALUE));
        this.put(new VideoStabilizerStatus(VideoStabilizerStatus.DEFAULT_VALUE));
        this.put(new PhotoLight(PhotoLight.DEFAULT_VALUE));
        this.put(new VideoNoiseReduction(VideoNoiseReduction.DEFAULT_VALUE));
        this.put(new Metadata(Metadata.DEFAULT_VALUE));
        this.put(new ArtFilter(ArtFilter.DEFAULT_VALUE));
        this.put(new TimeShift(TimeShift.DEFAULT_VALUE));
        this.put(new SoundPhoto(SoundPhoto.DEFAULT_VALUE));
        this.put(new OnlineRemote(OnlineRemote.DEFAULT_VALUE));
        return this;
    }

    public EachCameraStatusPublisher putFromParameter(Camera.Parameters parameters) {
        if (parameters != null) {
            Camera.Size size = parameters.getPreviewSize();
            Camera.Size size2 = parameters.getPictureSize();
            if (size != null && size2 != null) {
                this.put(new PreviewResolution(size));
                this.put(new PictureResolution(size2));
                this.put(new PreviewMaxFps(CameraParameterUtil.getPreviewMasFps(parameters)));
            }
        }
        return this;
    }
}

