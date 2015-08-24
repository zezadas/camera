/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting;

import android.net.Uri;
import android.provider.BaseColumns;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CommonSettingConstants {
    public static final String AUTHORITY = "com.sonymobile.cameracommon.provider";
    private static final Uri BASE_URI;
    public static final Uri COMMONSETTING_CONTENT_URI;
    private static final String COMMONSETTING_TABLE = "commonsettings";

    static;

    public CommonSettingConstants();

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class AutoUploadValue {
        static final String KEY = "auto_upload";
        public static final String OFF = "off";
        public static final String ON = "on";

        public AutoUploadValue();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class BalloonTipsCounterValue {
        public static final String COUNT_START = "count_start";
        public static final String COUNT_STOP = "count_stop";
        public static final String DISPLAY_OK = "display_ok";
        public static final String DISPLAY_OK_FIRST = "display_ok_first";
        public static final String DISPLAY_OK_SECOND = "display_ok_second";
        public static final String FIRST = "first";
        static final String KEY = "balloon_tips_for_mode_selector";
        public static final int NO_DATA = -1;
        public static final String SECOND = "second";

        public BalloonTipsCounterValue();
    }

    public static interface CommonSettingColumns
    extends BaseColumns {
        public static final String NAME = "name";
        public static final String VALUE = "value";
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class DoNotShowAgainCheckForGeotagDialogValue {
        public static final String CHECKED = "checked";
        static final String KEY = "do_not_show_again_check_for_geotag_dialog_value";
        public static final String NOT_CHECKED = "not_checked";

        public DoNotShowAgainCheckForGeotagDialogValue();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class FastCaptureValue {
        public static final String FCC_STATUS_OFF = "fcc.status.off";
        public static final String FCC_STATUS_ON = "fcc.status.on";
        static final String KEY = "fast-capture";
        public static final String KEY_FCC_SETTING = "com.sonymobile.camera.quick_launch";
        public static final String KEY_FCC_STATUS = "key.fcc.status";
        public static final String LAUNCH_AND_CAPTURE = "photo-launch-and-capture";
        public static final String LAUNCH_AND_RECORDING = "video-launch-and-recording";
        public static final String LAUNCH_ONLY = "photo-launch-only";
        public static final String OFF = "off";
        public static final String VIDEO_LAUNCH_ONLY = "video-launch-only";

        public FastCaptureValue();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class GeoTagValue {
        static final String KEY = "geo_tag";
        public static final String OFF = "off";
        public static final String ON = "on";

        public GeoTagValue();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class ShutterSoundValue {
        static final String KEY = "shutter_sound";
        public static final String OFF = "off";
        public static final String ON = "on";

        public ShutterSoundValue();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class StorageValue {
        public static final String EMMC = "emmc";
        public static final String INTERNAL_MASS_STORAGE = "internal_mass_storage";
        static final String KEY = "storage";
        public static final String MEMORY_CARD = "memory_card";
        public static final String SDCARD = "sdcard";

        public StorageValue();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class TermOfUseValue {
        static final String KEY = "term_of_use";

        public TermOfUseValue();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class TouchBlockValue {
        static final String KEY = "touch_block";

        public TouchBlockValue();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class TouchCaptureValue {
        static final String KEY = "touch_capture";
        public static final String OFF = "off";
        public static final String ON = "on";

        public TouchCaptureValue();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class VolumeKeyValue {
        public static final String HW_CAMERA_KEY = "HW_camera_key";
        static final String KEY = "volume_key";
        public static final String VOLUME = "volume";
        public static final String ZOOM = "zoom";

        public VolumeKeyValue();
    }

}

