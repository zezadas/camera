/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.intent;

import android.content.ComponentName;

public class IntentConstants {
    public static final String ACTION_FRONT_STILL_IMAGE_CAMERA = "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA";
    public static final String ACTION_FRONT_VIDEO_CAMERA = "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA";
    public static final ComponentName CAMERA_UI_COMPONENT_NAME = new ComponentName("com.sonyericsson.android.camera", "com.sonyericsson.android.camera.CameraActivity");
    public static final ComponentName CAMERA_UI_ONE_SHOT_COMPONENT_NAME = new ComponentName("com.sonyericsson.android.camera", "com.sonyericsson.android.camera.CameraActivityForCaptureOnlyPhoto");
    public static final String EXTRA_CALLING_ACTIVITY = "calling-activity";
    public static final String EXTRA_CALLING_MODE = "calling-mode";
    public static final String EXTRA_CALLING_PACKAGE = "calling-package";
    public static final String EXTRA_CAPTURING_MODE = "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE";
    public static final String EXTRA_LAUNCHED_BY_ANOTHER_CAMERA = "com.sonyericsson.android.camera3d.extra.launchedByAnotherCamera";
    public static final String EXTRA_LAUNCHED_BY_FAST_CAPTURING = "com.sonyericsson.android.camera.extra.launchedByFastCapturing";
    public static final String EXTRA_REQUEST_ADVANCED_SETTINGS_DIALOG_OPEN = "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen";

    public static class BroadcastIntent {
        public static final String ACTION_CAMERA_FINISH = "com.sonyericsson.android.camera.intent.action.FINISH";
        public static final String ACTION_CAMERA_FINISH_CAMERAACTIVITY = "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY";
        public static final String ACTION_CAMERA_LAUNCH = "com.sonyericsson.android.camera.intent.action.LAUNCH";
        public static final String ACTION_CAMERA_NEW_PICT = "com.android.camera.NEW_PICTURE";
        public static final String ACTION_MUSICSERVICE_COMMAND = "com.android.music.musicservicecommand";
        public static final String MUSICSERVICE_COMMAND = "command";
        public static final String MUSICSERVICE_COMMAND_PAUSE = "pause";
    }

}

