/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.OneShotType;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.cameracommon.activity.BaseActivity;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class LaunchConditions {
    private static final String TAG;
    private ExtraOperation mExtraOperation;
    private boolean mIsCameraDisabled;
    private boolean mIsDeviceError;
    private boolean mIsLaunchedByOtherCamera;
    private boolean mIsOneShot;
    private CapturingMode mLaunchCapturingMode;
    private BaseActivity.LaunchedBy mLaunchedBy;
    private OneShotType mOneShotType;

    static;

    public LaunchConditions();

    public void clear(CapturingMode var1);

    public ExtraOperation getExtraOperation();

    public CapturingMode getLaunchCapturingMode();

    public BaseActivity.LaunchedBy getLaunchedBy();

    public OneShotType getOneShotType();

    public boolean isCameraDisabled();

    public boolean isDeviceError();

    public boolean isLaunchedByOtherCamera();

    public boolean isOneShot();

    public void setCameraDisabled(boolean var1);

    public void setDeviceError(boolean var1);

    public void setExtraOperation(ExtraOperation var1);

    public void setIsLaunchedByOtherCamera(boolean var1);

    public void setIsOneShot(boolean var1);

    public void setLaunchCapturingMode(CapturingMode var1);

    public void setLaunchedBy(BaseActivity.LaunchedBy var1);

    public void setOneShotType(OneShotType var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ExtraOperation
    extends Enum<ExtraOperation> {
        private static final /* synthetic */ ExtraOperation[] $VALUES;
        public static final /* enum */ ExtraOperation NONE;
        public static final /* enum */ ExtraOperation OPEN_SETTINGS_MENU;

        static;

        private ExtraOperation();

        public static ExtraOperation valueOf(String var0);

        public static ExtraOperation[] values();
    }

}

