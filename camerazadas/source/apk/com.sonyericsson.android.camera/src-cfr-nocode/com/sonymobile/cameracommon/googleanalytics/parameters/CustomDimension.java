/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.googleanalytics.parameters;

/*
 * Exception performing whole class analysis ignored.
 */
public class CustomDimension {
    public static final String EXTRA_SUBJECT_CAMERA_WIDGET = "CameraWidget";
    public static final String GTM_KEY_LAUNCHED_BY = "gagtm-launchedBy";

    public CustomDimension();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class GALaunchedBy
    extends Enum<GALaunchedBy> {
        private static final /* synthetic */ GALaunchedBy[] $VALUES;
        public static final /* enum */ GALaunchedBy CAMERA_WIDGET;
        public static final /* enum */ GALaunchedBy FAST_CAPTURING_SETTINGS;
        public static final /* enum */ GALaunchedBy HOME;
        public static final /* enum */ GALaunchedBy HW_CAMERA_KEY;
        public static final /* enum */ GALaunchedBy HW_CAMERA_KEY_LOCK;
        public static final /* enum */ GALaunchedBy LOCK_SCREEN;
        public static final /* enum */ GALaunchedBy MODE_SELECTOR;
        public static final /* enum */ GALaunchedBy ONE_SHOT_APP;
        public static final /* enum */ GALaunchedBy OTHER;
        public static final /* enum */ GALaunchedBy SAME_ACTIVITY;

        static;

        private GALaunchedBy();

        public static GALaunchedBy valueOf(String var0);

        public static GALaunchedBy[] values();
    }

}

