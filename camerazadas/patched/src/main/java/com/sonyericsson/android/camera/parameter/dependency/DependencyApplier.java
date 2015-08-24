/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import android.graphics.Rect;
import android.util.Log;

import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
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

import java.io.ByteArrayOutputStream;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;


@DexEdit(defaultAction = DexAction.IGNORE)
public abstract class DependencyApplier {

    @DexEdit(target = "create")
    public static DependencyApplier source_create(CaptureFrameShape captureFrameShape) {
        return null;
    }

    @DexAdd
    public static DependencyApplier create(CaptureFrameShape captureFrameShape) {
        switch (captureFrameShape.ordinal()) {
            default: {
                throw new IllegalArgumentException("Not supported");
            }
            case 0: {
                return new CaptureFrameShapeStandardApplier();
            }
            case 1: {
                return new CaptureFrameShapeWideApplier();
            }
            case 2: {
                return new CaptureFrameShapeHeightStandardApplier();
            }
            case 3: {
                return new CaptureFrameShapeHeightWideApplier();
            }
        }
        //return new CaptureFrameShapeStandardApplier();
    }


    @DexEdit(target = "create")
    public static DependencyApplier source_create(Resolution resolution) {
        if (resolution.getPictureRect().width() >= 5248) {
            return new ResolutionCorrectionApplier();
        }
        return new ResolutionOtherApplier();
    }

    @DexAdd
    public static DependencyApplier create(Resolution resolution) {
        return new ResolutionOtherApplier();
    }

    @DexIgnore
    public static DependencyApplier create(Ev var0) {
        switch (var0.ordinal()) {
            case 1:
                return new EvZeroApplier();
            default:
                return new EvOtherApplier();
        }
    }

    @DexIgnore
    public static DependencyApplier create(FaceIdentify var0) {
        switch (var0.ordinal()) {
            case 1:
                return new FaceIdentifyOffApplier();
            default:
                return new FaceIdentifyOnApplier();
        }
    }

    @DexIgnore
    public static DependencyApplier create(FocusMode var0) {
        switch (var0.ordinal()) {
            case 1:
                return new FocusModeFaceDetectionApplier();
            default:
                return new FocusModeOtherApplier();
        }
    }

    @DexIgnore
    public static DependencyApplier create(Hdr var0) {
        switch (var0.ordinal()) {
            case 1:
            case 2:
                return new HdrOnApplier();
            default:
                return new HdrOffApplier();
        }
    }

    @DexIgnore
    public static DependencyApplier create(Iso var0) {
        switch (var0.ordinal()) {
            case 1:
                return new IsoAutoApplier();
            default:
                return new IsoManualApplier();
        }
    }

    @DexIgnore
    public static DependencyApplier create(Scene var0) {
        switch (var0.ordinal()) {
            case 1:
            case 2:
            case 3:
            case 4:
                return new SceneSoftSnapApplier();
            case 5:
            case 6:
            case 7:
                return new SceneLandscapeApplier();
            case 8:
                return new SceneBackLightHdrApplier();
            case 9:
            case 10:
                return new SceneNightPortraitApplier();
            case 11:
                return new SceneTwilightApplier();
            case 12:
                return new SceneHighSensitivityApplier();
            case 13:
                return new SceneGourmetApplier();
            case 14:
            case 15:
                return new ScenePetApplier();
            case 16:
            case 17:
            case 18:
                return new SceneSportsApplier();
            default:
                return new SceneOffApplier();
        }
    }

    @DexIgnore
    public static DependencyApplier create(SelfTimer var0) {
        switch (var0.ordinal()) {
            case 1:
                return new SelfTimerOffApplier();
            default:
                return new SelfTimerOnApplier();
        }
    }

    @DexIgnore
    public static DependencyApplier create(SmileCapture var0) {
        switch (var0.ordinal()) {
            case 1:
                return new SmileCaptureOffApplier();
            default:
                return new SmileCaptureOnApplier();
        }
    }

    @DexIgnore
    public static DependencyApplier create(Stabilizer var0) {
        switch (var0.ordinal()) {
            case 1:
            case 2:
                return new StabilizerOnApplier();
            default:
                return new StabilizerOffApplier();
        }
    }

    @DexIgnore
    public static DependencyApplier create(VideoHdr var0) {
        switch (var0.ordinal()) {
            case 1:
                return new VideoHdrOnApplier();
            default:
                return new VideoHdrOffApplier();
        }
    }

    @DexIgnore
    public static DependencyApplier create(VideoSize var0, boolean var1) {
        switch (var0.ordinal()) {
            case 1:
            case 2:
            case 3:
                return new VideoSizeCorrectionApplier(var1);
            case 4:
                return new VideoSize60FPSApplier();
            default:
                return new VideoSizeOtherApplier(var1);
        }
    }

    @DexIgnore
    public static DependencyApplier create(VideoSmileCapture var0) {
        switch (var0.ordinal()) {
            case 1:
                return new VideoSmileCaptureOffApplier();
            default:
                return new VideoSmileCaptureOnApplier();
        }
    }

    @DexIgnore
    public abstract void apply(CapturingModeParams var1);

    @DexIgnore
    public abstract void reset(CapturingModeParams var1);


}


