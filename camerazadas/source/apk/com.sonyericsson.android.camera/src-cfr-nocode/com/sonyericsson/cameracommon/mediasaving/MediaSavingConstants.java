/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.net.Uri;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MediaSavingConstants {
    public static final String BURST_DIR_NAME;
    public static final Uri EXTENDED_PHOTO_STORAGE_URI;
    public static final Uri EXTENDED_VIDEO_STORAGE_URI;
    public static final String INVALID_FILE_PATH = "/dev/null";
    public static final String MEDIA_TYPE_3GP_EXT = ".3gp";
    public static final String MEDIA_TYPE_3GP_MIME = "video/3gpp";
    public static final String MEDIA_TYPE_JPEG_EXT = ".JPG";
    public static final String MEDIA_TYPE_JPEG_MIME = "image/jpeg";
    public static final String MEDIA_TYPE_MPEG4_EXT = ".mp4";
    public static final String MEDIA_TYPE_MPEG4_MIME = "video/mp4";
    public static final String MEDIA_TYPE_MPO_MIME = "image/mpo";
    public static final Uri PHOTO_STORAGE_URI;
    public static final Uri PHOTO_THUMBNAIL_URI;
    public static final int SOMC_FILE_TYPE_NONE = 0;
    public static final int SOMC_FILE_TYPE_SOUND_PHOTO = 42;
    public static final int SOMC_FILE_TYPE_TIMESHIFT_COVER = 4;
    public static final int SOMC_FILE_TYPE_TIMESHIFT_IMAGE = 130;
    public static final int SOMC_FILE_TYPE_TIMESHIFT_VIDEO = 12;
    public static final int SOMC_FILE_TYPE_TIMESHIFT_VIDEO_120F = 11;
    public static final Uri STANDARD_PHOTO_STORAGE_URI;
    public static final int STORAGE_PRIORITY_INTERNAL = 1;
    public static final int STORAGE_PRIORITY_LOWEST = 100;
    public static final int STORAGE_PRIORITY_SD = 0;
    public static final String THREAD_STORE_VIDEO = "Store video thread";
    public static final String TIMESHIFT_DIR_NAME;
    public static final String TIMESHIFT_RELATIVE_ROOT_DIR_NAME;
    public static final String TIMESHIFT_VIDEO_120F_DIR_NAME;
    public static final Uri VIDEO_STORAGE_URI;
    public static final Uri VIDEO_THUMBNAIL_URI;

    static;

    public MediaSavingConstants();

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class JpegQuality {
        public static final int ECONOMY = 85;
        public static final int FINE = 97;
        public static final int STANDARD = 93;

        public JpegQuality();

        public static int getPlatformQualityFromCameraProfile(int var0);
    }

}

