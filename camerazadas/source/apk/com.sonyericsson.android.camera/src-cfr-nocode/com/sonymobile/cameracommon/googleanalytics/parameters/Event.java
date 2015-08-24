/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.googleanalytics.parameters;

/*
 * Exception performing whole class analysis ignored.
 */
public class Event {
    public Event();

    public static interface Action {
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class AddonFW
    extends Enum<AddonFW>
    implements Action {
        private static final /* synthetic */ AddonFW[] $VALUES;
        public static final /* enum */ AddonFW ADD_BUTTON_PRESSED;
        public static final /* enum */ AddonFW APP_SELECTED_ON_MODE_SELECTOR;

        static;

        private AddonFW();

        public static AddonFW valueOf(String var0);

        public static AddonFW[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class CameraNotAvailable
    extends Enum<CameraNotAvailable>
    implements Action {
        private static final /* synthetic */ CameraNotAvailable[] $VALUES;
        public static final /* enum */ CameraNotAvailable FAILED_TO_OPEN;
        public static final /* enum */ CameraNotAvailable OTHER;

        static;

        private CameraNotAvailable();

        public static CameraNotAvailable getType(boolean var0);

        public static CameraNotAvailable valueOf(String var0);

        public static CameraNotAvailable[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class CaptureOperation
    extends Enum<CaptureOperation>
    implements UserOperation {
        private static final /* synthetic */ CaptureOperation[] $VALUES;
        public static final /* enum */ CaptureOperation BURST;
        public static final /* enum */ CaptureOperation BURST_VIEWER;
        public static final /* enum */ CaptureOperation RECORDING;
        public static final /* enum */ CaptureOperation RECORDING_BURST;
        public static final /* enum */ CaptureOperation RECORDING_BURST_VIEWER;
        public static final /* enum */ CaptureOperation RECORDING_VIEWER;
        public static final /* enum */ CaptureOperation SHOOTING;
        public static final /* enum */ CaptureOperation SHOOTING_BURST;
        public static final /* enum */ CaptureOperation SHOOTING_BURST_VIEWER;
        public static final /* enum */ CaptureOperation SHOOTING_RECORDING;
        public static final /* enum */ CaptureOperation SHOOTING_RECORDING_BURST;
        public static final /* enum */ CaptureOperation SHOOTING_RECORDING_BURST_VIEWER;
        public static final /* enum */ CaptureOperation SHOOTING_RECORDING_VIEWER;
        public static final /* enum */ CaptureOperation SHOOTING_VIEWER;
        public static final /* enum */ CaptureOperation VIEWER;
        private final boolean mIsShooting;
        private final int mValue;

        static;

        private CaptureOperation(int var3, boolean var4);

        public static CaptureOperation valueOf(String var0);

        public static CaptureOperation[] values();

        @Override
        public Category getCategory();

        @Override
        public int getValue();

        @Override
        public UserOperation getViewer();

        @Override
        public boolean isShooting();

        @Override
        public UserOperation updateOperation(UserOperation var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Category
    extends Enum<Category> {
        private static final /* synthetic */ Category[] $VALUES;
        public static final /* enum */ Category ADDON_FW;
        public static final /* enum */ Category CAMERA_NOT_AVAILABLE;
        public static final /* enum */ Category CAPTURE_OPERATION;
        public static final /* enum */ Category FACE_FUSION_OPERATION;
        public static final /* enum */ Category MULTI_CAMERA_CONNECTION_FAILED;
        public static final /* enum */ Category MUlTI_CAMERA_OPERATION;
        public static final /* enum */ Category PANORAMA;
        public static final /* enum */ Category RECORDING;
        public static final /* enum */ Category SETTINGS_COMMON;
        public static final /* enum */ Category SETTINGS_PHOTO;
        public static final /* enum */ Category SETTINGS_VIDEO;
        public static final /* enum */ Category THERMAL_MITIGATION;

        static;

        private Category();

        public static Category valueOf(String var0);

        public static Category[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class FaceFusionOperation
    extends Enum<FaceFusionOperation>
    implements UserOperation {
        private static final /* synthetic */ FaceFusionOperation[] $VALUES;
        public static final /* enum */ FaceFusionOperation FACECHANGED;
        public static final /* enum */ FaceFusionOperation FACECHANGE_RECORDING;
        public static final /* enum */ FaceFusionOperation FACECHANGE_RECORDING_VIEWER;
        public static final /* enum */ FaceFusionOperation FACECHANGE_SHOOTING;
        public static final /* enum */ FaceFusionOperation FACECHANGE_SHOOTING_RECORDING;
        public static final /* enum */ FaceFusionOperation FACECHANGE_SHOOTING_RECORDING_VIEWER;
        public static final /* enum */ FaceFusionOperation FACECHANGE_SHOOTING_VIEWER;
        public static final /* enum */ FaceFusionOperation FACECHANGE_VIEWER;
        public static final /* enum */ FaceFusionOperation RECORDING;
        public static final /* enum */ FaceFusionOperation RECORDING_VIEWER;
        public static final /* enum */ FaceFusionOperation SHOOTING;
        public static final /* enum */ FaceFusionOperation SHOOTING_RECORDING;
        public static final /* enum */ FaceFusionOperation SHOOTING_RECORDING_VIEWER;
        public static final /* enum */ FaceFusionOperation SHOOTING_VIEWER;
        public static final /* enum */ FaceFusionOperation VIEWER;
        private final boolean mIsShooting;
        private final int mValue;

        static;

        private FaceFusionOperation(int var3, boolean var4);

        public static FaceFusionOperation valueOf(String var0);

        public static FaceFusionOperation[] values();

        @Override
        public Category getCategory();

        @Override
        public int getValue();

        @Override
        public UserOperation getViewer();

        @Override
        public boolean isShooting();

        @Override
        public UserOperation updateOperation(UserOperation var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ForceQuit
    extends Enum<ForceQuit>
    implements Label {
        private static final /* synthetic */ ForceQuit[] $VALUES;
        public static final /* enum */ ForceQuit DURING_PREVIEW;
        public static final /* enum */ ForceQuit DURING_RECORDING;

        static;

        private ForceQuit();

        public static ForceQuit getType(boolean var0);

        public static ForceQuit valueOf(String var0);

        public static ForceQuit[] values();
    }

    public static interface Label {
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class MultiCameraConnectionFailed
    extends Enum<MultiCameraConnectionFailed>
    implements Action {
        private static final /* synthetic */ MultiCameraConnectionFailed[] $VALUES;
        public static final /* enum */ MultiCameraConnectionFailed APP_VER;
        public static final /* enum */ MultiCameraConnectionFailed CONNECTION_FAILURE;
        public static final /* enum */ MultiCameraConnectionFailed DI_CONNECTION;
        public static final /* enum */ MultiCameraConnectionFailed EXCESS_CONNECTION_NUM;
        public static final /* enum */ MultiCameraConnectionFailed EXCESS_DI_CONNECTION_NUM;
        public static final /* enum */ MultiCameraConnectionFailed NFC_LOCKED;
        public static final /* enum */ MultiCameraConnectionFailed WIFI_TETHERING;
        public static final /* enum */ MultiCameraConnectionFailed XPERIA_CONNECTION;

        static;

        private MultiCameraConnectionFailed();

        public static MultiCameraConnectionFailed valueOf(String var0);

        public static MultiCameraConnectionFailed[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class MultiCameraOperation
    extends Enum<MultiCameraOperation>
    implements UserOperation {
        private static final /* synthetic */ MultiCameraOperation[] $VALUES;
        public static final /* enum */ MultiCameraOperation CONNECTED;
        public static final /* enum */ MultiCameraOperation CONNECTING;
        public static final /* enum */ MultiCameraOperation CONNECTING_CONNECTED;
        public static final /* enum */ MultiCameraOperation CONNECTING_CONNECTED_RECORDING;
        public static final /* enum */ MultiCameraOperation CONNECTING_CONNECTED_RECORDING_VIEWER;
        public static final /* enum */ MultiCameraOperation CONNECTING_CONNECTED_SHOOTING;
        public static final /* enum */ MultiCameraOperation CONNECTING_CONNECTED_SHOOTING_RECORDING;
        public static final /* enum */ MultiCameraOperation CONNECTING_CONNECTED_SHOOTING_RECORDING_VIEWER;
        public static final /* enum */ MultiCameraOperation CONNECTING_CONNECTED_SHOOTING_VIEWER;
        public static final /* enum */ MultiCameraOperation CONNECTING_CONNECTED_VIEWER;
        public static final /* enum */ MultiCameraOperation RECORDING;
        public static final /* enum */ MultiCameraOperation SHOOTING;
        public static final /* enum */ MultiCameraOperation VIEWER;
        private final boolean mIsShooting;
        private final int mValue;

        static;

        private MultiCameraOperation(int var3, boolean var4);

        public static MultiCameraOperation valueOf(String var0);

        public static MultiCameraOperation[] values();

        @Override
        public Category getCategory();

        @Override
        public int getValue();

        @Override
        public UserOperation getViewer();

        @Override
        public boolean isShooting();

        @Override
        public UserOperation updateOperation(UserOperation var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class StopOperation
    extends Enum<StopOperation>
    implements Action {
        private static final /* synthetic */ StopOperation[] $VALUES;
        public static final /* enum */ StopOperation THERMAL_STOP;
        public static final /* enum */ StopOperation USER_STOP;

        static;

        private StopOperation();

        public static StopOperation getType(boolean var0);

        public static StopOperation valueOf(String var0);

        public static StopOperation[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ThermalMitigation
    extends Enum<ThermalMitigation>
    implements Action {
        private static final /* synthetic */ ThermalMitigation[] $VALUES;
        public static final /* enum */ ThermalMitigation FAIL_TO_START;
        public static final /* enum */ ThermalMitigation FORCE_QUIT;

        static;

        private ThermalMitigation();

        public static ThermalMitigation getType(boolean var0);

        public static ThermalMitigation valueOf(String var0);

        public static ThermalMitigation[] values();
    }

    public static interface UserOperation
    extends Action {
        public Category getCategory();

        public int getValue();

        public UserOperation getViewer();

        public boolean isShooting();

        public UserOperation updateOperation(UserOperation var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ViewerLaunched
    extends Enum<ViewerLaunched> {
        private static final /* synthetic */ ViewerLaunched[] $VALUES;
        public static final /* enum */ ViewerLaunched LAUNCHED;
        public static final /* enum */ ViewerLaunched NOT_LAUNCHED;
        public final int mValue;

        static;

        private ViewerLaunched(int var3);

        public static ViewerLaunched getType(CaptureOperation var0);

        public static ViewerLaunched valueOf(String var0);

        public static ViewerLaunched[] values();
    }

}

