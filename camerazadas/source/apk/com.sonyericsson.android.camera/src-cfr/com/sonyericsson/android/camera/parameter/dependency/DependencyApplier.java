/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import android.graphics.Rect;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.dependency.CaptureFrameShapeStandardApplier;
import com.sonyericsson.android.camera.parameter.dependency.CaptureFrameShapeWideApplier;
import com.sonyericsson.android.camera.parameter.dependency.EvOtherApplier;
import com.sonyericsson.android.camera.parameter.dependency.EvZeroApplier;
import com.sonyericsson.android.camera.parameter.dependency.FaceIdentifyOffApplier;
import com.sonyericsson.android.camera.parameter.dependency.FaceIdentifyOnApplier;
import com.sonyericsson.android.camera.parameter.dependency.FocusModeFaceDetectionApplier;
import com.sonyericsson.android.camera.parameter.dependency.FocusModeOtherApplier;
import com.sonyericsson.android.camera.parameter.dependency.HdrOffApplier;
import com.sonyericsson.android.camera.parameter.dependency.HdrOnApplier;
import com.sonyericsson.android.camera.parameter.dependency.IsoAutoApplier;
import com.sonyericsson.android.camera.parameter.dependency.IsoManualApplier;
import com.sonyericsson.android.camera.parameter.dependency.ResolutionCorrectionApplier;
import com.sonyericsson.android.camera.parameter.dependency.ResolutionOtherApplier;
import com.sonyericsson.android.camera.parameter.dependency.SceneBackLightHdrApplier;
import com.sonyericsson.android.camera.parameter.dependency.SceneGourmetApplier;
import com.sonyericsson.android.camera.parameter.dependency.SceneHighSensitivityApplier;
import com.sonyericsson.android.camera.parameter.dependency.SceneLandscapeApplier;
import com.sonyericsson.android.camera.parameter.dependency.SceneNightPortraitApplier;
import com.sonyericsson.android.camera.parameter.dependency.SceneOffApplier;
import com.sonyericsson.android.camera.parameter.dependency.ScenePetApplier;
import com.sonyericsson.android.camera.parameter.dependency.SceneSoftSnapApplier;
import com.sonyericsson.android.camera.parameter.dependency.SceneSportsApplier;
import com.sonyericsson.android.camera.parameter.dependency.SceneTwilightApplier;
import com.sonyericsson.android.camera.parameter.dependency.SelfTimerOffApplier;
import com.sonyericsson.android.camera.parameter.dependency.SelfTimerOnApplier;
import com.sonyericsson.android.camera.parameter.dependency.SmileCaptureOffApplier;
import com.sonyericsson.android.camera.parameter.dependency.SmileCaptureOnApplier;
import com.sonyericsson.android.camera.parameter.dependency.StabilizerOffApplier;
import com.sonyericsson.android.camera.parameter.dependency.StabilizerOnApplier;
import com.sonyericsson.android.camera.parameter.dependency.VideoHdrOffApplier;
import com.sonyericsson.android.camera.parameter.dependency.VideoHdrOnApplier;
import com.sonyericsson.android.camera.parameter.dependency.VideoSize60FPSApplier;
import com.sonyericsson.android.camera.parameter.dependency.VideoSizeCorrectionApplier;
import com.sonyericsson.android.camera.parameter.dependency.VideoSizeOtherApplier;
import com.sonyericsson.android.camera.parameter.dependency.VideoSmileCaptureOffApplier;
import com.sonyericsson.android.camera.parameter.dependency.VideoSmileCaptureOnApplier;

