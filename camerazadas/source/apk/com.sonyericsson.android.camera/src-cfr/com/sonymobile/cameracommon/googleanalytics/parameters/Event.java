/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.googleanalytics.parameters;

public class Event {

    public static interface Action {
    }

    public static enum AddonFW implements Action
    {
        ADD_BUTTON_PRESSED,
        APP_SELECTED_ON_MODE_SELECTOR;
        

        private AddonFW() {
        }
    }

    public static enum CameraNotAvailable implements Action
    {
        FAILED_TO_OPEN,
        OTHER;
        

        private CameraNotAvailable() {
        }

        public static CameraNotAvailable getType(boolean bl) {
            if (bl) {
                return FAILED_TO_OPEN;
            }
            return OTHER;
        }
    }

    public static enum CaptureOperation implements UserOperation
    {
        SHOOTING(1, true),
        RECORDING(2, false),
        SHOOTING_RECORDING(CaptureOperation.SHOOTING.mValue | CaptureOperation.RECORDING.mValue, false),
        BURST(4, false),
        SHOOTING_BURST(CaptureOperation.SHOOTING.mValue | CaptureOperation.BURST.mValue, false),
        RECORDING_BURST(CaptureOperation.RECORDING.mValue | CaptureOperation.BURST.mValue, false),
        SHOOTING_RECORDING_BURST(CaptureOperation.SHOOTING.mValue | CaptureOperation.RECORDING.mValue | CaptureOperation.BURST.mValue, false),
        VIEWER(8, false),
        SHOOTING_VIEWER(CaptureOperation.SHOOTING.mValue | CaptureOperation.VIEWER.mValue, false),
        RECORDING_VIEWER(CaptureOperation.RECORDING.mValue | CaptureOperation.VIEWER.mValue, false),
        SHOOTING_RECORDING_VIEWER(CaptureOperation.SHOOTING.mValue | CaptureOperation.RECORDING.mValue | CaptureOperation.VIEWER.mValue, false),
        BURST_VIEWER(CaptureOperation.BURST.mValue | CaptureOperation.VIEWER.mValue, false),
        SHOOTING_BURST_VIEWER(CaptureOperation.SHOOTING.mValue | CaptureOperation.BURST.mValue | CaptureOperation.VIEWER.mValue, false),
        RECORDING_BURST_VIEWER(CaptureOperation.RECORDING.mValue | CaptureOperation.BURST.mValue | CaptureOperation.VIEWER.mValue, false),
        SHOOTING_RECORDING_BURST_VIEWER(CaptureOperation.SHOOTING.mValue | CaptureOperation.RECORDING.mValue | CaptureOperation.BURST.mValue | CaptureOperation.VIEWER.mValue, false);
        
        private final boolean mIsShooting;
        private final int mValue;

        private CaptureOperation(int n2, boolean bl) {
            this.mValue = n2;
            this.mIsShooting = bl;
        }

        @Override
        public Category getCategory() {
            return Category.CAPTURE_OPERATION;
        }

        @Override
        public int getValue() {
            return this.mValue;
        }

        @Override
        public UserOperation getViewer() {
            return VIEWER;
        }

        @Override
        public boolean isShooting() {
            return this.mIsShooting;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public UserOperation updateOperation(UserOperation userOperation) {
            int n = userOperation.getValue();
            int n2 = this.mValue;
            Object var6_4 = null;
            CaptureOperation[] arrcaptureOperation = CaptureOperation.values();
            int n3 = arrcaptureOperation.length;
            int n4 = 0;
            do {
                userOperation = var6_4;
                if (n4 >= n3) return userOperation;
                userOperation = arrcaptureOperation[n4];
                if (userOperation.mValue == (n | n2)) {
                    return userOperation;
                }
                ++n4;
            } while (true);
        }
    }

    public static enum Category {
        ADDON_FW,
        THERMAL_MITIGATION,
        MULTI_CAMERA_CONNECTION_FAILED,
        CAMERA_NOT_AVAILABLE,
        CAPTURE_OPERATION,
        MUlTI_CAMERA_OPERATION,
        FACE_FUSION_OPERATION,
        PANORAMA,
        RECORDING,
        SETTINGS_PHOTO,
        SETTINGS_VIDEO,
        SETTINGS_COMMON;
        

        private Category() {
        }
    }

