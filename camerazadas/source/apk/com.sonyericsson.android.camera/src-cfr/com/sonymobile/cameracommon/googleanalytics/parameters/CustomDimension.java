/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.googleanalytics.parameters;

public class CustomDimension {
    public static final String EXTRA_SUBJECT_CAMERA_WIDGET = "CameraWidget";
    public static final String GTM_KEY_LAUNCHED_BY = "gagtm-launchedBy";

    public static enum GALaunchedBy {
        LOCK_SCREEN,
        HW_CAMERA_KEY,
        HW_CAMERA_KEY_LOCK,
        HOME,
        ONE_SHOT_APP,
        SAME_ACTIVITY,
        MODE_SELECTOR,
        CAMERA_WIDGET,
        FAST_CAPTURING_SETTINGS,
        OTHER;
        

        private GALaunchedBy() {
        }
    }

}

