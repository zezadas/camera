/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.util.capability.BooleanCapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.FloatCapabilityItem;
import com.sonyericsson.android.camera.util.capability.IntArrayListCapabilityItem;
import com.sonyericsson.android.camera.util.capability.IntegerCapabilityItem;
import com.sonyericsson.android.camera.util.capability.RectCapabilityItem;
import com.sonyericsson.android.camera.util.capability.RectListCapabilityItem;
import com.sonyericsson.android.camera.util.capability.ResolutionCapabilityItem;
import com.sonyericsson.android.camera.util.capability.ResolutionOptions;
import com.sonyericsson.android.camera.util.capability.StringCapabilityItem;
import com.sonyericsson.android.camera.util.capability.StringListCapabilityItem;
import com.sonyericsson.android.camera.util.capability.UxCapabilityItem;
import com.sonyericsson.android.camera.util.capability.UxOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CapabilityList {
    private static final String KEY_EXPOSURE_COMPENSATION_STEP = "exposure-compensation-step";
    private static final String KEY_FLASH_MODE = "flash-mode";
    private static final String KEY_FOCUS_MODE = "focus-mode";
    private static final String KEY_MAX_EXPOSURE_COMPENSATION = "max-exposure-compensation";
    private static final String KEY_MAX_NUM_DETECTED_FACES = "max-num-detected-faces";
    private static final String KEY_MAX_NUM_FOCUS_AREAS = "max-num-focus-areas";
    private static final String KEY_MAX_ZOOM = "max-zoom";
    private static final String KEY_MIN_EXPOSURE_COMPENSATION = "min-exposure-compensation";
    private static final String KEY_PICTURE_SIZE = "picture-size";
    private static final String KEY_PREFERRED_PREVIEW_SIZE_FOR_PHOTO = "preferred-preview-size-for-photo";
    private static final String KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO = "preferred-preview-size-for-video";
    private static final String KEY_PREVIEW_FPS_RANGE = "preview-fps-range";
    private static final String KEY_PREVIEW_SIZE = "preview-size";
    private static final String KEY_SCENE_MODE = "scene-mode";
    private static final String KEY_SMOOTH_ZOOM_SUPPORTED = "smooth-zoom-supported";
    private static final String KEY_VIDEO_SIZE = "video-size";
    private static final String KEY_VIDEO_SNAPSHOT = "video-snapshot-supported";
    private static final String KEY_WHITE_BALANCE = "whitebalance";
    public final CapabilityItem<List<String>> AE;
    public final CapabilityItem<List<String>> BURST_SHOT;
    public final CapabilityItem<Integer> EV_MAX;
    public final CapabilityItem<Integer> EV_MIN;
    public final CapabilityItem<Float> EV_STEP;
    public final CapabilityItem<List<String>> EXIF_MAKER_NOTES_TYPES;
    public final CapabilityItem<String> EXTENSION_VERSION;
    public final CapabilityItem<List<String>> FLASH;
    public final CapabilityItem<List<String>> FOCUS_AREA;
    public final CapabilityItem<List<String>> FOCUS_MODE;
    public final CapabilityItem<List<int[]>> FPS_RANGE;
    public final CapabilityItem<List<String>> HDR;
    public final CapabilityItem<List<String>> IMAGE_STABILIZER;
    public final CapabilityItem<List<String>> ISO;
    public final CapabilityItem<Integer> MAX_BURST_SHOT_FRAME_RATE;
    public final CapabilityItem<Rect> MAX_BURST_SHOT_SIZE;
    public final CapabilityItem<Rect> MAX_INTELLIGENT_ACTIVE_SIZE;
    public final CapabilityItem<Integer> MAX_MULTI_FOCUS_AREAS;
    public final CapabilityItem<Integer> MAX_NUM_FACE;
    public final CapabilityItem<Integer> MAX_NUM_FOCUS_AREA;
    public final CapabilityItem<Rect> MAX_PREVIEW_SIZE_STILL;
    public final CapabilityItem<Integer> MAX_SOFT_SKIN_LEVEL;
    public final CapabilityItem<Integer> MAX_SR_ZOOM;
    public final CapabilityItem<Rect> MAX_STEADY_SHOT_SIZE;
    public final CapabilityItem<Integer> MAX_VIDEO_FRAME;
    public final CapabilityItem<Rect> MAX_VIDEO_HDR_SIZE;
    public final CapabilityItem<Rect> MAX_VIDEO_STABILIZER_SIZE_FOR_LEGACY;
    public final CapabilityItem<Integer> MAX_ZOOM;
    public final CapabilityItem<List<String>> METERING;
    public final CapabilityItem<String> MULTI_FOCUS_RECTS;
    public final CapabilityItem<Boolean> OBJECT_TRACKING;
    public final CapabilityItem<List<Rect>> PICTURE_SIZE;
    public final CapabilityItem<List<Rect>> PREVIEW_SIZE;
    public final CapabilityItem<Rect> PREVIEW_SIZE_FOR_PHOTO;
    public final CapabilityItem<Rect> PREVIEW_SIZE_FOR_VIDEO;
    public final CapabilityItem<ResolutionOptions> RESOLUTION_CAPABILITY;
    public final CapabilityItem<List<String>> SCENE;
    public final CapabilityItem<Boolean> SCENE_RECOGNITION;
    public final CapabilityItem<List<String>> SCENE_RECOGNITION_TYPES;
    public final CapabilityItem<Boolean> SMILE_DETECTION;
    public final CapabilityItem<Boolean> SMOOTH_ZOOM;
    public final CapabilityItem<Boolean> SR_ZOOM;
    public final CapabilityItem<UxOptions> UX_CAPABILITY;
    public final CapabilityItem<List<String>> VIDEO_HDR;
    public final CapabilityItem<Boolean> VIDEO_MEATDAT_VALUES;
    public final CapabilityItem<List<String>> VIDEO_NR_VALUES;
    public final CapabilityItem<List<Rect>> VIDEO_SIZE;
    public final CapabilityItem<Boolean> VIDEO_SNAPSHOT;
    public final CapabilityItem<List<String>> VIDEO_STABILIZER;
    public final CapabilityItem<List<String>> VIDEO_STABILIZER_TYPE;
    public final CapabilityItem<List<String>> WHITE_BALANCE;
    private final List<CapabilityItem<?>> mValues;

    public CapabilityList(Context context, SharedPreferences sharedPreferences) {
        this.EV_MAX = new IntegerCapabilityItem("max-exposure-compensation", sharedPreferences);
        this.EV_MIN = new IntegerCapabilityItem("min-exposure-compensation", sharedPreferences);
        this.EV_STEP = new FloatCapabilityItem("exposure-compensation-step", sharedPreferences);
        this.FLASH = new StringListCapabilityItem("flash-mode", sharedPreferences);
        this.FOCUS_MODE = new StringListCapabilityItem("focus-mode", sharedPreferences);
        this.FPS_RANGE = new IntArrayListCapabilityItem("preview-fps-range", sharedPreferences);
        this.MAX_NUM_FACE = new IntegerCapabilityItem("max-num-detected-faces", sharedPreferences);
        this.MAX_NUM_FOCUS_AREA = new IntegerCapabilityItem("max-num-focus-areas", sharedPreferences);
        this.MAX_ZOOM = new IntegerCapabilityItem("max-zoom", sharedPreferences);
        this.PICTURE_SIZE = new RectListCapabilityItem("picture-size", sharedPreferences);
        this.PREVIEW_SIZE = new RectListCapabilityItem("preview-size", sharedPreferences);
        this.PREVIEW_SIZE_FOR_PHOTO = new RectCapabilityItem("preferred-preview-size-for-photo", sharedPreferences);
        this.PREVIEW_SIZE_FOR_VIDEO = new RectCapabilityItem("preferred-preview-size-for-video", sharedPreferences);
        this.SCENE = new StringListCapabilityItem("scene-mode", sharedPreferences);
        this.SMOOTH_ZOOM = new BooleanCapabilityItem("smooth-zoom-supported", sharedPreferences);
        this.SR_ZOOM = new BooleanCapabilityItem("sony-sr-zoom-supported", sharedPreferences);
        this.VIDEO_SIZE = new RectListCapabilityItem("video-size", sharedPreferences);
        this.VIDEO_SNAPSHOT = new BooleanCapabilityItem("video-snapshot-supported", sharedPreferences);
        this.WHITE_BALANCE = new StringListCapabilityItem("whitebalance", sharedPreferences);
        this.AE = new StringListCapabilityItem("sony-ae-mode-values", sharedPreferences);
        this.BURST_SHOT = new StringListCapabilityItem("sony-burst-shot-values", sharedPreferences);
        this.EXIF_MAKER_NOTES_TYPES = new StringListCapabilityItem("sony-exif-maker-note-types", sharedPreferences);
        this.FOCUS_AREA = new StringListCapabilityItem("sony-focus-area-values", sharedPreferences);
        this.HDR = new StringListCapabilityItem("sony-is-values", sharedPreferences);
        this.IMAGE_STABILIZER = new StringListCapabilityItem("sony-is-values", sharedPreferences);
        this.ISO = new StringListCapabilityItem("sony-iso-values", sharedPreferences);
        this.MAX_BURST_SHOT_FRAME_RATE = new IntegerCapabilityItem("sony-max-burst-shot-frame-rate", sharedPreferences);
        this.MAX_BURST_SHOT_SIZE = new RectCapabilityItem("sony-max-burst-shot-size", sharedPreferences);
        this.MAX_MULTI_FOCUS_AREAS = new IntegerCapabilityItem("sony-max-multi-focus-num", sharedPreferences);
        this.MAX_PREVIEW_SIZE_STILL = new RectCapabilityItem("sony-preferred-preview-size-for-still", sharedPreferences);
        this.MAX_SR_ZOOM = new IntegerCapabilityItem("sony-max-sr-zoom", sharedPreferences);
        this.METERING = new StringListCapabilityItem("sony-metering-mode-values", sharedPreferences);
        this.MULTI_FOCUS_RECTS = new StringCapabilityItem("sony-multi-focus-rects", sharedPreferences);
        this.OBJECT_TRACKING = new BooleanCapabilityItem("sony-object-tracking-supported", sharedPreferences);
        this.SCENE_RECOGNITION = new BooleanCapabilityItem("sony-scene-detect-supported", sharedPreferences);
        this.SCENE_RECOGNITION_TYPES = new StringListCapabilityItem("sony-scene-detect-apply-types", sharedPreferences);
        this.SMILE_DETECTION = new BooleanCapabilityItem("sony-smile-detect-values", sharedPreferences);
        this.EXTENSION_VERSION = new StringCapabilityItem("sony-extension-version", sharedPreferences);
        this.VIDEO_HDR = new StringListCapabilityItem("sony-video-hdr-values", sharedPreferences);
        this.VIDEO_STABILIZER = new StringListCapabilityItem("sony-vs-values", sharedPreferences);
        this.VIDEO_STABILIZER_TYPE = new StringListCapabilityItem("sony-vs-type", sharedPreferences);
        this.MAX_VIDEO_FRAME = new IntegerCapabilityItem("sony-max-video-frame-rate-for-1920x1080", sharedPreferences);
        this.MAX_VIDEO_HDR_SIZE = new RectCapabilityItem("sony-max-video-hdr-size", sharedPreferences);
        this.MAX_VIDEO_STABILIZER_SIZE_FOR_LEGACY = new RectCapabilityItem("sony-max-vs-size", sharedPreferences);
        this.MAX_STEADY_SHOT_SIZE = new RectCapabilityItem("sony-max-vs-steady-shot-size", sharedPreferences);
        this.MAX_INTELLIGENT_ACTIVE_SIZE = new RectCapabilityItem("sony-max-vs-intelligent-active-size", sharedPreferences);
        this.VIDEO_NR_VALUES = new StringListCapabilityItem("sony-video-nr-values", sharedPreferences);
        this.MAX_SOFT_SKIN_LEVEL = new IntegerCapabilityItem("sony-max-soft-skin-level", sharedPreferences);
        this.VIDEO_MEATDAT_VALUES = new BooleanCapabilityItem("sony-video-metadata-supported", sharedPreferences);
        this.mValues = this.createList();
        this.RESOLUTION_CAPABILITY = new ResolutionCapabilityItem(this.getResolutionOptions(context, Hdr.isResolutionIndependentHdrSupported(this.SCENE.get())));
        this.UX_CAPABILITY = new UxCapabilityItem(new UxOptions(context));
    }

    public CapabilityList(Context context, Camera.Parameters parameters) {
        this.EV_MAX = new IntegerCapabilityItem("max-exposure-compensation", parameters.getMaxExposureCompensation());
        this.EV_MIN = new IntegerCapabilityItem("min-exposure-compensation", parameters.getMinExposureCompensation());
        this.EV_STEP = new FloatCapabilityItem("exposure-compensation-step", Float.valueOf(parameters.getExposureCompensationStep()));
        this.FLASH = new StringListCapabilityItem("flash-mode", parameters.getSupportedFlashModes());
        this.FOCUS_MODE = new StringListCapabilityItem("focus-mode", parameters.getSupportedFocusModes());
        this.FPS_RANGE = new IntArrayListCapabilityItem("preview-fps-range", parameters.getSupportedPreviewFpsRange());
        this.MAX_NUM_FACE = new IntegerCapabilityItem("max-num-detected-faces", parameters.getMaxNumDetectedFaces());
        this.MAX_NUM_FOCUS_AREA = new IntegerCapabilityItem("max-num-focus-areas", parameters.getMaxNumFocusAreas());
        this.MAX_ZOOM = new IntegerCapabilityItem("max-zoom", parameters.getMaxZoom());
        this.PICTURE_SIZE = new RectListCapabilityItem("picture-size", CapabilityList.convertCameraSizeList(parameters.getSupportedPictureSizes()));
        this.PREVIEW_SIZE = new RectListCapabilityItem("preview-size", CapabilityList.convertCameraSizeList(parameters.getSupportedPreviewSizes()));
        this.PREVIEW_SIZE_FOR_PHOTO = new RectCapabilityItem("preferred-preview-size-for-photo", CapabilityList.convertCameraSize(parameters.getPreviewSize()));
        this.PREVIEW_SIZE_FOR_VIDEO = new RectCapabilityItem("preferred-preview-size-for-video", CapabilityList.convertCameraSize(parameters.getPreferredPreviewSizeForVideo()));
        this.SCENE = new StringListCapabilityItem("scene-mode", parameters.getSupportedSceneModes());
        this.SMOOTH_ZOOM = new BooleanCapabilityItem("smooth-zoom-supported", parameters.isSmoothZoomSupported());
        this.SR_ZOOM = new BooleanCapabilityItem("sony-sr-zoom-supported", parameters);
        this.VIDEO_SIZE = new RectListCapabilityItem("video-size", CapabilityList.convertCameraSizeList(parameters.getSupportedVideoSizes()));
        this.VIDEO_SNAPSHOT = new BooleanCapabilityItem("video-snapshot-supported", parameters.isVideoSnapshotSupported());
        this.WHITE_BALANCE = new StringListCapabilityItem("whitebalance", parameters.getSupportedWhiteBalance());
        this.AE = new StringListCapabilityItem("sony-ae-mode-values", parameters);
        this.BURST_SHOT = new StringListCapabilityItem("sony-burst-shot-values", parameters);
        this.EXIF_MAKER_NOTES_TYPES = new StringListCapabilityItem("sony-exif-maker-note-types", parameters);
        this.FOCUS_AREA = new StringListCapabilityItem("sony-focus-area-values", parameters);
        this.HDR = new StringListCapabilityItem("sony-is-values", parameters);
        this.IMAGE_STABILIZER = new StringListCapabilityItem("sony-is-values", parameters);
        this.ISO = new StringListCapabilityItem("sony-iso-values", parameters);
        this.MAX_BURST_SHOT_FRAME_RATE = new IntegerCapabilityItem("sony-max-burst-shot-frame-rate", parameters);
        this.MAX_BURST_SHOT_SIZE = new RectCapabilityItem("sony-max-burst-shot-size", parameters);
        this.MAX_MULTI_FOCUS_AREAS = new IntegerCapabilityItem("sony-max-multi-focus-num", parameters);
        this.MAX_PREVIEW_SIZE_STILL = new RectCapabilityItem("sony-preferred-preview-size-for-still", parameters);
        this.MAX_SR_ZOOM = new IntegerCapabilityItem("sony-max-sr-zoom", parameters);
        this.METERING = new StringListCapabilityItem("sony-metering-mode-values", parameters);
        this.MULTI_FOCUS_RECTS = new StringCapabilityItem("sony-multi-focus-rects", parameters);
        this.OBJECT_TRACKING = new BooleanCapabilityItem("sony-object-tracking-supported", parameters);
        this.SCENE_RECOGNITION = new BooleanCapabilityItem("sony-scene-detect-supported", parameters);
        this.SCENE_RECOGNITION_TYPES = new StringListCapabilityItem("sony-scene-detect-apply-types", parameters);
        this.SMILE_DETECTION = new BooleanCapabilityItem("sony-smile-detect-values", parameters);
        this.EXTENSION_VERSION = new StringCapabilityItem("sony-extension-version", parameters);
        this.VIDEO_HDR = new StringListCapabilityItem("sony-video-hdr-values", parameters);
        this.VIDEO_STABILIZER = new StringListCapabilityItem("sony-vs-values", parameters);
        this.VIDEO_STABILIZER_TYPE = new StringListCapabilityItem("sony-vs-type", parameters);
        this.MAX_VIDEO_FRAME = new IntegerCapabilityItem("sony-max-video-frame-rate-for-1920x1080", parameters);
        this.MAX_VIDEO_HDR_SIZE = new RectCapabilityItem("sony-max-video-hdr-size", parameters);
        this.MAX_VIDEO_STABILIZER_SIZE_FOR_LEGACY = new RectCapabilityItem("sony-max-vs-size", parameters);
        this.MAX_STEADY_SHOT_SIZE = new RectCapabilityItem("sony-max-vs-steady-shot-size", parameters);
        this.MAX_INTELLIGENT_ACTIVE_SIZE = new RectCapabilityItem("sony-max-vs-intelligent-active-size", parameters);
        this.VIDEO_NR_VALUES = new StringListCapabilityItem("sony-video-nr-values", parameters);
        this.MAX_SOFT_SKIN_LEVEL = new IntegerCapabilityItem("sony-max-soft-skin-level", parameters);
        this.VIDEO_MEATDAT_VALUES = new BooleanCapabilityItem("sony-video-metadata-supported", parameters);
        this.mValues = this.createList();
        this.RESOLUTION_CAPABILITY = new ResolutionCapabilityItem(this.getResolutionOptions(context, Hdr.isResolutionIndependentHdrSupported(this.SCENE.get())));
        this.UX_CAPABILITY = new UxCapabilityItem(new UxOptions(context));
    }

    public static Rect convertCameraSize(Camera.Size size) {
        if (size == null) {
            return null;
        }
        return new Rect(0, 0, size.width, size.height);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static List<Rect> convertCameraSizeList(List<Camera.Size> object) {
        if (object == null) {
            return new ArrayList<Rect>();
        }
        ArrayList<Rect> arrayList = new ArrayList<Rect>();
        Iterator<Rect> iterator = object.iterator();
        do {
            object = arrayList;
            if (!iterator.hasNext()) return object;
            object = (Camera.Size)iterator.next();
            if (object == null) continue;
            arrayList.add(CapabilityList.convertCameraSize((Camera.Size)object));
        } while (true);
    }

    private List<CapabilityItem<?>> createList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.AE);
        arrayList.add(this.BURST_SHOT);
        arrayList.add(this.EV_MAX);
        arrayList.add(this.EV_MIN);
        arrayList.add(this.EV_STEP);
        arrayList.add(this.EXIF_MAKER_NOTES_TYPES);
        arrayList.add(this.FLASH);
        arrayList.add(this.FOCUS_AREA);
        arrayList.add(this.FOCUS_MODE);
        arrayList.add(this.FPS_RANGE);
        arrayList.add(this.IMAGE_STABILIZER);
        arrayList.add(this.HDR);
        arrayList.add(this.ISO);
        arrayList.add(this.MAX_BURST_SHOT_FRAME_RATE);
        arrayList.add(this.MAX_BURST_SHOT_SIZE);
        arrayList.add(this.MAX_MULTI_FOCUS_AREAS);
        arrayList.add(this.MAX_NUM_FACE);
        arrayList.add(this.MAX_NUM_FOCUS_AREA);
        arrayList.add(this.MAX_PREVIEW_SIZE_STILL);
        arrayList.add(this.MAX_SR_ZOOM);
        arrayList.add(this.MAX_ZOOM);
        arrayList.add(this.METERING);
        arrayList.add(this.MULTI_FOCUS_RECTS);
        arrayList.add(this.OBJECT_TRACKING);
        arrayList.add(this.PICTURE_SIZE);
        arrayList.add(this.PREVIEW_SIZE);
        arrayList.add(this.PREVIEW_SIZE_FOR_PHOTO);
        arrayList.add(this.PREVIEW_SIZE_FOR_VIDEO);
        arrayList.add(this.SCENE);
        arrayList.add(this.SCENE_RECOGNITION);
        arrayList.add(this.SCENE_RECOGNITION_TYPES);
        arrayList.add(this.SMILE_DETECTION);
        arrayList.add(this.SMOOTH_ZOOM);
        arrayList.add(this.SR_ZOOM);
        arrayList.add(this.EXTENSION_VERSION);
        arrayList.add(this.VIDEO_HDR);
        arrayList.add(this.VIDEO_SIZE);
        arrayList.add(this.VIDEO_SNAPSHOT);
        arrayList.add(this.VIDEO_STABILIZER);
        arrayList.add(this.VIDEO_STABILIZER_TYPE);
        arrayList.add(this.WHITE_BALANCE);
        arrayList.add(this.MAX_VIDEO_FRAME);
        arrayList.add(this.MAX_VIDEO_HDR_SIZE);
        arrayList.add(this.MAX_VIDEO_STABILIZER_SIZE_FOR_LEGACY);
        arrayList.add(this.MAX_STEADY_SHOT_SIZE);
        arrayList.add(this.MAX_INTELLIGENT_ACTIVE_SIZE);
        arrayList.add(this.VIDEO_NR_VALUES);
        arrayList.add(this.MAX_SOFT_SKIN_LEVEL);
        arrayList.add(this.VIDEO_MEATDAT_VALUES);
        return arrayList;
    }

    /*
     * Enabled aggressive block sorting
     */
    private ResolutionOptions getResolutionOptions(Context context, boolean bl) {
        int n = this.getMaxPictureSize();
        int n2 = 0;
        int n3 = 0;
        switch (n) {
            default: {
                return new ResolutionOptions(context, n, n3, bl);
            }
            case 3264: 
        }
        Iterator<Rect> iterator = this.VIDEO_SIZE.get().iterator();
        do {
            n3 = n2;
            if (!iterator.hasNext()) return new ResolutionOptions(context, n, n3, bl);
            n3 = iterator.next().height();
            if (n3 == 1080) {
                return new ResolutionOptions(context, n, n3, bl);
            }
            if (n3 != 720) continue;
            n2 = n3;
        } while (true);
    }

    public int getMaxPictureSize() {
        Object object = this.PICTURE_SIZE.get();
        int n = 0;
        for (Rect rect : object) {
            if (n >= rect.width()) continue;
            n = rect.width();
        }
        return n;
    }

    public List<CapabilityItem<?>> values() {
        return this.mValues;
    }
}