public abstract class DependencyApplier {
    public static DependencyApplier create(CaptureFrameShape captureFrameShape) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CaptureFrameShape[captureFrameShape.ordinal()]) {
            default: {
                throw new IllegalArgumentException("Not supported");
            }
            case 1: {
                return new CaptureFrameShapeWideApplier();
            }
            case 2: 
        }
        return new CaptureFrameShapeStandardApplier();
    }

    public static DependencyApplier create(Ev ev) {
        switch (ev) {
            default: {
                return new EvOtherApplier();
            }
            case ZERO: 
        }
        return new EvZeroApplier();
    }

    public static DependencyApplier create(FaceIdentify faceIdentify) {
        switch (faceIdentify) {
            default: {
                return new FaceIdentifyOnApplier();
            }
            case OFF: 
        }
        return new FaceIdentifyOffApplier();
    }

    public static DependencyApplier create(FocusMode focusMode) {
        switch (focusMode) {
            default: {
                return new FocusModeOtherApplier();
            }
            case FACE_DETECTION: 
        }
        return new FocusModeFaceDetectionApplier();
    }

    public static DependencyApplier create(Hdr hdr) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr[hdr.ordinal()]) {
            default: {
                return new HdrOffApplier();
            }
            case 1: 
            case 2: 
        }
        return new HdrOnApplier();
    }

    public static DependencyApplier create(Iso iso) {
        switch (iso) {
            default: {
                return new IsoManualApplier();
            }
            case ISO_AUTO: 
        }
        return new IsoAutoApplier();
    }

    public static DependencyApplier create(Resolution resolution) {
        if (resolution.getPictureRect().width() >= 5248) {
            return new ResolutionCorrectionApplier();
        }
        return new ResolutionOtherApplier();
    }

    public static DependencyApplier create(Scene scene) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene[scene.ordinal()]) {
            default: {
                return new SceneOffApplier();
            }
            case 1: 
            case 2: 
            case 3: 
            case 4: {
                return new SceneSoftSnapApplier();
            }
            case 5: 
            case 6: 
            case 7: {
                return new SceneLandscapeApplier();
            }
            case 8: {
                return new SceneBackLightHdrApplier();
            }
            case 9: 
            case 10: {
                return new SceneNightPortraitApplier();
            }
            case 11: {
                return new SceneTwilightApplier();
            }
            case 12: {
                return new SceneHighSensitivityApplier();
            }
            case 13: {
                return new SceneGourmetApplier();
            }
            case 14: 
            case 15: {
                return new ScenePetApplier();
            }
            case 16: 
            case 17: 
            case 18: 
        }
        return new SceneSportsApplier();
    }

    public static DependencyApplier create(SelfTimer selfTimer) {
        switch (selfTimer) {
            default: {
                return new SelfTimerOnApplier();
            }
            case OFF: 
        }
        return new SelfTimerOffApplier();
    }

    public static DependencyApplier create(SmileCapture smileCapture) {
        switch (smileCapture) {
            default: {
                return new SmileCaptureOnApplier();
            }
            case OFF: 
        }
        return new SmileCaptureOffApplier();
    }

    public static DependencyApplier create(Stabilizer stabilizer) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Stabilizer[stabilizer.ordinal()]) {
            default: {
                return new StabilizerOffApplier();
            }
            case 1: 
            case 2: 
        }
        return new StabilizerOnApplier();
    }

    public static DependencyApplier create(VideoHdr videoHdr) {
        switch (videoHdr) {
            default: {
                return new VideoHdrOffApplier();
            }
            case ON: 
        }
        return new VideoHdrOnApplier();
    }

    public static DependencyApplier create(VideoSize videoSize, boolean bl) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize[videoSize.ordinal()]) {
            default: {
                return new VideoSizeOtherApplier(bl);
            }
            case 1: 
            case 2: 
            case 3: {
                return new VideoSizeCorrectionApplier(bl);
            }
            case 4: 
        }
        return new VideoSize60FPSApplier();
    }

    public static DependencyApplier create(VideoSmileCapture videoSmileCapture) {
        switch (videoSmileCapture) {
            default: {
                return new VideoSmileCaptureOnApplier();
            }
            case OFF: 
        }
        return new VideoSmileCaptureOffApplier();
    }

    public abstract void apply(CapturingModeParams var1);

    public abstract void reset(CapturingModeParams var1);

}

