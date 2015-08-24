/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.ResolutionOptions;
import com.sonyericsson.android.camera.util.capability.UxOptions;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
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

    public CapabilityList(Context var1, SharedPreferences var2);

    public CapabilityList(Context var1, Camera.Parameters var2);

    public static Rect convertCameraSize(Camera.Size var0);

    public static List<Rect> convertCameraSizeList(List<Camera.Size> var0);

    private List<CapabilityItem<?>> createList();

    private ResolutionOptions getResolutionOptions(Context var1, boolean var2);

    public int getMaxPictureSize();

    public List<CapabilityItem<?>> values();
}

