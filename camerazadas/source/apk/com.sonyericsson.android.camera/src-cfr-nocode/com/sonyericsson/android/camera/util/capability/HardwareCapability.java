/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.device.CameraDeviceException;
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.cameracommon.device.CameraExtensionVersion;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class HardwareCapability {
    private static final String FILE_NAME = "com.sonyericsson.android.camera.supported_values.";
    private static final String TAG = "HardwareCapability";
    private static CameraExtensionVersion sCameraExtensionVersion;
    private static final HardwareCapability sInstance;
    private static final int sNumberOfCameras;
    private CapabilityList[] mList;
    private boolean mNeedToClearSettingsInSharedPref;
    private final Map<String, String> mSaveSettingMap;
    private SharedPreferencesUtil mSharedPrefsUtil;

    static;

    private HardwareCapability();

    public static CapabilityList getCapability(int var0);

    public static HardwareCapability getInstance();

    private CapabilityList getList(int var1);

    public static int getNumberOfCameras();

    public static boolean isCameraSupported();

    public static boolean isFrontCameraSupported();

    public static boolean isStillHdrSupportedWith(Resolution var0);

    private void load(Context var1, int var2) throws CameraDeviceException;

    private void resetSharedPrefs(Context var1);

    private void restoreManualModeSetting();

    private void restoreSettings(int var1);

    private void saveManualModeSetting();

    private void saveSettings(int var1);

    public CameraExtensionVersion getCameraExtensionVersion();

    public String getFileName(int var1);

    public int getMaxSoftSkinLevel(int var1);

    public boolean isCameraExtensionSupported(int var1);

    public boolean isDetectedFaceIdSupported(int var1);

    public boolean isFullHdVideoFpsSupported(int var1, int var2);

    public boolean isSceneRecognitionSupported(int var1);

    public boolean isStillHdrVer3(int var1);

    public boolean isVideoHdrSupported(int var1, Rect var2);

    public boolean isVideoMetaDataSupported(int var1);

    public boolean isVideoNrSupported(int var1);

    public void load(Context var1) throws CameraDeviceException;

    public void setCameraParameters(Context var1, int var2, Camera.Parameters var3);

    void setCapabilityFromParams(Context var1, int var2, Camera.Parameters var3);

    void setCapabilityFromParamsWithCameraOpen(Context var1, int var2) throws CameraDeviceException;

    boolean setCapabilityFromSharedPrefs(Context var1, int var2);

    boolean store(Context var1, int var2);
}