    public static enum FaceFusionOperation implements UserOperation
    {
        FACECHANGED(1, false),
        SHOOTING(2, true),
        FACECHANGE_SHOOTING(FaceFusionOperation.FACECHANGED.mValue | FaceFusionOperation.SHOOTING.mValue, false),
        RECORDING(4, false),
        FACECHANGE_RECORDING(FaceFusionOperation.FACECHANGED.mValue | FaceFusionOperation.RECORDING.mValue, false),
        SHOOTING_RECORDING(FaceFusionOperation.SHOOTING.mValue | FaceFusionOperation.RECORDING.mValue, false),
        FACECHANGE_SHOOTING_RECORDING(FaceFusionOperation.FACECHANGED.mValue | FaceFusionOperation.SHOOTING.mValue | FaceFusionOperation.RECORDING.mValue, false),
        VIEWER(8, false),
        FACECHANGE_VIEWER(FaceFusionOperation.FACECHANGED.mValue | FaceFusionOperation.VIEWER.mValue, false),
        SHOOTING_VIEWER(FaceFusionOperation.SHOOTING.mValue | FaceFusionOperation.VIEWER.mValue, false),
        FACECHANGE_SHOOTING_VIEWER(FaceFusionOperation.FACECHANGED.mValue | FaceFusionOperation.SHOOTING.mValue | FaceFusionOperation.VIEWER.mValue, false),
        RECORDING_VIEWER(FaceFusionOperation.RECORDING.mValue | FaceFusionOperation.VIEWER.mValue, false),
        FACECHANGE_RECORDING_VIEWER(FaceFusionOperation.FACECHANGED.mValue | FaceFusionOperation.RECORDING.mValue | FaceFusionOperation.VIEWER.mValue, false),
        SHOOTING_RECORDING_VIEWER(FaceFusionOperation.SHOOTING.mValue | FaceFusionOperation.RECORDING.mValue | FaceFusionOperation.VIEWER.mValue, false),
        FACECHANGE_SHOOTING_RECORDING_VIEWER(FaceFusionOperation.FACECHANGED.mValue | FaceFusionOperation.SHOOTING.mValue | FaceFusionOperation.RECORDING.mValue | FaceFusionOperation.VIEWER.mValue, false);
        
        private final boolean mIsShooting;
        private final int mValue;

        private FaceFusionOperation(int n2, boolean bl) {
            this.mValue = n2;
            this.mIsShooting = bl;
        }

        @Override
        public Category getCategory() {
            return Category.FACE_FUSION_OPERATION;
        }

        @Override
        public int getValue() {
            return this.mValue;
        }

        @Override
        public UserOperation getViewer() {
            return VIEWER;
        }

        @Override
        public boolean isShooting() {
            return this.mIsShooting;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public UserOperation updateOperation(UserOperation userOperation) {
            int n = userOperation.getValue();
            int n2 = this.mValue;
            Object var6_4 = null;
            FaceFusionOperation[] arrfaceFusionOperation = FaceFusionOperation.values();
            int n3 = arrfaceFusionOperation.length;
            int n4 = 0;
            do {
                userOperation = var6_4;
                if (n4 >= n3) return userOperation;
                userOperation = arrfaceFusionOperation[n4];
                if (userOperation.mValue == (n | n2)) {
                    return userOperation;
                }
                ++n4;
            } while (true);
        }
    }

    public static enum ForceQuit implements Label
    {
        DURING_PREVIEW,
        DURING_RECORDING;
        

        private ForceQuit() {
        }

        public static ForceQuit getType(boolean bl) {
            if (bl) {
                return DURING_RECORDING;
            }
            return DURING_PREVIEW;
        }
    }

    public static interface Label {
    }

    public static enum MultiCameraConnectionFailed implements Action
    {
        EXCESS_CONNECTION_NUM,
        CONNECTION_FAILURE,
        XPERIA_CONNECTION,
        DI_CONNECTION,
        EXCESS_DI_CONNECTION_NUM,
        APP_VER,
        NFC_LOCKED,
        WIFI_TETHERING;
        

        private MultiCameraConnectionFailed() {
        }
    }

