/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.android.camera.CameraSize;
import com.sonyericsson.android.camera.configuration.ResolutionOptions;
import com.sonyericsson.android.camera.configuration.SupportedValueList;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.UnsupportedSensorResolutionException;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.utility.ClassDefinitionChecker;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import java.util.Iterator;
import java.util.List;

public class PlatformDependencyResolver {
    private static final String TAG = PlatformDependencyResolver.class.getSimpleName();

    public static int getBurstFrameRate(Camera.Parameters object, Context context) {
        int n;
        int n2 = context.getResources().getInteger(2131427331);
        if ((object = object.get("sony-max-burst-shot-frame-rate")) != null && (n = Integer.parseInt((String)object)) < n2) {
            return n;
        }
        return n2;
    }

    public static Resolution getBurstPictureSizeAccordingTo(Camera.Parameters iterator) {
        int n = 0;
        int n2 = 0;
        if ((iterator = iterator.getSupportedPictureSizes()) != null) {
            iterator = iterator.iterator();
            do {
                n = n2;
                if (!iterator.hasNext()) break;
                Camera.Size size = (Camera.Size)iterator.next();
                if (n2 >= size.width) continue;
                n2 = size.width;
            } while (true);
        }
        switch (n) {
            default: {
                throw new IllegalStateException("Burst supported ?");
            }
            case 4128: {
                return Resolution.HDR_NINE_MP;
            }
            case 3264: 
        }
        return Resolution.HDR_SIX_MP;
    }

    public static String getDefaultFlash(Camera.Parameters parameters) {
        List<String> list = parameters.getSupportedFlashModes();
        if (list != null && list.contains("auto")) {
            return "auto";
        }
        return parameters.getFlashMode();
    }

    public static String getDefaultFocusModeForFastCapturePhoto(Camera.Parameters parameters) {
        List<String> list = parameters.getSupportedFocusModes();
        if (list != null) {
            if (list.contains("continuous-picture")) {
                return "continuous-picture";
            }
            if (list.contains("auto")) {
                return "auto";
            }
        }
        return parameters.getFocusMode();
    }

    public static String getDefaultFocusModeForFastCaptureVideo(Camera.Parameters parameters) {
        List<String> list = parameters.getSupportedFocusModes();
        if (list != null && list.contains("continuous-video")) {
            return "continuous-video";
        }
        return parameters.getFocusMode();
    }

    public static String getDefaultMeteringForFastCapture(Camera.Parameters object) {
        if ((object = object.get("sony-metering-mode-values")) == null) {
            return null;
        }
        if (object.indexOf("face") == -1) {
            return "center-weighted";
        }
        return "face";
    }

    public static String getDefaultPhotolight(Camera.Parameters parameters) {
        List<String> list = parameters.getSupportedFlashModes();
        if (list != null && list.contains("off")) {
            return "off";
        }
        return parameters.getFlashMode();
    }

