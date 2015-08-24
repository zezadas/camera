/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class Constants {
    public static final String CAMERA_ACTION_ADVANCED_SETTING = "com.sonyericsson.android.camera.intent.action.SETTING";
    public static final String CAMERA_MODE_KEY = "com.sonyericsson.android.camera.intent.extra.Mode";
    public static final boolean DEBUG = false;
    public static final boolean DEBUG_BITMAP_MANAGER_DUMP = false;
    public static final boolean DEBUG_EMU = false;
    public static final boolean DEBUG_EVENT_INTRUDER = false;
    public static final boolean DEBUG_LOG_ALL_E = false;
    public static final boolean DEBUG_LOG_ALL_I = false;
    public static final boolean DEBUG_LOG_WITH_TIME = false;
    public static final boolean DEBUG_NO_BACK_KEY = false;
    public static final boolean DEBUG_NO_MENU_KEY = false;
    public static final boolean DEBUG_NO_SHUTTER_KEY = false;
    public static final boolean DEBUG_ONE_TOUCH_BURST = false;
    public static final boolean DEBUG_PLATFORM_FUJI = false;
    public static final boolean DEBUG_SCENE_EVALUATION_ENABLE = false;
    public static final boolean DEBUG_STRICT_MODE = false;
    public static final boolean DEBUG_THUMBNAIL_WITHINFO = false;
    public static final boolean DEBUG_TOUCH_EDGE = false;
    public static final boolean DEBUG_TRACE_VIEW = false;
    public static final int DELAY_MILLIS_ON_SELECTED = 220;
    public static final int DELAY_THUMBNAIL_HIDE = 1000;
    public static final String EXTRA_SIZE_LIMIT_SEMC = "com.sonyericsson.camera.sizeLimit";
    public static final int FRONT_CAMERA_LOCATION_HELP_SHOW_MAX = 1;
    public static final int INTERVAL_DOUBLE_TAP = 1000;
    public static final int INTERVAL_OPEN_CAMERA = 500;
    public static final int LOG_LEVEL = 2;
    public static final int OPEN_CAMERA_MAX = 5;
    public static final boolean OPT_QUICK_FROM_SHORTCUT = false;
    public static final boolean OPT_TALLY_ALWAYS_OFF = true;
    public static final String PACKAGENAME_MMS = "com.sonyericsson.conversations";
    public static final boolean PLAYBACK_VIDEO_IMMIDATELY = true;
    public static final int SELF_TIMER_BLINK_DURATION = 100;
    private static final List<String> SHARE_MPO_EXCLUDES;
    private static final List<String> SHARE_PHOTO_VIDEO_EXCLUDES;
    public static final int SLEEP_TIMES_OPEN_CAMERA = 5;
    public static final int SMILE_SCORE_HIGH = 70;
    public static final int SMILE_SCORE_INVALID = 999;
    public static final int SMILE_SCORE_LOW = 40;
    public static final int SMILE_SCORE_MID = 55;
    static final String TAG;
    public static final String THREAD_PREPARE_MEDIARECORDER = "Media Recorder Preparer";
    public static final String THREAD_READ_SHARED_PREFS = "Read shared prefs thread";
    public static final String THREAD_RELEASE_MEDIARECORDER = "Video Device Releaser";
    public static final int TIMEOUT_CLOSE_CAMERA_DEVICE = 4000;
    public static final int TIMEOUT_NO_OPERATION = 180000;
    public static final int TIMEOUT_OPEN_CAMERA_DEVICE = 4000;
    public static final int TIMEOUT_PREPARE_MEDIARECORDER = 3000;
    public static final int TIMEOUT_READ_SHARED_PREFS = 3000;
    public static final int TIMEOUT_RELEASE_VIDEO_DEVICE = 3000;
    public static final int TIMEOUT_SAVING_TASK_STACK_CLEARED = 4000;
    public static final int TIMEOUT_ZOOM_MESSAGE = 2500;
    public static final int UNIT_MIN_IN_HOUR = 60;
    public static final int UNIT_MSEC_IN_SEC = 1000;
    public static final int UNIT_SEC_IN_MIN = 60;
    public static final int VIDEO_AUDIO_BIT_RATE = 128000;
    public static final int VIDEO_AUDIO_BIT_RATE_MMS = 5000;
    public static final int VIDEO_AUDIO_SAMPLE_RATE = 48000;
    public static final int VIDEO_AUDIO_SAMPLE_RATE_MMS = 8000;
    public static final int VIDEO_BIT_RATE_FULL_HD_60FPS = 30000000;
    public static final int VIDEO_BIT_RATE_LOW = 96000;
    public static final int VIDEO_FRAME_RATE_30FPS = 30;
    public static final int VIDEO_FRAME_RATE_60FPS = 60;
    public static final int VIDEO_FRAME_RATE_MMS = 15;
    public static final int WAITING_TIME_STOP_REC = 1600;
    public static final int ZOOM_HELP_SHOW_MAX = 3;

    static {
        TAG = Constants.class.getSimpleName();
        SHARE_PHOTO_VIDEO_EXCLUDES = Collections.unmodifiableList(Collections.emptyList());
        SHARE_MPO_EXCLUDES = Collections.unmodifiableList(Arrays.asList("com.google.android.apps.uploader"));
    }

    public static final List<String> getShareMpoExcludes() {
        return new ArrayList<String>(SHARE_MPO_EXCLUDES);
    }

    public static final List<String> getSharePhotoVideoExcludes() {
        return new ArrayList<String>(SHARE_PHOTO_VIDEO_EXCLUDES);
    }
}