    public static enum MultiCameraOperation implements UserOperation
    {
        CONNECTING(1, false),
        CONNECTED(2, false),
        CONNECTING_CONNECTED(MultiCameraOperation.CONNECTING.mValue | MultiCameraOperation.CONNECTED.mValue, false),
        SHOOTING(4, true),
        CONNECTING_CONNECTED_SHOOTING(MultiCameraOperation.CONNECTING.mValue | MultiCameraOperation.CONNECTED.mValue | MultiCameraOperation.SHOOTING.mValue, false),
        RECORDING(8, false),
        CONNECTING_CONNECTED_RECORDING(MultiCameraOperation.CONNECTING.mValue | MultiCameraOperation.CONNECTED.mValue | MultiCameraOperation.RECORDING.mValue, false),
        CONNECTING_CONNECTED_SHOOTING_RECORDING(MultiCameraOperation.CONNECTING.mValue | MultiCameraOperation.CONNECTED.mValue | MultiCameraOperation.SHOOTING.mValue | MultiCameraOperation.RECORDING.mValue, false),
        VIEWER(16, false),
        CONNECTING_CONNECTED_VIEWER(MultiCameraOperation.CONNECTING.mValue | MultiCameraOperation.CONNECTED.mValue | MultiCameraOperation.VIEWER.mValue, false),
        CONNECTING_CONNECTED_SHOOTING_VIEWER(MultiCameraOperation.CONNECTING.mValue | MultiCameraOperation.CONNECTED.mValue | MultiCameraOperation.SHOOTING.mValue | MultiCameraOperation.VIEWER.mValue, false),
        CONNECTING_CONNECTED_RECORDING_VIEWER(MultiCameraOperation.CONNECTING.mValue | MultiCameraOperation.CONNECTED.mValue | MultiCameraOperation.RECORDING.mValue | MultiCameraOperation.VIEWER.mValue, false),
        CONNECTING_CONNECTED_SHOOTING_RECORDING_VIEWER(MultiCameraOperation.CONNECTING.mValue | MultiCameraOperation.CONNECTED.mValue | MultiCameraOperation.SHOOTING.mValue | MultiCameraOperation.RECORDING.mValue | MultiCameraOperation.VIEWER.mValue, false);
        
        private final boolean mIsShooting;
        private final int mValue;

        private MultiCameraOperation(int n2, boolean bl) {
            this.mValue = n2;
            this.mIsShooting = bl;
        }

        @Override
        public Category getCategory() {
            return Category.MUlTI_CAMERA_OPERATION;
        }

        @Override
        public int getValue() {
            return this.mValue;
        }

        @Override
        public UserOperation getViewer() {
            return VIEWER;
        }

        @Override
        public boolean isShooting() {
            return this.mIsShooting;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public UserOperation updateOperation(UserOperation userOperation) {
            int n = userOperation.getValue();
            int n2 = this.mValue;
            Object var6_4 = null;
            MultiCameraOperation[] arrmultiCameraOperation = MultiCameraOperation.values();
            int n3 = arrmultiCameraOperation.length;
            int n4 = 0;
            do {
                userOperation = var6_4;
                if (n4 >= n3) return userOperation;
                userOperation = arrmultiCameraOperation[n4];
                if (userOperation.mValue == (n | n2)) {
                    return userOperation;
                }
                ++n4;
            } while (true);
        }
    }

    public static enum StopOperation implements Action
    {
        USER_STOP,
        THERMAL_STOP;
        

        private StopOperation() {
        }

        public static StopOperation getType(boolean bl) {
            if (bl) {
                return THERMAL_STOP;
            }
            return USER_STOP;
        }
    }

    public static enum ThermalMitigation implements Action
    {
        FAIL_TO_START,
        FORCE_QUIT;
        

        private ThermalMitigation() {
        }

        public static ThermalMitigation getType(boolean bl) {
            if (bl) {
                return FAIL_TO_START;
            }
            return FORCE_QUIT;
        }
    }

    public static interface UserOperation
    extends Action {
        public Category getCategory();

        public int getValue();

        public UserOperation getViewer();

        public boolean isShooting();

        public UserOperation updateOperation(UserOperation var1);
    }

    public static enum ViewerLaunched {
        NOT_LAUNCHED(0),
        LAUNCHED(1);
        
        public final int mValue;

        private ViewerLaunched(int n2) {
            this.mValue = n2;
        }

        public static ViewerLaunched getType(CaptureOperation captureOperation) {
            if (captureOperation == null) {
                return NOT_LAUNCHED;
            }
            return LAUNCHED;
        }
    }

}