    public static Resolution getDefaultResolution(Camera.Parameters object, Context context) {
        if ((object = object.getSupportedPictureSizes()) == null) {
            return null;
        }
        return Resolution.valueOf(ResolutionOptions.getDefaultResolution(context, SupportedValueList.getMaxPictureWidth(context, object)));
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Resolution getDefaultResolutionFrom(Context arrstring, CaptureFrameShape captureFrameShape, Camera.Parameters object, int n) {
        int n2 = SupportedValueList.getMaxPictureWidth((Context)arrstring, object.getSupportedPictureSizes());
        switch (n2) {
            default: {
                throw new UnsupportedSensorResolutionException(n2);
            }
            case 5520: 
            case 5984: {
                n = 2131623955;
                break;
            }
            case 5248: {
                n = 2131623956;
                break;
            }
            case 4128: {
                n = 2131623957;
                break;
            }
            case 3264: {
                if (HardwareCapability.getInstance().isStillHdrVer3(n)) {
                    n = 2131623960;
                    break;
                }
                n = 2131623959;
                break;
            }
            case 2592: {
                n = 2131623961;
                break;
            }
            case 1920: {
                n = HardwareCapability.getInstance().isStillHdrVer3(n) ? 2131623952 : 2131623951;
            }
        }
        arrstring = arrstring.getResources().getStringArray(n);
        int n3 = arrstring.length;
        for (n = 0; n < n3; ++n) {
            object = Resolution.valueOf(arrstring[n]);
            if ((int)(100.0f * (float)object.getPictureRect().width() / (float)object.getPictureRect().height()) != captureFrameShape.getAspectRatio_x100()) continue;
            return object;
        }
        throw new UnsupportedSensorResolutionException(n2);
    }

    public static String getDefaultSceneModeForFastCapture(Camera.Parameters parameters) {
        List<String> list = parameters.getSupportedSceneModes();
        if (list == null) {
            return null;
        }
        if (list.contains("auto")) {
            return "auto";
        }
        return parameters.getSceneMode();
    }

    public static VideoSize getDefaultVideoSize(Camera.Parameters iterator) {
        iterator = iterator.getSupportedVideoSizes();
        boolean bl = false;
        boolean bl2 = false;
        boolean bl3 = false;
        boolean bl4 = false;
        boolean bl5 = false;
        boolean bl6 = false;
        boolean bl7 = false;
        boolean bl8 = false;
        if (iterator != null) {
            iterator = iterator.iterator();
            do {
                bl = bl2;
                bl5 = bl6;
                bl3 = bl4;
                bl7 = bl8;
                if (!iterator.hasNext()) break;
                Camera.Size size = (Camera.Size)iterator.next();
                bl = bl2;
                if (size.width == 1920) {
                    bl = bl2;
                    if (size.height == 1080) {
                        bl = true;
                    }
                }
                bl5 = bl4;
                if (size.width == 1280) {
                    bl5 = bl4;
                    if (size.height == 720) {
                        bl5 = true;
                    }
                }
                bl3 = bl6;
                if (size.width == 864) {
                    bl3 = bl6;
                    if (size.height == 480) {
                        bl3 = true;
                    }
                }
                bl2 = bl;
                bl6 = bl3;
                bl4 = bl5;
                if (size.width != 640) continue;
                bl2 = bl;
                bl6 = bl3;
                bl4 = bl5;
                if (size.height != 480) continue;
                bl8 = true;
                bl2 = bl;
                bl6 = bl3;
                bl4 = bl5;
            } while (true);
        }
        if (bl) {
            return VideoSize.FULL_HD;
        }
        if (bl3) {
            return VideoSize.HD;
        }
        if (bl5) {
            return VideoSize.FWVGA;
        }
        if (bl7) {
            return VideoSize.VGA;
        }
        return null;
    }

    public static String getDefaultWhiteBalanceForFastCapturePhoto(Camera.Parameters parameters) {
        List<String> list = parameters.getSupportedWhiteBalance();
        if (list == null) {
            return null;
        }
        if (list.contains("auto")) {
            return "auto";
        }
        return parameters.getWhiteBalance();
    }

    public static int getMaxSuperResolutionZoom(Camera.Parameters object) {
        int n = 0;
        if ((object = object.get("sony-max-sr-zoom")) != null) {
            n = Integer.parseInt((String)object);
        }
        return n;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Rect getOptimalPreviewSize(Context object, Camera.Parameters parameters, int n, Rect rect) {
        if (n == 2) {
            object = CapabilityList.convertCameraSize(parameters.getPreferredPreviewSizeForVideo());
            do {
                return CameraSize.getOptimalPreviewRect(rect, (Rect)object, CapabilityList.convertCameraSizeList(parameters.getSupportedPreviewSizes()));
                break;
            } while (true);
        }
        rect = LayoutDependencyResolver.getSurfaceRect((Context)object, (float)rect.width() / (float)rect.height());
        object = CapabilityList.convertCameraSize(parameters.getPreferredPreviewSizeForVideo());
        return CameraSize.getOptimalPreviewRect(rect, (Rect)object, CapabilityList.convertCameraSizeList(parameters.getSupportedPreviewSizes()));
    }

    public static int getSoftSkinMaxLevel(Camera.Parameters object) {
        int n = 0;
        if ((object = object.get("sony-max-soft-skin-level")) != null) {
            n = Integer.parseInt((String)object);
        }
        return n;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean isAutoSceneRecogntionDuringRecSupported(Camera.Parameters parameters) {
        if (parameters == null) {
            return false;
        }
        String string = parameters.get("sony-scene-detect-apply-types");
        if (string == null) return false;
        boolean bl = string.indexOf("recording") != -1;
        if (!PlatformDependencyResolver.isSceneRecognitionSupported(parameters)) return false;
        if (!bl) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isBurstCaptureSupported(Camera.Parameters object) {
        if ((object = object.get("sony-burst-shot-values")) == null || object.indexOf("on") == -1) {
            return false;
        }
        return true;
    }

    public static boolean isFaceDetectionSupported(Camera.Parameters parameters) {
        if (parameters.getMaxNumDetectedFaces() > 0) {
            return true;
        }
        return false;
    }

    public static boolean isFlashLightSupported(Camera.Parameters object) {
        if ((object = object.getSupportedFlashModes()) != null && object.contains("on")) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isHdrSupported(Camera.Parameters object) {
        if ((object = object.get("sony-is-values")) == null || object.indexOf("auto") == -1) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isImageStabilizerSupported(Camera.Parameters object) {
        if ((object = object.get("sony-is-values")) == null || object.indexOf("on") == -1) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isIsoSupported(Camera.Parameters object, String string) {
        if ((object = object.get("sony-ae-mode-values")) == null || object.indexOf(string) == -1) {
            return false;
        }
        return true;
    }

    public static boolean isObjectTrackingSuppoted(Camera.Parameters parameters) {
        return "true".equals(parameters.get("sony-object-tracking-supported"));
    }

    public static boolean isPhotoLightSupported(Camera.Parameters object) {
        if ((object = object.getSupportedFlashModes()) != null && object.contains("torch")) {
            return true;
        }
        return false;
    }

    public static boolean isSceneRecognitionSupported(Camera.Parameters parameters) {
        return "true".equals(parameters.get("sony-scene-detect-supported"));
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isSoftSkinSupported(Camera.Parameters object) {
        if (object == null || (object = object.get("sony-max-soft-skin-level")) == null || Integer.parseInt((String)object) <= 0) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean isSuperResolutionZoomSupported(Camera.Parameters object) {
        if (object == null) {
            return false;
        }
        boolean bl = "true".equals(object.get("sony-sr-zoom-supported"));
        boolean bl2 = false;
        object = object.get("sony-exif-maker-note-types");
        boolean bl3 = bl2;
        if (object != null) {
            bl3 = bl2;
            if (object.indexOf("super-resolution") != -1) {
                bl3 = true;
            }
        }
        boolean bl4 = ClassDefinitionChecker.isSuperResolutionProcessorSupported();
        if (!bl) return false;
        if (!bl3) return false;
        if (!bl4) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isVideoHdrSupported(Camera.Parameters object) {
        if ((object = object.get("sony-video-hdr-values")) == null || object.indexOf("on") == -1) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isVideoStabilizerSupported(Camera.Parameters object) {
        if ((object = object.get("sony-vs-values")) == null || object.indexOf("on") == -1) {
            return false;
        }
        return true;
    }
}

